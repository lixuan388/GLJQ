unit uCountryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Data.Win.ADODB, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCheckBox;

type
  TCountryFrm = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1act_id: TcxGridDBColumn;
    cxGrid1DBTableView1act_status: TcxGridDBColumn;
    cxGrid1DBTableView1act_user_ins: TcxGridDBColumn;
    cxGrid1DBTableView1act_date_ins: TcxGridDBColumn;
    cxGrid1DBTableView1act_user_lst: TcxGridDBColumn;
    cxGrid1DBTableView1act_date_lst: TcxGridDBColumn;
    cxGrid1DBTableView1act_name: TcxGridDBColumn;
    cxGrid1DBTableView1act_code: TcxGridDBColumn;
    cxGrid1DBTableView1act_no: TcxGridDBColumn;
    Qry_Aus: TADOQuery;
    DS_Aus: TDataSource;
    cxTabControl3: TcxTabControl;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Qry_avs: TADOQuery;
    DS_avs: TDataSource;
    cxGrid2DBTableView1avs_id: TcxGridDBColumn;
    cxGrid2DBTableView1avs_status: TcxGridDBColumn;
    cxGrid2DBTableView1avs_Date_Ins: TcxGridDBColumn;
    cxGrid2DBTableView1avs_User_Ins: TcxGridDBColumn;
    cxGrid2DBTableView1avs_Date_Lst: TcxGridDBColumn;
    cxGrid2DBTableView1avs_User_Lst: TcxGridDBColumn;
    cxGrid2DBTableView1avs_Name: TcxGridDBColumn;
    cxGrid2DBTableView1avs_id_act: TcxGridDBColumn;
    cxGrid2DBTableView1avs_day: TcxGridDBColumn;
    cxTabControl4: TcxTabControl;
    Btn_AvsAdd: TcxButton;
    Btn_AvsDel: TcxButton;
    cxGrid1DBTableView1act_id_aar: TcxGridDBColumn;
    qry_aar: TADOQuery;
    ds_aar: TDataSource;
    edt_f: TEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Qry_acv: TADOQuery;
    DS_Acv: TDataSource;
    cxGridDBTableView1acv_Date_Lst: TcxGridDBColumn;
    cxGridDBTableView1acv_User_Lst: TcxGridDBColumn;
    cxGridDBTableView1acv_id_avi: TcxGridDBColumn;
    cxGridDBTableView1acv_flag: TcxGridDBColumn;
    Qry_avi: TADOQuery;
    DS_avi: TDataSource;
    Qry_acvacv_id: TAutoIncField;
    Qry_acvacv_status: TStringField;
    Qry_acvacv_Date_Ins: TDateTimeField;
    Qry_acvacv_User_Ins: TWideStringField;
    Qry_acvacv_Date_Lst: TDateTimeField;
    Qry_acvacv_User_Lst: TWideStringField;
    Qry_acvacv_id_avi: TIntegerField;
    Qry_acvacv_id_act: TIntegerField;
    Qry_acvacv_flag: TBooleanField;
    procedure Qry_ModuleAfterInsert(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Qry_ModuleAfterScroll(DataSet: TDataSet);
    procedure Qry_avsAfterInsert(DataSet: TDataSet);
    procedure Qry_avsAfterEdit(DataSet: TDataSet);
    procedure DS_ModuleStateChange(Sender: TObject);
    procedure Btn_AvsAddClick(Sender: TObject);
    procedure Btn_AvsDelClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Btn_InsertClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Qry_acvAfterEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    IsOpeningFrom:boolean;
  public
    { Public declarations }
  end;

var
  CountryFrm: TCountryFrm;

  procedure ExecCountryFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;
procedure ExecCountryFrm;
begin
  if CountryFrm=nil then Application.CreateForm(TCountryFrm,CountryFrm);
  CountryFrm.Show;

end;

procedure TCountryFrm.Btn_AvsAddClick(Sender: TObject);
begin
  inherited;
  Qry_avs.Append;
end;

procedure TCountryFrm.Btn_AvsDelClick(Sender: TObject);
begin
  inherited;
  if Qry_avs.IsEmpty then Exit;

  if Application.MessageBox('是否确认删除此记录?','删除',MB_YESNO)=idno then Exit;

  with Qry_avs do
  begin
    Edit;
    FieldValues['avs_status']:='D';
    Post;
  end;
end;

procedure TCountryFrm.Btn_CancelClick(Sender: TObject);
begin
  inherited;
  cxPageControl1.Visible:=True;
end;

procedure TCountryFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('是否确认删除此记录?','删除',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    if IsEmpty then Exit;
    if MessageOfQuestion('您确定要删除['+fieldbyname('act_name').AsString+']吗？')<>idok then  Exit;
    Edit;
    FieldValues['act_status']:='D';
    Post;
    try
      UpdateBatch(arAll);
      Close;
      Open;
      ShowMessage('删除成功!');
    Except
      on E:Exception do
      begin
//        if Pos('键列信息',e.Message)>0 then
//        begin
//          ShowMessage('删除成功!'); //由于act表有触发器，保存会报错"键列信息不足..."，但其实是保存成功的，所以过滤这个信息
//          Close;
//          Open;
//        end
//        else
//        begin
          ShowMessage(e.Message);
//        end;
      end;
    end;
  end;
end;

procedure TCountryFrm.Btn_InsertClick(Sender: TObject);
begin
  inherited;
  with Qry_avs do
  begin
    Close;
  end;
  with Qry_acv do
  begin
    Close;
  end;
  cxPageControl1.Visible:=False;
end;

procedure TCountryFrm.Btn_SaveClick(Sender: TObject);
begin
  //检查数据
  if edt_f.CanFocus then edt_f.SetFocus;
  with Qry_Module do
  begin
    if not Active then Exit;
    if IsEmpty then
    begin
      MessageOfWarning('没有可保存的数据！',False);
      Exit;
    end;
    if FieldByName('act_name').AsString='' then
    begin
      MessageOfWarning('请输入国家名称！',False);
      Exit;
    end;
//    if FieldByName('act_code').AsString='' then
//    begin
//      MessageOfWarning('请输入国家英文缩写！',False);
//      Exit;
//    end;
    if FieldByName('act_no').IsNull then
    begin
      MessageOfWarning('请输入[受理流水号]的初始值！',False);
      Exit;
    end;
    if FieldByName('act_id_aar').IsNull then
    begin
      MessageOfWarning('请选择区域！',False);
      Exit;
    end;
    if qry_aar.Locate('aar_id',FieldByName('act_id_aar').AsInteger,[]) then
    begin
      if (State<>dsInsert) and (State<>dsEdit) then
        Edit;
      FieldByName('act_name_aar').AsString:=qry_aar.FieldByName('aar_name').AsString;
    end
    else
    begin
      if (State<>dsInsert) and (State<>dsEdit) then
        Edit;
      FieldByName('act_name_aar').AsString:='';
      FieldByName('act_id_aar').AsInteger:=0;
    end;
  end;

  try
    //保存从表
    if cxPageControl1.Visible then
    begin
      Qry_avs.Filtered:=False;
      if Qry_avs.State in [dsinsert,dsedit] then Qry_avs.Post;
      Qry_avs.UpdateBatch(arAll);
      Qry_avs.Filtered:=True;

      if Qry_acv.State in [dsinsert,dsedit] then Qry_acv.Post;
      Qry_acv.UpdateBatch(arAll);
    end;
    //保存主表
    //inherited;
    Qry_Module.Post;
    Qry_Module.UpdateBatch(arAll);
    if not cxPageControl1.Visible then  //新增的时候刷新下主表
    begin
      Qry_Module.Close;
      Qry_Module.Open;
      Qry_Module.Last;
    end;
    //整理用户权限
    with CommonDM.ADOCommand do
    begin
      CommandText:='exec usp_fix_tree_power';
      Execute;
    end;
    cxPageControl1.Visible:=True;
  except
    on E:Exception do
    begin
//      if Pos('键列信息',e.Message)>0 then
//      begin
//        cxTabControl3.Visible:=True;  //由于act表有触发器，保存会报错"键列信息不足..."，但其实是保存成功的，所以过滤这个信息
//        Qry_Module.Close;
//        Qry_Module.Open;
//        Qry_Module.Last;
//      end
//      else
//      begin
        ShowMessage(e.Message);
//      end;
    end;
  end;

end;

procedure TCountryFrm.DS_ModuleStateChange(Sender: TObject);
begin
  inherited;
  DS_avs.AutoEdit:=DS_Module.State in [dsInsert,dsEdit];
  DS_Acv.AutoEdit:=DS_Module.State in [dsInsert,dsEdit];
  cxTabControl4.Visible:=DS_avs.AutoEdit;

end;

procedure TCountryFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CountryFrm:=nil;
end;

procedure TCountryFrm.FormCreate(Sender: TObject);
begin
  IsOpeningFrom:=True;
  inherited;

end;

procedure TCountryFrm.FormShow(Sender: TObject);
begin
  inherited;
  Qry_Aus.Close;
  Qry_Aus.Open;
  Qry_avi.Close;
  Qry_avi.Open;

  with qry_aar do
  begin
    if Active then Close;
    Open;
  end;
  IsOpeningFrom:=False;
  Qry_Module.First;
end;

procedure TCountryFrm.Qry_acvAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_acv do
  begin
    FieldValues['acv_status']:='E';
    FieldValues['acv_Date_lst']:=GetDatetime;
    FieldValues['acv_User_lst']:=GUserName;
  end;
end;

procedure TCountryFrm.Qry_avsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_avs do
  begin
    FieldValues['avs_status']:='E';
    FieldValues['avs_Date_lst']:=GetDatetime;
    FieldValues['avs_User_lst']:=GUserName;
  end;
end;

procedure TCountryFrm.Qry_avsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_avs do
  begin
    FieldValues['avs_status']:='I';
    FieldValues['avs_Date_Ins']:=GetDatetime;
    FieldValues['avs_User_Ins']:=GUserName;
    FieldValues['avs_Name']:='';
    FieldValues['avs_day']:=7;
    FieldValues['avs_id_act']:=Qry_Module.FieldValues['act_id'];
  end;
end;

procedure TCountryFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['act_status']:='E';
    FieldValues['act_user_lst']:=GUserID;
    FieldValues['act_date_lst']:=GetDatetime;
  end;
end;

procedure TCountryFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['act_status']:='I';
    FieldValues['act_user_ins']:=GUserID;
    FieldValues['act_date_ins']:=GetDatetime;
    FieldValues['act_name']:='';
    FieldValues['act_code']:='';
    FieldValues['act_no']:=1;

  end;
end;

procedure TCountryFrm.Qry_ModuleAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if IsOpeningFrom then Exit;
  
  if not (Qry_Module.State in [dsInsert]) then
  begin
    with Qry_avs do
    begin
      Close;
      Parameters.ParamByName('avs_id_act').Value:=Qry_Module.FieldValues['act_id'];
      Open;
    end;
    with Qry_acv do
    begin
      Close;
      Parameters.ParamByName('acv_id_act').Value:=Qry_Module.FieldValues['act_id'];
      Open;
    end;
  end;
end;

end.
