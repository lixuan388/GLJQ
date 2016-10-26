unit uCommonUnit;

interface

uses Windows, Forms, SysUtils, ExtCtrls, ComCtrls, Classes,  StdCtrls, Inifiles, DBGridEh,
     IDEATools,System.DateUtils,
     DB, bsdbctrls, Controls , frxClass, frxDBSet, ImCode, ADODB, bsSkinMenus, Menus, IMM,
     cxLookAndFeelPainters,cxGraphics,cxGridTableView,cxStyles,Graphics, cxClasses;

  procedure MessageOfWarning(Msg :String; AbortFlag :Boolean);
  procedure MessageOfInformation(Msg :String; AbortFlag :Boolean);
  procedure MessageOfStop(Msg :String; AbortFlag :Boolean);
  function  MessageOfQuestion(Msg :String) :integer;

  function  LoadINI(Section, Ident: String): String;  //��ָ��INI�ļ�
  procedure SaveINI(Section, Ident, Value: String);   //дָ��INI�ļ�
  function  GetEncryptPassword(const Password: String): String; //���û�������н���
  function  GetMaxID(const KeyType: String): String;  //��ȡ�����IDֵ

  function GetToolButtonStatus(TbIndex: String; UpdateMode, EmptyFlag: Boolean) :String;   //�����������޸ġ�ɾ���Ȱ�ťȨ��

  function GetDefaultValues( value : Variant; vType : String) : Variant;


  procedure CityDBGridEhDropDown(PassedDropDown : TColumnEh);

  procedure ExportPrintChar(FindNameValues : String ;OutValuesList : TStringList); //�������ֵ���б��������ֺ�����Ǻ��֡�

  function ExportChinaName(ListName,FirstName : String) : Boolean ;

  procedure ChangeImeToDefault(FormName :TForm);//�ı�Ĭ�����뷨

  procedure GetSelectPrint(FrxRepor:TfrxReport; FrxDbdata : TfrxDBDataset; DataName,SqlData : String;FavgID,FactID : Integer);


  procedure GetCodeOutNameP(var Name : String);

  function GetPrintQuery(aQuery : TADOQuery;sSelectid : String) : TADOQuery;

  procedure AddPM_DataListItems(avgID,actID : Integer;PM_List : TbsSkinPopupMenu;Onchick : TNotifyEvent);

  procedure OutImportSQLStr(actID : Integer;var SqlColumnName,SqlColumnValues : String);  //�ı���������ʱ�����������ֶε�ֵ

  function GetGetAcceptNo(actID : Integer) : String;

  function OutChinaCode(valuse : String) : String;   //�������ĵ���

  procedure OpenIme(imename:string); //�������뷨

  procedure ExecuteSQL(v_sql : string);

  function GetDatetime:TDateTime;
  function GetDate:TDate;

