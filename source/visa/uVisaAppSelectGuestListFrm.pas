unit uVisaAppSelectGuestListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Data.Win.ADODB, cxLabel, cxPC, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCheckListBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxRadioGroup, cxMemo;

type
  TVisaAppSelectGuestListFrm = class(TForm)
    cxTabControl1: TcxTabControl;
    cxLabel1: TcxLabel;
    qry_ava: TADOQuery;
    DS_ava: TDataSource;
    cxTabControl6: TcxTabControl;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxTabControl2: TcxTabControl;
    Btn_Save: TcxButton;
    btn_Close: TcxButton;
    cxTabControl3: TcxTabControl;
    lbl_SendDate: TcxLabel;
    lbl_SendName: TcxLabel;
    DE_SendDate: TcxDateEdit;
    Edt_SendName: TcxTextEdit;
    cxTabControl4: TcxTabControl;
    cxTabControl5: TcxTabControl;
    CB_BuZhiLiao: TcxCheckListBox;
    Qry_avi: TADOQuery;
    lbl_BackDate: TcxLabel;
    DE_BackDate: TcxDateEdit;
    lbl_BookingDateTime: TcxLabel;
    DE_BookingDateTime: TcxDateEdit;
    qry_avg_user_info: TADOQuery;
    qry_avs: TADOQuery;
    qry_ahd: TADOQuery;
    qry_avg: TADOQuery;
    cxGrid1DBTableView1_ava_index: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_state: TcxGridDBColumn;
    rb_sign: TcxRadioButton;
    rb_refund: TcxRadioButton;
    Memo1: TMemo;
    btn_select_all: TcxButton;
    btn_select_none: TcxButton;
    btn_selet_not: TcxButton;
    lbl_select: TcxLabel;
    cb_select: TcxComboBox;
    cxLabel3: TcxLabel;
    edt_name: TcxTextEdit;
    btn_search: TcxButton;
    cxTabControl7: TcxTabControl;
    cxLabel4: TcxLabel;
    memo_remark: TcxMemo;
    procedure btn_CloseClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure DE_SendDatePropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure rb_signClick(Sender: TObject);
    procedure btn_select_allClick(Sender: TObject);
    procedure btn_select_noneClick(Sender: TObject);
    procedure btn_selet_notClick(Sender: TObject);
    procedure cb_selectPropertiesChange(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
  private
    { Private declarations }
    FType:string;
    FAvgID:Integer;
    Fact_id,Favs_id:Integer;

    procedure SetOpen;          //���
    procedure SetSend;          //��ǩ
    procedure SetBeforeSend;    //����
    procedure SetBuZhiLiao;     //������
    procedure SetBooking;       //ԤԼ
    procedure SetRefund;        //�˸�
    procedure SplitOrders;      //��ֶ���
    procedure setRefuse;        //��ǩ
    procedure SetLingGuanBuLiao;//��ݲ���
    procedure SetSomeMarkOp;    //һЩֻ���ڱ�ǵĲ��� ���� ���� ��ӡ ����  ȡ�� ��ǩ ������

    function GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;       //��ȡ�뵥�û�ID ��������
    function getBackDate(AsendDate:TDateTime;Act_id,Avs_id:Integer;var AbackDate:TDateTime):Boolean; //��ȡ��ǩ����
  public
    { Public declarations }
    procedure OpenTable(vAvgID:integer);
  end;

var
  VisaAppSelectGuestListFrm: TVisaAppSelectGuestListFrm;
  procedure ExecVisaAppSelectGuestListFrm(vType:string;vAvgID:Integer);

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,ufrmSplitOrders,ufrmBuZiLiao;
procedure ExecVisaAppSelectGuestListFrm(vType:string;vAvgID:Integer);
begin
  if VisaAppSelectGuestListFrm=nil then Application.CreateForm(TVisaAppSelectGuestListFrm,VisaAppSelectGuestListFrm);
  with VisaAppSelectGuestListFrm do
  begin
    FType:=vType;
    FAvgID:=vAvgID;
    cxLabel1.Caption:=vType;
    cxLabel2.Caption:='��ѡ������"'+vType+'"�Ŀ���!';

    if FType='��ǩ' then
    begin
      SetSend;
    end
    else if FType='������' then
    begin
      SetBuZhiLiao;
    end
    else if FType='ԤԼ' then
    begin
      SetBooking;
    end
    else if FType='�˸�' then
    begin
      SetRefund;
    end
    else if FType='����' then
    begin
      SetBeforeSend;
    end
    else if FType='��ֶ���' then
    begin
      SplitOrders;
    end
    else if FType='���' then
    begin
      SetOpen;
    end
    else if FType='��ǩ' then
    begin
      setRefuse;
    end
    else if FType='��ݲ���' then
    begin
      SetLingGuanBuLiao;
    end
    else if FType='����' then
    begin
      SetSomeMarkOp;
    end
    else if FType='��ӡ' then
    begin
      SetSomeMarkOp;
    end
    else if FType='����' then
    begin
      SetSomeMarkOp;
    end
    else if FType='ȡ��' then
    begin
      SetSomeMarkOp;
    end
    else if FType='��ǩ' then
    begin
      SetSomeMarkOp;
    end
    else if FType='������' then
    begin
      SetSomeMarkOp;
    end;

    OpenTable(vAvgID);
    ShowModal;
  end;
  VisaAppSelectGuestListFrm.Free;
  VisaAppSelectGuestListFrm:=nil;
end;

{ TVisaAppSelectGuestListFrm }

procedure TVisaAppSelectGuestListFrm.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TVisaAppSelectGuestListFrm.Btn_SaveClick(Sender: TObject);
var
  Row:Integer;
  c:Integer;
  AvaID:string;
  SqlStr:string;
  GuestName:string;
  GuestNameList:string;
  TempStr:string;
  vremark:string;

  vavgh_number:string;
  vGaiZiLiao_sql:string;
  vdatetime:string;
  vavi_name:string;
  vavi_id:string;
  i:Integer;

  vuserid:Integer;
  vinvoiceno:string;

  tavaID,taviId:string;
begin
  if FType='��ǩ' then
  begin
    if Replace_keyword(Edt_SendName.Text)='' then
    begin
      MessageOfInformation('��������ǩ��Ա��',False);
      Exit;
    end;
    if DE_SendDate.EditValue=null then
    begin
      MessageOfInformation('��ѡ����ǩ���ڡ�',False);
      Exit;
    end;
    if DE_BackDate.EditValue=null then
    begin
      MessageOfInformation('��ѡ���ǩ���ڡ�',False);
      Exit;
    end;
    if DE_SendDate.Date>DE_BackDate.Date then
    begin
      MessageOfInformation('��ǩ���ڲ���С����ǩ���ڡ�',False);
      Exit;
    end;
  end;
  if FType='ԤԼ' then
  begin
    if DE_BookingDateTime.Date<(GetDatetime-400) then
    begin
      MessageOfInformation('��ѡ��ԤԼ���ڡ�',False);
      Exit;
    end;
  end;
  if (FType='������')or(FType='ԤԼ')or(FType='��ݲ���') then
  begin
    vuserid:=GetUserId(FAvgID,vinvoiceno);
  end;

  with cxGrid1DBTableView1.DataController do
  begin
    if GetSelectedCount=0 then
    begin
      ShowMessage('��ѡ���账��Ŀ�������!');
      Exit;
    end;

    //��ֶ��� ���� ���������ݣ�ת���뵥����
    if FType='��ֶ���' then
    begin
      if GetSelectedCount=RecordCount then
      begin
        MessageOfInformation('��ֶ�����������ѡ���п���!',False);
        Exit;
      end;
      AvaID:='';
      for c := 0 to GetSelectedCount-1 do
      begin
        Row:=GetSelectedRowIndex(c);
        if GetValue(Row,cxGrid1DBTableView1ava_id.Index)<>null then
        begin
          if AvaID<>'' then
            AvaID:=AvaID+','+inttostr(GetValue(Row,cxGrid1DBTableView1ava_id.Index))
          else
            AvaID:=inttostr(GetValue(Row,cxGrid1DBTableView1ava_id.Index));
        end;
      end;
      if AvaID<>'' then
      begin //���뵥����
        ExecfrmSplitOrders(AvaID,FAvgID);
      end;
      Self.Close;
      Exit;
    end;

    vavgh_number:=CommonDM.GetMaxID('avgh_number');
    vdatetime:=FormatDateTime('yyyy-mm-dd hh:nn:ss',GetDatetime);
    vGaiZiLiao_sql:='';  //��Ҫѭ������avb_visa_buziliao��
    SqlStr:='';
    GuestName:='';
    TempStr:='';
    GuestNameList:='';
    vremark:='';
    tavaID:='';
    taviId:='';
    for c := 0 to GetSelectedCount-1 do
    begin
      Row:=GetSelectedRowIndex(c);
      AvaID:=GetValue(Row,cxGrid1DBTableView1ava_id.Index);
      GuestName:=GetValue(row,cxGrid1DBTableView1ava_name_c.Index);
      GuestNameList:=GuestNameList+TempStr+GuestName;
      TempStr:=',';
      if FType<>'�˸�' then
      begin
        SqlStr:=SqlStr+' update ava_visa_application set ava_StatusType='+QuotedStr(FType)+' where ava_id='+AvaID+#13#10;
      end
      else
      begin
        if rb_sign.Checked then
          SqlStr:=SqlStr+' update ava_visa_application set ava_State=''����'' where ava_id='+AvaID+#13#10
        else
          SqlStr:=SqlStr+' update ava_visa_application set ava_State=''����'' where ava_id='+AvaID+#13#10;
      end;
      if FType='������' then
      begin
        for I := 0 to CB_BuZhiLiao.Items.Count-1 do
        begin
          if CB_BuZhiLiao.Items[i].Checked then
          begin
            vavi_id:=IntToStr(CB_BuZhiLiao.Items[i].Tag);
            vavi_name:=QuotedStr(Replace_keyword(CB_BuZhiLiao.Items[i].Text));

            if vGaiZiLiao_sql='' then//��Ҫѭ������avb_visa_buziliao��
            begin
              vGaiZiLiao_sql:=' insert into avb_visa_buziliao (avb_user_ins,avb_date_ins,avb_status,avb_number_avgh,avb_id_ava,avb_name_ava,avb_id_avi,avb_name_avi)'
                             +' select '+QuotedStr(Replace_keyword(GUserName))+','+QuotedStr(vdatetime)+',''I'','+vavgh_number+','+AvaID+','+QuotedStr(Replace_keyword(GuestName))+','+vavi_id+','+vavi_name;
            end
            else
            begin
              vGaiZiLiao_sql:=vGaiZiLiao_sql
                             +' union all select '+QuotedStr(Replace_keyword(GUserName))+','+QuotedStr(vdatetime)+',''I'','+vavgh_number+','+AvaID+','+QuotedStr(Replace_keyword(GuestName))+','+vavi_id+','+vavi_name;
            end;
            if c=0 then  //������ʷ��¼��ע �����ϵı�עֻ�ڵ�һ�����˵�ʱ��ѭ��һ�β����ϵ���Ŀ
            begin
              if vremark='' then
              begin
                vremark:=vavi_name;
              end
              else
              begin
                vremark:=vremark+','+vavi_name;
              end;
              if taviId='' then
              begin
                taviId:=vavi_id;
              end
              else
              begin
                taviId:=taviId+','+vavi_id;
              end;
            end;
          end;
        end;
        if tavaID='' then
        begin
          tavaID:=AvaID;
        end
        else
        begin
          tavaID:=tavaID+','+AvaID;
        end;
      end;
    end;
    if FType='��ǩ' then
    begin
      vremark:='��ǩ��Ա��'+Replace_keyword(Edt_SendName.Text)+';��ǩ����'+FormatDateTime('yyyy-mm-dd',DE_SendDate.Date)+'��ǩ����'+FormatDateTime('yyyy-mm-dd',DE_BackDate.Date);
    end;
    if FType='ԤԼ' then
    begin
      vremark:='ԤԼ���� '+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date);
    end;
    if FType='��ݲ���' then
    begin
      vremark:=Replace_keyword(Trim(memo_remark.Text));
    end;
    if FType<>'�˸�' then
    begin
      if FType='ԤԼ' then
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_meet,avgh_id_aus_op)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','''+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date)+''','+inttostr(GUserID)+')'+#13#10;
      end
      else if FType='��ǩ' then
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_send,avgh_date_rtn,avgh_id_aus_op,avgh_user_send)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','''+FormatDateTime('yyyy-mm-dd',DE_SendDate.Date)+''','''+FormatDateTime('yyyy-mm-dd',DE_BackDate.Date)+''','+inttostr(GUserID)+','+QuotedStr(Replace_keyword(Edt_SendName.Text))+')'+#13#10;
      end
      else
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op)'+#13#10+
                  'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                  ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                  ','+inttostr(GUserID)+')'+#13#10;
      end;
    end
    else
    begin
      if rb_sign.Checked then
        vremark:='ִ�����Ų���'
      else
        vremark:='�ָ�����״̬';

      SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                     'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(vremark)+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','+inttostr(GUserID)+')'+#13#10;
    end;

    if FType='��ǩ' then
    begin
      SqlStr:=SqlStr+' update avg_visa_group set avg_date_send='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_SendDate.Date))+
        ',avg_date_rtn='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BackDate.Date))+',avg_user_send='+QuotedStr(Replace_keyword(Edt_SendName.Text))+' where avg_id='+IntToStr(FAvgID)+#13#10;
    end
    else if FType='ԤԼ' then
    begin
      SqlStr:=SqlStr+' update avg_visa_group set avg_date_Meet='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date))+
                     ' where avg_id='+IntToStr(FAvgID)+#13#10;
      //֪ͨ��¼
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',1,'+inttostr(FAvgID)+','''+StringReplace('������'+vinvoiceno+ ';ԤԼ��'+GuestNameList+'��ʱ�䣺'+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date),'''','',[rfReplaceAll])+'''  ';
    end
    else if FType='������' then
    begin
      SqlStr:=SqlStr+#13#10+vGaiZiLiao_sql +#13#10;
      //֪ͨ��¼
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',2,'+inttostr(FAvgID)+','''+StringReplace('������'+vinvoiceno+ ';������'+GuestNameList+';�����ϣ�'+vremark,'''','',[rfReplaceAll])+'''  ';
    end
    else if FType='��ݲ���' then
    begin
      //֪ͨ��¼
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',5,'+inttostr(FAvgID)+','''+StringReplace('������'+vinvoiceno+ ';������'+GuestNameList+';��ݲ��ϣ�'+vremark,'''','',[rfReplaceAll])+'''  ';
    end;

//    if FType<>'�˸�' then
//    begin
//      SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupState '+IntToStr(FAvgID)+#13#10; //����״̬
//    end
//    else
//    begin
//      SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupNum '+IntToStr(FAvgID)+#13#10;   //��������
//    end;
    SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupState '+IntToStr(FAvgID)+#13#10; //����״̬+��������

    if FType<>'������' then   //�ǲ����ϵ�ֱ��ִ��
    begin
      TempStr:='�Ƿ�ȷ�ϴ���'+inttostr(GetSelectedCount)+'�����˵Ĳ���?';
      if Application.MessageBox(pwidechar(TempStr),'ǩ֤����',MB_YESNO)=idno then Exit;
      with CommonDM.ADOCommand do
      begin
        CommandText:=SqlStr;
        //Memo1.Text:= SqlStr;
        try
          Execute;
        except
          ShowMessage('����ʧ��,������!');
          Exit;
        end;
      end;
      ShowMessage('����ɹ�!');
      Close;
    end
    else   //�����ϵĵ���¼��ע
    begin
      if taviId='' then
      begin
        MessageOfInformation('��ѡ��������Ŀ��',False);
        Exit;
      end;
      if ExecfrmBuZiLiaoNew(FAvgID,tavaID,taviId) then
        ShowMessage('����ɹ�!');
      Close;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.btn_searchClick(Sender: TObject);
var
  vname:string;
  vid,vno:Integer;
begin
  //����������������λ��������Ϣ
  with qry_ava do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vname:=Trim(edt_name.Text);
    if vname='' then
    begin
      MessageOfInformation('��������������.',False);
      Exit;
    end;

    vid:=FieldByName('ava_id').AsInteger;
    try
      cxGrid1DBTableView1.BeginUpdate;
      vno:=RecNo;
      //ShowMessage(IntToStr(vno));
      if vno>1 then  //���Ǵӵ�һ����ʼ��
      begin
        Next;
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
        First;
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
      end
      else    //�ӵ�һ����ʼ
      begin
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
      end;
      Locate('ava_id',vid,[]);
      if Pos(vname,FieldByName('ava_name_c').AsString)=0 then
        MessageOfInformation('û���ҵ�ƥ��ļ�¼��',False);
    finally
      cxGrid1DBTableView1.EndUpdate;
    end;
  end;

end;

procedure TVisaAppSelectGuestListFrm.btn_select_allClick(Sender: TObject);
begin
  //ȫѡ
  if cxGrid1DBTableView1.OptionsSelection.MultiSelect then
    cxGrid1DBTableView1.Controller.SelectAll;
end;

procedure TVisaAppSelectGuestListFrm.btn_select_noneClick(Sender: TObject);
var
  i:Integer;
begin
  //ȫ��ѡ
  for i := 0 to cxGrid1DBTableView1.DataController.RecordCount-1 do
    if cxGrid1DBTableView1.ViewData.Records[i].Selected then
      cxGrid1DBTableView1.ViewData.Records[i].Selected:=False;
end;

procedure TVisaAppSelectGuestListFrm.btn_selet_notClick(Sender: TObject);
var
  i:Integer;
begin
  //��ѡ
  if cxGrid1DBTableView1.OptionsSelection.MultiSelect then
  begin
    for i := 0 to cxGrid1DBTableView1.DataController.RecordCount-1 do
    begin
      if cxGrid1DBTableView1.ViewData.Records[i].Selected then
      begin
        cxGrid1DBTableView1.ViewData.Records[i].Selected:=False;
      end
      else
      begin
        cxGrid1DBTableView1.ViewData.Records[i].Selected:=True;
      end;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.cb_selectPropertiesChange(Sender: TObject);
begin
  //ɸѡ��������ǩ����ר��
  if FType='��ǩ' then
  begin
    with qry_ava do
    begin
      if not Active then Exit;
      //if IsEmpty then Exit;
      Filtered:=cb_select.ItemIndex=1;
      //Filter:='ava_StatusType<>''��ǩ''';
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.cxGrid1DBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TVisaAppSelectGuestListFrm.DE_SendDatePropertiesEditValueChanged(
  Sender: TObject);
var
  vdate:TDateTime;
begin    //����ǩ���ڸ��ĵ�ʱ��
  if FType='��ǩ' then
  begin
    if getBackDate(DE_SendDate.EditValue,Fact_id,Favs_id,vdate) then
    begin
      DE_BackDate.Date:=vdate;
    end
    else
    begin
      DE_BackDate.EditValue:=null;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.OpenTable(vAvgID: integer);
begin
  with qry_ava do
  begin
    Close;
    Parameters.ParamByName('ava_id_avg').Value:=vAvgID;
    Open;
  end;
end;

procedure TVisaAppSelectGuestListFrm.rb_signClick(Sender: TObject);
var
  vsql:string;
begin
  if rb_sign.Checked then
  begin
    vsql:='select ava_id, ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,'
         +' ava_Date_Sign,ava_Date_End,ava_StatusType,ava_Remark,ava_state,ava_index '
         +' from ava_visa_application'
         +' where ava_id_avg=:ava_id_avg'
         +' and ava_status<>''D'' '
         +' and ava_state<>''����'' '
         +' order by ava_index      ';
    Btn_Save.Caption:='���Ų���';
  end
  else
  begin
    vsql:='select ava_id, ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,'
         +' ava_Date_Sign,ava_Date_End,ava_StatusType,ava_Remark,ava_state,ava_index '
         +' from ava_visa_application'
         +' where ava_id_avg=:ava_id_avg'
         +' and ava_status<>''D'' '
         +' and ava_state=''����'' '
         +' order by ava_index      ';
    Btn_Save.Caption:='�ָ�����';
  end;

  with qry_ava do
  begin
    if Active then Close;
    SQL.Text:=vsql;
    Parameters.ParamByName('ava_id_avg').Value:=FAvgID;
    Open;
  end;


end;

procedure TVisaAppSelectGuestListFrm.SetBuZhiLiao;
var
  c:TcxCheckListBoxItem;
begin
  cxTabControl5.Visible:=True;
  with qry_avi do
  begin
    Close;
    Open;
    First;
    while not eof  do
    begin
      c:=CB_BuZhiLiao.Items.Add;
      c.Text:=FieldValues['avi_name'];
      c.Tag:=FieldValues['avi_id'];
      c.Checked:=False;
      Next;
    end;
  end;
  Btn_Save.Caption:='��һ��';
end;

procedure TVisaAppSelectGuestListFrm.SetLingGuanBuLiao;//��ݲ���
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
  cxTabControl7.Visible:=True; //��ע�� Ĭ�ϲ���ʾ
end;

//һЩֻ���ڱ�ǵĲ��� ���� ���� ��ӡ ����  ȡ�� ��ǩ ������
procedure TVisaAppSelectGuestListFrm.SetSomeMarkOp;
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.setRefuse;        //��ǩ
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.SetOpen;          //���
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.SetSend;
var
  vdate:TDateTime;
begin
  cxTabControl3.Visible:=True;
  with qry_avg do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_id_act,avg_id_avs,avg_date_send,avg_date_rtn from avg_visa_group with(nolock) where avg_id='+inttostr(FAvgID);
    Open;
    if IsEmpty then
    begin
      Fact_id:=0;
      Favs_id:=0;
      DE_SendDate.EditValue:=null;
      DE_BackDate.EditValue:=null;
    end
    else
    begin
      Fact_id:=FieldByName('avg_id_act').AsInteger;
      Favs_id:=FieldByName('avg_id_avs').AsInteger;
      if FieldByName('avg_date_send').IsNull then
      begin
        DE_SendDate.EditValue:=null;
        DE_BackDate.EditValue:=null;
      end
      else
      begin
        DE_SendDate.Date:=FieldByName('avg_date_send').AsDateTime;
        //�����ǩ����
        if getBackDate(DE_SendDate.Date,Fact_id,Favs_id,vdate) then //��ȡ��ǩ����
          DE_BackDate.Date:=vdate;
      end;
//      if FieldByName('avg_date_rtn').IsNull then
//      begin
//        DE_BackDate.EditValue:=null;
//      end
//      else
//      begin
//        DE_BackDate.Date:=FieldByName('avg_date_rtn').AsDateTime;
//      end;
    end;
  end;

//  DE_SendDate.Date:=Now;
//  if getBackDate(DE_SendDate.Date,Fact_id,Favs_id,vdate) then
//  begin
//    DE_BackDate.Date:=vdate;
//  end
//  else
//  begin
//    DE_BackDate.EditValue:=null;
//  end;

  Edt_SendName.Text:=GUserName;

  lbl_BookingDateTime.Visible:=False;
  DE_BookingDateTime.Visible:=False;

  qry_ava.Filtered:=cb_select.ItemIndex=1;
  qry_ava.Filter:='ava_StatusType<>''��ǩ''';
  lbl_select.Visible:=True;
  cb_select.Visible:=True;
end;

procedure TVisaAppSelectGuestListFrm.SetBeforeSend;    //����ǩ
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;


procedure TVisaAppSelectGuestListFrm.SetBooking;
begin
  cxTabControl3.Tabs.Text:='ԤԼ';
  cxTabControl3.Visible:=True;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  lbl_BookingDateTime.Left:=32;
  DE_BookingDateTime.Left:=135;

end;

procedure TVisaAppSelectGuestListFrm.SetRefund;
begin
  cxGrid1DBTableView1_ava_state.Visible:=True;

  cxTabControl3.Tabs.Text:='�˸�';
  cxTabControl3.Visible:=True;

  rb_sign.Visible:=True;
  rb_refund.Visible:=True;

  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  lbl_BookingDateTime.Visible:=False;
  DE_BookingDateTime.Visible:=False;

  Btn_Save.Caption:='���Ų���';
end;

procedure TVisaAppSelectGuestListFrm.SplitOrders;       //��ֶ���
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  Btn_Save.Caption:='¼���¶���';
end;

function TVisaAppSelectGuestListFrm.GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;
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

function TVisaAppSelectGuestListFrm.getBackDate(AsendDate:TDateTime;Act_id,Avs_id:Integer;var AbackDate:TDateTime):Boolean;
var
  vday:Integer;
  vname:string;
begin   //��ȡ��ǩ����
  Result:=False;
  with qry_avs do
  begin
    if Active then Close;
    SQL.Text:='select * '
             +' from avs_visa_speed with(nolock),act_country with(nolock)'
             +' where avs_id_act=act_id '
             +' and avs_id='+inttostr(Avs_id)
             +' and avs_id_act='+inttostr(Act_id);
    Open;
    if IsEmpty then
    begin
      vday:=0;
      vname:='';
    end
    else
    begin
      vday:=FieldByName('avs_day').AsInteger;
      vname:='('+FieldByName('act_name').AsString+'--'+FieldByName('avs_name').AsString+'--'+inttostr(vday)+'��)';
    end;
    Self.Caption:='ǩ֤����'+vname;
  end;
  if vday>0 then
  begin
    with qry_ahd do
    begin
      if Active then Close;
      SQL.Text:='select top '+inttostr(vday)+' * '
               +' from ahd_hoilday with(nolock)'
               +' where ahd_status<>''D'' '
               +' and ahd_date>='''+FormatDateTime('yyyy-mm-dd',AsendDate)+'''   ' //���ڵ��ڼ������ǩ����
               +' and ahd_IsHoilday=0 '
               +' and ahd_id_act='+inttostr(Act_id)
               +' order by ahd_date ';
      Open;
      if not IsEmpty then
      begin
        Last;
        AbackDate:=FieldByName('ahd_date').AsDateTime;
        Result:=True;
      end;
    end;
  end;

end;


end.
