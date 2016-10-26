unit ufrmGroupEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxPCdxBarPopupMenu, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxMaskEdit,
  cxTextEdit, cxLabel, cxPC, cxGroupBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit, cxCheckBox;

type
  TfrmGroupEdit = class(TForm)
    DS_avs: TDataSource;
    Qry_avs: TADOQuery;
    ds_act: TDataSource;
    qry_act: TADOQuery;
    qry_ast: TADOQuery;
    Qry_Avg: TADOQuery;
    DS_Avg: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxTabControl1: TcxTabControl;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cb_sourcetype: TcxDBComboBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel18: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxTabControl2: TcxTabControl;
    btn_close: TcxButton;
    btn_save: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxTabControl3: TcxTabControl;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxLabel23: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    cxTabControl4: TcxTabControl;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    qry_avg_old: TADOQuery;
    qry_avgh: TADOQuery;
    qry_avt: TADOQuery;
    qry_avs_all: TADOQuery;
    cxLabel4: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxTabControl5: TcxTabControl;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel10: TcxLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    qry_avg_user_info: TADOQuery;
    cxLabel11: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
  private
    Favg_id:Integer;
    Fres:Boolean;
    Fnotice:string;
    { Private declarations }
    procedure refresh_avs(Act_id:Integer);
    procedure getdata;
    function GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;       //��ȡ�뵥�û�ID ��������
    function Save_check:Boolean;  //����ʱ�ı����� �Դ���ʾ
  public
    { Public declarations }
  end;

var
  frmGroupEdit: TfrmGroupEdit;
  function ExecfrmGroupEdit(Avg_id:Integer):Boolean;
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,ufrmSourceQuery;

function ExecfrmGroupEdit(Avg_id:Integer):Boolean;
begin
  if frmGroupEdit=nil then
    frmGroupEdit:=TfrmGroupEdit.Create(Application);
  try
    with frmGroupEdit do
    begin
      Fres:=False;
      Favg_id:=Avg_id;
      getdata;
      ShowModal;
    end;
  finally
    Result:=frmGroupEdit.Fres;
    FreeAndNil(frmGroupEdit);
  end;
end;

procedure TfrmGroupEdit.refresh_avs(Act_id:Integer);
var
  vact_id:Integer;
begin
  with Qry_avs do
  begin
    vact_id:=0;
    if Active then
    begin
      if Parameters.ParamByName('avs_id_act').Value<>Null then
        vact_id:=Parameters.ParamByName('avs_id_act').Value;
      Close;
    end;
    Parameters.ParamByName('avs_id_act').Value:=Act_id;
    Open;
  end;
  with Qry_Avg do
  begin
    if (State=dsedit)and(vact_id<>Act_id)and(FieldByName('avg_id_type').AsVariant<>null) then
    begin
      FieldByName('avg_id_type').AsVariant:=null;
    end;
  end;
end;

{select avg_id,avg_status,avg_user_lst,avg_date_lst,avg_date_sign,avg_groupcode,
avg_invoiceno,avg_source,avg_SourceName,avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,
avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_remark,
avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_need3,avg_need4,avg_amount,
avg_Source_link,avg_Source_tel,avg_Source_addr,avg_username_lst,avg_price,avg_num
from avg_visa_group
where avg_id= 90775}

procedure TfrmGroupEdit.getdata;
begin
  with Qry_Avg do
  begin
    if Active then Close;
    Parameters.ParamByName('avg_id').Value:=Favg_id;
    Open;
    if not IsEmpty then
    begin
      refresh_avs(FieldByName('avg_id_act').AsInteger);
      Edit;
    end;
  end;
  with qry_avg_old do
  begin
    if Active then Close;
    Parameters.ParamByName('avg_id').Value:=Favg_id;
    Open;
  end;
end;

function TfrmGroupEdit.GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;
begin
  Result:=0;
  Ainvoiceno:='';
  with qry_avg_user_info do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_invoiceno,avg_user_enter,aus_id'
             +' from avg_visa_group with(nolock),aus_users with(nolock)'
             +' where avg_id='+inttostr(Avg_id)
             +' and aus_status<>''D'' '
             +' and aus_username=avg_user_enter';
    Open;
    if not IsEmpty then
    begin
      Ainvoiceno:=fieldbyname('avg_invoiceno').asstring;
      Result:=fieldbyname('aus_id').AsInteger;
    end;
  end;
end;

