unit ufrmApplicationEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxPC, Data.DB, Data.Win.ADODB, cxContainer, cxEdit, cxLabel, cxMemo, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxImageComboBox, cxTextEdit,System.DateUtils,
  cxSpinEdit;

type
  TfrmApplicationEdit = class(TForm)
    cxTabControl1: TcxTabControl;
    cxTabControl2: TcxTabControl;
    btn_close: TcxButton;
    btn_save: TcxButton;
    qry_ava_old: TADOQuery;
    qry_ava: TADOQuery;
    DS_Ava: TDataSource;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    qry_avgh: TADOQuery;
    cxLabel10: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxLabel11: TcxLabel;
    cxDBMemo3: TcxDBMemo;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    Fava_id,Favg_id:Integer;
    Fres:Boolean;
    { Private declarations }
    procedure getdata;
    function Save_check:Boolean;  //����ʱ�ı����� �Դ���ʾ
  public
    { Public declarations }
  end;

var
  frmApplicationEdit: TfrmApplicationEdit;
  function ExecfrmApplicationEdit(Ava_id:Integer):Boolean;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

function ExecfrmApplicationEdit(Ava_id:Integer):Boolean;
begin
  if frmApplicationEdit=nil then
    frmApplicationEdit:=TfrmApplicationEdit.Create(Application);
  try
    with frmApplicationEdit do
    begin
      Fres:=False;
      Fava_id:=Ava_id;
      getdata;
      ShowModal;
    end;
  finally
    Result:=frmApplicationEdit.Fres;
    FreeAndNil(frmApplicationEdit);
  end;
end;

procedure TfrmApplicationEdit.btn_closeClick(Sender: TObject);
begin
  Self.Close;
end;

{select ava_id,ava_status,ava_user_lst,ava_date_lst,ava_id_avg,
ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark
from ava_visa_application
where ava_id=217803}

procedure TfrmApplicationEdit.btn_saveClick(Sender: TObject);
begin
  //����
  if Save_check then
  begin
    try
      Qry_Ava.UpdateBatch(arAll);
      qry_avgh.UpdateBatch(arAll);
      DS_Ava.AutoEdit:=False;
      Fres:=True;
      MessageOfInformation('����ɹ���',False);
      Self.Close;
    except
      on E:Exception do
      begin
        ShowMessage(e.Message);
      end;
    end
  end;
end;

procedure TfrmApplicationEdit.getdata;
begin
  with Qry_Ava do
  begin
    if Active then Close;
    Parameters.ParamByName('ava_id').Value:=Fava_id;
    Open;
  end;
  with qry_ava_old do
  begin
    if Active then Close;
    Parameters.ParamByName('ava_id').Value:=Fava_id;
    Open;
    if IsEmpty then
      Favg_id:=0
    else
      Favg_id:=FieldByName('ava_id_avg').AsInteger;
  end;
end;

function TfrmApplicationEdit.Save_check:Boolean;  //����ʱ�ı����� �Դ���ʾ
var
  vremark,vtemp:string;
  vage:Integer;
  vdatetime:TDateTime;