//��cxGrid��IndicatorCell�������
  procedure SetIndicatorCellOfIndex(ASender: TcxGridTableView; ACanvas: TcxCanvas;
    AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
//ȥ���ַ����еĵ�����
  function Replace_keyword(Astr:string):string;

var
  WorkDir : String; //�������·��

implementation

uses uCommonDM,  Variants;

procedure MessageOfWarning(Msg :String; AbortFlag :Boolean);
begin
  Application.MessageBox(PChar(Msg), '����', MB_OK+MB_ICONWARNING);
  if AbortFlag then
  Abort;
end;

procedure MessageOfInformation(Msg :String; AbortFlag :Boolean);
begin
  Application.MessageBox(PChar(Msg), '��ʾ', MB_OK+MB_ICONINFORMATION);
  if AbortFlag then Abort;
end;

procedure MessageOfStop(Msg :String; AbortFlag :Boolean);
begin
  Application.MessageBox(PChar(Msg), '����', MB_OK+MB_ICONSTOP);
  if AbortFlag then Abort;
end;

function MessageOfQuestion(Msg :String) :integer;
begin
  Result :=Application.MessageBox(PChar(Msg), 'ѯ��', MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2);
end;

function LoadINI(Section, Ident: String): String;
var
  SettingINI: TINIFile;
begin
  Result := '';
  SettingINI := TINIFile.Create(WorkDir + '\VISA.ini');
  try
    Result := SettingINI.ReadString(Section, Ident, '');
  finally
    SettingINI.Free;
  end;
end;

procedure SaveInI(Section, Ident, Value: String);
var
  SettingINI: TINIFile;
begin
  SettingINI := TINIFile.Create(WorkDir + '\VISA.ini');
  try
    SettingINI.WriteString(Section, Ident, Value);
  finally
    SettingINI.Free;
  end;
end;

function GetEncryptPassword(const Password: String): String; //���û�������н���
var
  KeyC : TIDEAKey;
begin
  GenIDEAKey(Password, KeyC);
  IDEAKeyToStr(KeyC, Result);
end;

function GetMaxID(const KeyType: String): String;    //��ȡ�����IDֵ
begin
  with CommonDM.spGetMaxId do
  begin
    Parameters.ParamByName('@iKeyType').Value :=KeyType;
    ExecProc;
    Result := Parameters.ParamByName('@oMaxID').Value;
  end;    // with
end;

//TbIndex-->(tbExit:0, tbquery:1, tbinsert:2, tbmodify:3, tbdelete:4, tbsave:5, tbcancel:6, tbprint, tbapprove:8)
//UpdateMode-->(browse: False, insert,modify: True)
function GetToolButtonStatus(TbIndex: String; UpdateMode, EmptyFlag: Boolean) :String;
var
  sTemp :ShortString;
  sResult :String;
begin
  sResult := '';
  while TbIndex<>'' do
  begin
    sTemp := Copy(TbIndex, 1, 1);
    case StrToInt(sTemp) of
    0:  if UpdateMode then sResult := '0' else sResult := '1'; //�˳���ť
    1:  if UpdateMode or EmptyFlag then sResult := sResult + '0' else sResult := sResult + '1'; //���Ұ�ť
    2:  if UpdateMode then sResult := sResult + '0' else sResult := sResult + '1'; //������ť
    3:  if UpdateMode or EmptyFlag then sResult := sResult + '0' else sResult := sResult + '1'; //�޸İ�ť
    4:  if UpdateMode or EmptyFlag then sResult := sResult + '0' else sResult := sResult + '1'; //ɾ����ť
    5:  if UpdateMode then sResult := sResult + '1' else sResult := sResult + '0'; //���水ť
    6:  if UpdateMode then sResult := sResult + '1' else sResult := sResult + '0'; //ȡ����ť
    7:  if UpdateMode then sResult := sResult + '0' else sResult := sResult + '1'; //��ӡ��ť
    8:  if UpdateMode or EmptyFlag then sResult := sResult + '0' else sResult := sResult + '1'; //��˰�ť
    end;
    Delete(TbIndex,1,1);
  end;
  Result := sResult;
end;

function GetDefaultValues( value : Variant; vType : String) : Variant;
begin
  Result := Null;
  if value = Null then
  begin
    if vType = 'int'    then Result := 0;
  end
  else
  Result := value;
end;

procedure CityDBGridEhDropDown(PassedDropDown : TColumnEh);
begin
  with CommonDM.qryTemp do
  try
    if Active then Close;
    SQL.Text := '  select act_id,act_name from act_country where act_status<>''D'' ';
    Open;
    PassedDropDown.KeyList.Clear;
    PassedDropDown.PickList.Clear;
    First;
    while not eof do
    begin
      PassedDropDown.KeyList.Add(Fields[0].AsString);
      PassedDropDown.PickList.Add(Fields[1].AsString);
      Next;
    end;
  finally
    Close;
  end;
end;

//�������ֵ���б��������ֺ�����Ǻ��֡�
procedure ExportPrintChar(FindNameValues : String ;OutValuesList : TStringList);
var
 sIndex : Integer;
begin
  try
  sIndex := 1;
  OutValuesList.Clear;
  while sIndex<=Length(FindNameValues) do
  begin
     if  Integer(FindNameValues[sIndex])>$a0  then
     begin
       OutValuesList.Add(copy(FindNameValues,sIndex,2));
       Inc(sIndex);
     end
     else OutValuesList.Add(copy(FindNameValues,sIndex,1));
     Inc(sIndex);
  end;
  finally
  end;
end;

function ExportChinaName(ListName,FirstName : String) : Boolean ;
var
  sChina : Boolean;
  sIndex : Integer;
begin
  Result := False;
  sChina := False;
  sIndex := 1;
  while sIndex<=Length(ListName) do
  begin
     if  Integer(ListName[sIndex])>$a0  then
     begin
       sChina := True;
       Inc(sIndex);
     end;
     Inc(sIndex);     
  end;
  sIndex := 0;
  while sIndex<=Length(FirstName) do
  begin
     if  Integer(ListName[sIndex])>$a0  then
     begin
       sChina := True;
       Inc(sIndex);
     end;
     Inc(sIndex);     
  end;
  if sChina then Result := True ;
end;

procedure ChangeImeToDefault(FormName :TForm);
var
  i :integer;
begin
  for i := 0 to  FormName.ComponentCount- 1 do    // Iterate
  begin
    if FormName.Components[i] is TbsSkinDBEdit then
    begin
      (FormName.Components[i] as TbsSkinDBEdit).ImeMode :=imOpen;
      (FormName.Components[i] as TbsSkinDBEdit).ImeName :=GImeName;
    end;
    if FormName.Components[i] is TbsSkinDBMemo then
    begin
      (FormName.Components[i] as TbsSkinDBMemo).ImeMode :=imOpen;
      (FormName.Components[i] as TbsSkinDBMemo).ImeName :=GImeName;
    end;
  end;    // for
end;

procedure GetSelectPrint(FrxRepor:TfrxReport; FrxDbdata : TfrxDBDataset ; DataName,SqlData : String;FavgID,FactID : Integer);
var
  sReport : TfrxReport;
  sFrxDbData : TfrxDBDataset;
  sDateSoure : TDataSource;
begin
  try
    sReport := TfrxReport.Create(nil);
    sFrxDbData := TfrxDBDataset.Create(nil);
    sDateSoure := TDataSource.Create(nil);
    sFrxDbData.Name := DataName;
    sReport := FrxRepor;
    with CommonDM.qryTemp do
    begin
      if Active then Close;
      SQL.Text := SqlData;
      SQL[SQL.Count-1] := '';
      Open;
      sDateSoure.DataSet := CommonDM.qryTemp;
    end;
    sFrxDbData.DataSource := sDateSoure;
    sReport.DataSet := sFrxDbData;
    sReport.DataSetName := DataName;
 //   ExceSelectPrintFrm(sReport,FavgID,FactID,6);
    sReport.ShowReport;
  finally
    sReport.Free;
    sFrxDbData.Free;
    sDateSoure.Free;
  end;
  
end;

procedure GetCodeOutNameP(var Name : String);
var
  i :integer;
  str, strLength, strText, strResult :string;
begin
  strResult := '';
  strText := Name;
  strLength := Name;
  for I := 0 to Length(strLength) - 1 do    // Iterate
  begin
    str := Copy(strText,1,2);
    strResult := strResult + MakeSpellCode(str, 1, 255) + ' ';
    Delete(strText,1,2);
  end;    // for

  strText := strResult;
  strResult :='';
  i := 1;
  while pos(' ', strText)>0 do
  begin
    if i=1 then
      begin
        str:= Copy(strText,1, pos(' ', strText));
        i:=2;
      end
    else
      str:= Copy(strText,1, pos(' ', strText)-1);
    Delete(strText,1,pos(' ', strText));
    strResult := strResult + Copy(str,1,1);
    Delete(str,1,1);
    strResult := strResult + LowerCase(str);
  end;    // while

  Name := strResult;
end;

function GetPrintQuery(aQuery : TADOQuery;sSelectid : String) : TADOQuery;
var
  sQuery : TADOQuery;
begin
  try
    sQuery := TADOQuery.Create(nil);
    sQuery := aQuery;
    sQuery.Open;
    Result := sQuery;
    with Result do
    begin
      if Active then Close;
      SQL[SQL.Count-1] := ' and ava_id in ('+sSelectid+')';
      Open;
    end;
  finally
    sQuery.Free;
  end;
end;

procedure AddPM_DataListItems(avgID,actID : Integer;PM_List : TbsSkinPopupMenu;Onchick : TNotifyEvent);
var
  MenuItem :TMenuItem;
begin
  with CommonDM.qryTemp do
  begin
    PM_List.Items.Clear;
    if Active then Close;
    SQL.Text := 'select ava_id,ava_name_c,ava_name_e from ava_visa_application,avd_visa_detail ' +
                ' where avd_status <> ''D'' and ava_status <> ''D'' and avd_id_ava = ava_id '+
                ' and avd_id_avg = '+IntToStr(avgID) +
                ' and avd_id_act = '+IntToStr(actID) ;
    Open;
    First;
    while not Eof do
    begin
      MenuItem :=TMenuItem.Create(PM_List);
      MenuItem.Caption := FieldByName('ava_name_c').AsString  + '  '+ FieldByName('ava_name_e').AsString;
      MenuItem.Tag := FieldByName('ava_id').Value;
      MenuItem.OnClick:=Onchick;
      PM_List.Items.Add(MenuItem);
      Next;
    end;
    Close;
  end;

end;

procedure OutImportSQLStr(actID : Integer;var SqlColumnName,SqlColumnValues : String);
begin
  SqlColumnName := '';
  SqlColumnValues := '';
  if actID = 14 then
  begin
    SqlColumnName :=  ',avo_self,avo_visay,avo_degree,avo_purpose,avo_answer_a,avo_answer_b,avo_answer_c,avo_answer_d, '+
                      ' avo_answer_e,avo_answer_f,avo_answer_g,avo_answer_h,avo_answer_i,avo_answer_j, '+
                      ' avo_rob,avo_answer_k,avo_answer_l,avo_answer_m,avo_answer_n,avo_answer_o, '+
                      ' avo_answer_p,avo_answer_q,avo_answer_r,avo_answer_s,avo_journey,avo_answer_t ';
    SqlColumnValues := ',''0'',''2'',''1'',''1'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'' '+
                       ' ,''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'',''2'' ' ;
// ,ava_ntn_now,ava_ntn_birth
//,''CHINESE'',''CHINA''
  end
  else
  if actID = 5 then
  begin
    SqlColumnName := ',avo_purpose';
    SqlColumnValues := ',''����''';
  end;  
end;

function GetGetAcceptNo(actID : Integer) : String;
begin
  with CommonDM.spGetAcceptNo do
  begin
    Parameters.ParamByName('@actid').Value :=actID;
    ExecProc;
    Result := Parameters.ParamByName('@OutNoID').Value;
  end;    // with
end;

function OutChinaCode(valuse : String) : String;
var
  sStrList : TStringList;
  iCount : Integer;
  sCode : String;
begin
  sCode := '';
  try
    sStrList := TStringList.Create;
    ExportPrintChar(valuse,sStrList);
    for iCount := 0 to sStrList.Count - 1 do
    begin
    with CommonDM.qryTemp do
    begin
      if Active then Close;
      if Trim(sStrList.Strings[iCount]) <> '' then
      begin
        SQL.Text := 'select acc_code from acc_chinese_code where acc_chinese = '''+UpperCase(sStrList.Strings[iCount])+''' ';
        Open;
        if not IsEmpty then
        begin
          if trim(sCode) = '' then sCode := FieldByName('acc_code').AsString
          else sCode := sCode + ' ' + FieldByName('acc_code').AsString;
        end;
      end;
    end;
    end;
  finally
  Result := sCode;  
  sStrList.Free;
  end;
end;

procedure OpenIme(imename:string);
  var I:integer; myhkl:hkl;
begin
  if ImeName<>'' then
  begin
    if Screen.Imes.Count<>0 then
    begin
      I:=screen.Imes.indexof(imename);
      if I>=0 then
      myhkl:=hkl(screen.Imes.objects[i]);
      activatekeyboardlayout(myhkl,KLF_ACTIVATE);//  ����Ӧ�����뷨
    end;
  end;
end;

procedure ExecuteSQL(v_sql : string);
begin
  try
    CommonDM.ConVisa.BeginTrans;
    CommonDM.ADOCommand.CommandText := v_sql;
    CommonDM.ADOCommand.Execute;
    CommonDM.ConVisa.CommitTrans;
  except
    CommonDM.ConVisa.RollbackTrans;
    MessageOfStop('�����ύ����', False);
  end;  
end;



function GetDatetime:TDateTime;
begin
  Result:=CommonDM.GDB_datetime;
end;
function GetDate:TDate;
begin
  Result:=DateOf(CommonDM.GDB_datetime);
end;

//��cxGrid��IndicatorCell�������
//��Ҫ��Щ��Ԫ��cxLookAndFeelPainters,cxGraphics,cxGridTableView,cxStyles,Graphics, Classes, cxClasses;
procedure SetIndicatorCellOfIndex(ASender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AStyle: TcxStyle;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);

  AStyle:=TcxStyle.Create(nil);
  try
    if AIndicatorViewInfo.GridRecord.Selected then
      begin
        AStyle.TextColor:=clBlue;
        AStyle.Font.Style:=[fsBold];
      end
    else
      begin
        AStyle.TextColor:=clDefault;
        AStyle.Font.Style:=[];
      end;
    ASender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
      ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
      False, False, IntToStr(AIndicatorViewInfo.GridRecord.Index + 1),
      AStyle.Font, AStyle.TextColor, AStyle.Color);
  finally
    AStyle.Free;
  end;
  ADone:=True;
end;

//ȥ���ַ����еĵ�����
function Replace_keyword(Astr:string):string;
begin
  Result:= StringReplace(Astr,'''','',[rfReplaceAll]);
end;


Initialization
begin
  WorkDir := ExtractFilePath(ParamStr(0));  //�õ���ǰ�Ĺ���·��
end;


end.