function TfrmGroupEdit.Save_check:Boolean;  //����ʱ�ı����� �Դ���ʾ
var
  vremark,vtemp:string;
begin
  Result:=False;
  cxDBMemo1.SetFocus;
  cxDBTextEdit1.SetFocus;
  with Qry_Avg do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('û�пɱ�������ݣ�',False);
      Exit;
    end;
    if FieldByName('avg_id_act').IsNull then
    begin
      MessageOfInformation('��ѡ�������ң�',False);
      Exit;
    end;
    if FieldByName('avg_id_type').IsNull then
    begin
      MessageOfInformation('��ѡ��������ͣ�',False);
      Exit;
    end;
    if FieldByName('avg_price').IsNull then
    begin
      MessageOfInformation('�����뵥�ۣ�',False);
      Exit;
    end;
    if FieldByName('avg_date_send').IsNull then
    begin
      MessageOfInformation('����ѡ����ǩ���ڣ�',False);
      Exit;
    end;
    if FieldByName('avg_source').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����',False);
      Exit;
    end;
    if FieldByName('avg_SourceName').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����ƣ�',False);
      Exit;
    end;
    //�Զ������� 2014-11-17
    if (State<>dsInsert) and (State<>dsedit) then
      Edit;
    if qry_act.Locate('act_id',FieldByName('avg_id_act').AsInteger,[]) then
    begin
      FieldByName('avg_name_aar').AsString:=qry_act.FieldByName('act_name_aar').AsString;
      FieldByName('avg_id_aar').AsInteger:=qry_act.FieldByName('act_id_aar').AsInteger;
    end
    else
    begin
      FieldByName('avg_name_aar').AsString:='';
      FieldByName('avg_id_aar').AsInteger:=0;
    end;
    //����Ӧ��
    FieldByName('avg_amount').AsCurrency:=FieldByName('avg_num').AsInteger*FieldByName('avg_price').AsCurrency;
    //�޸��˺��޸�����
    FieldByName('avg_status').AsString:='E';
    FieldByName('avg_user_lst').AsInteger:=GUserID;
    FieldByName('avg_username_lst').AsString:=GUserName;
    FieldByName('avg_date_lst').AsDateTime:=GetDatetime;
    Post;
  end;
  //�Ա��޸ĵ�����
  with qry_avg_old do
  begin
    vremark:='';
    if not IsEmpty then
    begin
      if FieldValues['avg_groupcode']<>Qry_Avg.FieldValues['avg_groupcode'] then
      begin
        vremark:=vremark+'������ţ�'+fieldbyname('avg_groupcode').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_groupcode').AsString+'��';
      end;
      if FieldValues['avg_source']<>Qry_Avg.FieldValues['avg_source'] then
      begin
        vremark:=vremark+'�ͻ����'+fieldbyname('avg_source').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_source').AsString+'��';
      end;
      if FieldValues['avg_SourceName']<>Qry_Avg.FieldValues['avg_SourceName'] then
      begin
        vremark:=vremark+'�ͻ����ƣ�'+fieldbyname('avg_SourceName').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_SourceName').AsString+'��';
      end;
      if FieldValues['avg_date_sign']<>Qry_Avg.FieldValues['avg_date_sign'] then
      begin
        vremark:=vremark+'��֤���ڣ�'+fieldbyname('avg_date_sign').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_sign').AsString+'��';
      end;
      if FieldValues['avg_id_act']<>Qry_Avg.FieldValues['avg_id_act'] then
      begin
        if qry_act.Locate('act_id',FieldValues['avg_id_act'],[]) then
          vtemp:=qry_act.FieldByName('act_name').AsString
        else
          vtemp:='';
        vremark:=vremark+'���ң�'+vtemp+
                               ' -> '+cxDBLookupComboBox1.Text+'��';
      end;
      if FieldValues['avg_id_type']<>Qry_Avg.FieldValues['avg_id_type'] then
      begin
        if qry_avt.Locate('avt_id',FieldValues['avg_id_type'],[]) then
          vtemp:=qry_avt.FieldByName('avt_name').AsString
        else
          vtemp:='';
        vremark:=vremark+'�������ͣ�'+vtemp+
                               ' -> '+cxDBLookupComboBox2.Text+'��';
      end;
      if FieldValues['avg_id_avs']<>Qry_Avg.FieldValues['avg_id_avs'] then
      begin
        if qry_avs_all.Locate('avs_id',FieldValues['avg_id_avs'],[]) then
          vtemp:=qry_avs_all.FieldByName('avs_name').AsString
        else
          vtemp:='';
        vremark:=vremark+'�������ࣺ'+vtemp+
                               ' -> '+cxDBLookupComboBox3.Text+'��';
      end;
      if FieldValues['avg_name_aar']<>Qry_Avg.FieldValues['avg_name_aar'] then
      begin
        vremark:=vremark+'����'+fieldbyname('avg_name_aar').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_name_aar').AsString+'��';
      end;
      if FieldValues['avg_remark']<>Qry_Avg.FieldValues['avg_remark'] then
      begin
        vremark:=vremark+'��ע��'+fieldbyname('avg_remark').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_remark').AsString+'��';
      end;
      if FieldValues['avg_date_meet']<>Qry_Avg.FieldValues['avg_date_meet'] then
      begin
        vremark:=vremark+'ԤԼ���ڣ�'+fieldbyname('avg_date_meet').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_meet').AsString+'��';
      end;
      if FieldValues['avg_date_send']<>Qry_Avg.FieldValues['avg_date_send'] then
      begin
        vremark:=vremark+'��ǩ���ڣ�'+fieldbyname('avg_date_send').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_send').AsString+'��';
      end;
      if FieldValues['avg_date_rtn']<>Qry_Avg.FieldValues['avg_date_rtn'] then
      begin
        vremark:=vremark+'��ǩ���ڣ�'+fieldbyname('avg_date_rtn').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_rtn').AsString+'��';
      end;
      if FieldValues['avg_user_send']<>Qry_Avg.FieldValues['avg_user_send'] then
      begin
        vremark:=vremark+'��ǩ��Ա��'+fieldbyname('avg_user_send').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_user_send').AsString+'��';
      end;
      if FieldValues['avg_date_st']<>Qry_Avg.FieldValues['avg_date_st'] then
      begin
        vremark:=vremark+'�������ڣ�'+fieldbyname('avg_date_st').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_st').AsString+'��';
      end;
      if FieldValues['avg_date_re']<>Qry_Avg.FieldValues['avg_date_re'] then
      begin
        vremark:=vremark+'�������ڣ�'+fieldbyname('avg_date_re').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_re').AsString+'��';
      end;
      if FieldValues['avg_date_cancel']<>Qry_Avg.FieldValues['avg_date_cancel'] then
      begin
        vremark:=vremark+'��ǩ���ڣ�'+fieldbyname('avg_date_cancel').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_date_cancel').AsString+'��';
      end;
      if FieldValues['avg_need1']<>Qry_Avg.FieldValues['avg_need1'] then
      begin
        if fieldbyname('avg_need1').AsBoolean then
          vtemp:='��'
        else
          vtemp:='��';
        if Qry_Avg.fieldbyname('avg_need1').AsBoolean then
          vtemp:=vtemp+' -> ��'
        else
          vtemp:=vtemp+' -> ��';
        vremark:=vremark+'��ԭ����'+vtemp+'��';
        Fnotice:=Fnotice+'��ԭ����'+vtemp+'��';
      end;
      if FieldValues['avg_need2']<>Qry_Avg.FieldValues['avg_need2'] then
      begin
        if fieldbyname('avg_need2').AsBoolean then
          vtemp:='��'
        else
          vtemp:='��';
        if Qry_Avg.fieldbyname('avg_need2').AsBoolean then
          vtemp:=vtemp+' -> ��'
        else
          vtemp:=vtemp+' -> ��';
        vremark:=vremark+'��Ѻ��'+vtemp+'��';
        Fnotice:=Fnotice+'��Ѻ��'+vtemp+'��';
      end;
      if FieldValues['avg_need3']<>Qry_Avg.FieldValues['avg_need3'] then
      begin
        if fieldbyname('avg_need3').AsBoolean then
          vtemp:='��'
        else
          vtemp:='��';
        if Qry_Avg.fieldbyname('avg_need3').AsBoolean then
          vtemp:=vtemp+' -> ��'
        else
          vtemp:=vtemp+' -> ��';
        vremark:=vremark+'����ǩ��'+vtemp+'��';
        Fnotice:=Fnotice+'����ǩ��'+vtemp+'��';
      end;
      if FieldValues['avg_need4']<>Qry_Avg.FieldValues['avg_need4'] then
      begin
        if fieldbyname('avg_need4').AsBoolean then
          vtemp:='��'
        else
          vtemp:='��';
        if Qry_Avg.fieldbyname('avg_need4').AsBoolean then
          vtemp:=vtemp+' -> ��'
        else
          vtemp:=vtemp+' -> ��';
        vremark:=vremark+'�赣������'+vtemp+'��';
        Fnotice:=Fnotice+'�赣������'+vtemp+'��';
      end;
      if FieldValues['avg_price']<>Qry_Avg.FieldValues['avg_price'] then
      begin
        vremark:=vremark+'���ۣ�'+fieldbyname('avg_price').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_price').AsString+'��';
      end;
      if FieldValues['avg_amount']<>Qry_Avg.FieldValues['avg_amount'] then
      begin
        vremark:=vremark+'Ӧ�ս�'+fieldbyname('avg_amount').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_amount').AsString+'��';
      end;
      if FieldValues['avg_Source_link']<>Qry_Avg.FieldValues['avg_Source_link'] then
      begin
        vremark:=vremark+'��ϵ�ˣ�'+fieldbyname('avg_Source_link').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_Source_link').AsString+'��';
      end;
      if FieldValues['avg_Source_tel']<>Qry_Avg.FieldValues['avg_Source_tel'] then
      begin
        vremark:=vremark+'��ϵ�绰��'+fieldbyname('avg_Source_tel').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_Source_tel').AsString+'��';
      end;
      if FieldValues['avg_Source_addr']<>Qry_Avg.FieldValues['avg_Source_addr'] then
      begin
        vremark:=vremark+'��ϵ��ַ��'+fieldbyname('avg_Source_addr').AsString+
                               ' -> '+Qry_Avg.fieldbyname('avg_Source_addr').AsString+'��';
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
    FieldByName('avgh_GuestName').AsString:='';
    FieldByName('avgh_type').AsString:='�޸Ķ���';
    FieldByName('avgh_remark').AsString:=vremark;
    FieldByName('avgh_number').AsInteger:=StrToInt(GetMaxID('avgh_number'));
    Post;
  end;

  Result:=True;