begin
  Result:=False;
  cxDBTextEdit1.SetFocus;
  cxDBMemo1.SetFocus;

  //��ǰ����
  vdatetime:=GetDate;

  with qry_ava do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('û�пɱ�������ݣ�',False);
      Exit;
    end;
    if FieldByName('ava_name_c').IsNull then
    begin
      MessageOfInformation('������������Ϊ�գ�',False);
      Exit;
    end;
    if FieldByName('ava_name_c').AsString='' then
    begin
      MessageOfInformation('����д���˵�������',False);
      Exit;
    end;

    //д���޸��˺��޸����� 2014-11-24
    if (State<>dsInsert) and (State<>dsedit) then
      Edit;
    FieldByName('ava_status').AsString:='E';
    FieldByName('ava_user_lst').AsString:=GUserName;
    FieldByName('ava_date_lst').AsDateTime:=GetDatetime;

    //�������д�������ڵĻ� �Զ���������  2015-04-24
    if not FieldByName('ava_date_birth').IsNull then
    begin
      vage:=YearsBetween(vdatetime,FieldByName('ava_date_birth').AsDateTime)+1;
      if FieldByName('ava_age').AsInteger<>vage then
      begin
        FieldByName('ava_age').AsInteger:=vage;
      end;
    end;

    Post;
  end;

  //�Ա��޸ĵ�����
  with qry_ava_old do
  begin
    vremark:='';
    if not IsEmpty then
    begin

      if FieldValues['ava_name_c']<>Qry_Ava.FieldValues['ava_name_c'] then
      begin
        vremark:=vremark+'����������'+fieldbyname('ava_name_c').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_name_c').AsString+'��';
      end;
      if FieldValues['ava_name_e']<>Qry_Ava.FieldValues['ava_name_e'] then
      begin
        vremark:=vremark+'Ӣ��������'+fieldbyname('ava_name_e').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_name_e').AsString+'��';
      end;
      if FieldValues['ava_idcard']<>Qry_Ava.FieldValues['ava_idcard'] then
      begin
        vremark:=vremark+'���֤��'+fieldbyname('ava_idcard').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_idcard').AsString+'��';
      end;
      if FieldValues['ava_PassPortNo']<>Qry_Ava.FieldValues['ava_PassPortNo'] then
      begin
        vremark:=vremark+'���պ��룺'+fieldbyname('ava_PassPortNo').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_PassPortNo').AsString+'��';
      end;
      if FieldValues['ava_sex']<>Qry_Ava.FieldValues['ava_sex'] then
      begin
        vtemp:='';
        if FieldByName('ava_sex').AsInteger=1 then
          vtemp:='��';
        if FieldByName('ava_sex').AsInteger=2 then
          vtemp:='Ů';
        if Qry_Ava.FieldByName('ava_sex').AsInteger=1 then
          vtemp:=vtemp+' -> ��';
        if Qry_Ava.FieldByName('ava_sex').AsInteger=2 then
          vtemp:=vtemp+' -> Ů';
        vremark:=vremark+'�Ա�'+vtemp+'��';
      end;
      if FieldValues['ava_date_birth']<>Qry_Ava.FieldValues['ava_date_birth'] then
      begin
        vremark:=vremark+'�������£�'+fieldbyname('ava_date_birth').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_date_birth').AsString+'��';
      end;
      if FieldValues['ava_Date_Sign']<>Qry_Ava.FieldValues['ava_Date_Sign'] then
      begin
        vremark:=vremark+'ǩ�����ڣ�'+fieldbyname('ava_Date_Sign').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Date_Sign').AsString+'��';
      end;
      if FieldValues['ava_Date_End']<>Qry_Ava.FieldValues['ava_Date_End'] then
      begin
        vremark:=vremark+'��Ч������'+fieldbyname('ava_Date_End').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Date_End').AsString+'��';
      end;
      if FieldValues['ava_Remark']<>Qry_Ava.FieldValues['ava_Remark'] then
      begin
        vremark:=vremark+'��ע��'+fieldbyname('ava_Remark').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Remark').AsString+'��';
      end;
      if FieldValues['ava_remark1']<>Qry_Ava.FieldValues['ava_remark1'] then
      begin
        vremark:=vremark+'��ע1��'+fieldbyname('ava_remark1').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_remark1').AsString+'��';
      end;
      if FieldValues['ava_remark2']<>Qry_Ava.FieldValues['ava_remark2'] then
      begin
        vremark:=vremark+'��ע2��'+fieldbyname('ava_remark2').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_remark2').AsString+'��';
      end;
      if FieldValues['ava_home_addr']<>Qry_Ava.FieldValues['ava_home_addr'] then
      begin
        vremark:=vremark+'��ס��ַ��'+fieldbyname('ava_home_addr').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_home_addr').AsString+'��';
      end;
      if FieldValues['ava_mobile']<>Qry_Ava.FieldValues['ava_mobile'] then
      begin
        vremark:=vremark+'�绰���룺'+fieldbyname('ava_mobile').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_mobile').AsString+'��';
      end;
      if FieldValues['ava_age']<>Qry_Ava.FieldValues['ava_age'] then
      begin
        vremark:=vremark+'���䣺'+inttostr(fieldbyname('ava_age').AsInteger)+
                               ' -> '+inttostr(Qry_Ava.fieldbyname('ava_age').AsInteger)+'��';
      end;
    end;
  end;

  //��ʷ��¼
  with qry_avgh do
  begin
    if Active then Close;
    Open;
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=Favg_id;
    FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=qry_ava.FieldByName('ava_name_c').AsString;
    FieldByName('avgh_type').AsString:='�޸Ŀ�����Ϣ';
    FieldByName('avgh_remark').AsString:=vremark;
    FieldByName('avgh_number').AsInteger:=StrToInt(GetMaxID('avgh_number'));
    Post;
  end;
  Result:=True;
end;


end.