end;

procedure TfrmGroupEdit.btn_closeClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmGroupEdit.btn_saveClick(Sender: TObject);
var
  vuserid:Integer;
  vinvoiceno:string;
begin
  //����
  if Save_check then
  begin
    try
      Qry_Avg.UpdateBatch(arAll);
      qry_avgh.UpdateBatch(arAll);
      DS_Avg.AutoEdit:=False;
      with CommonDM.ADOCommand do
      begin
        CommandText:='exec PAV_UpdateVisaGroupState '+inttostr(Favg_id)+' ';
        if Fnotice<>'' then
        begin
          vuserid:=GetUserId(FAvg_ID,vinvoiceno);
          CommandText:=CommandText+#13#10+' exec usp_set_notice '
                                  +inttostr(GUserID)+','
                                  +inttostr(vuserid)+',3,'
                                  +inttostr(FAvg_ID)+','''
                                  +StringReplace('������'+vinvoiceno+ ';�޸ģ�'+Fnotice,'''','',[rfReplaceAll])+'''  ';
        end;
        Execute;
      end;
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

procedure TfrmGroupEdit.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  //ѡ��ͻ�
  with Qry_Avg do
  begin
    if state=dsEdit then
      ExecfrmSourceQuery_ins2(Self);
  end;
end;

procedure TfrmGroupEdit.cxDBLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  with Qry_Avg do
  begin
    if State=dsEdit then
    begin
      refresh_avs(cxDBLookupComboBox1.EditValue);
    end;
  end;
end;

procedure TfrmGroupEdit.FormCreate(Sender: TObject);
begin
  Fnotice:=''; //֪ͨ��Ϣ
  with qry_avt do   //�������� �ԱȲ�����
  begin
    if Active then Close;
    Open;
  end;
  with qry_avs_all do   //��������(ȫ)   �ԱȲ�����
  begin
    if Active then Close;
    Open;
  end;
//  with qry_avs do   //�������� �ԱȲ�����
//  begin
//    if Active then Close;
//    Open;
//  end;

  with qry_act do   //����
  begin
    if Active then Close;
    Open;
  end;
  with qry_ast do         //�ͻ�����
  begin
    if Active then Close;
    Open;
    if IsEmpty then
    begin
      cb_sourcetype.Properties.Items.Clear;
    end
    else
    begin
      First;
      cb_sourcetype.Properties.Items.Clear;
      while not Eof do
      begin
        cb_sourcetype.Properties.Items.Add(FieldByName('ast_name').AsString);
        Next;
      end;
    end;
  end;
end;

end.
