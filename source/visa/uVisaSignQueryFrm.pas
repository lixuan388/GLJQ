unit uVisaSignQueryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,
  Data.DB, Data.Win.ADODB, cxPC, dxBarExtItems, cxContainer, cxEdit, cxTextEdit,ufrmNoticePop;

type
  TVisaSignQueryFrm = class(TModuleMDIFrm)
    cxTabControl2: TcxTabControl;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Edt_InvoiceNo: TcxTextEdit;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    edt_name_c: TcxTextEdit;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    edt_passport_no: TcxTextEdit;
    btn_admin_delete_order: TdxBarButton;
    sp_delete_order: TADOStoredProc;
    dxBarManager1Bar2: TdxBar;
    btn_open: TdxBarButton;
    btn_buziliao: TdxBarButton;
    btn_booking: TdxBarButton;
    btn_before_send: TdxBarButton;
    btn_send: TdxBarButton;
    btnLingGuanBuLiao: TdxBarButton;
    btn_back: TdxBarButton;
    btn_refuse: TdxBarButton;
    btn_fafang: TdxBarButton;
    btn_refund: TdxBarButton;
    btn_split_orders: TdxBarButton;
    btn_groupEdit: TdxBarButton;
    btn_ApplicationEdit: TdxBarButton;
    btn_list: TdxBarButton;
    btn_add: TdxBarButton;
    btn_admin_op_flg: TdxBarButton;
    sp_op_order_flg: TADOStoredProc;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    edt_name_ava: TcxTextEdit;
    btn_locate: TdxBarButton;
    btn_fanyi: TdxBarButton;
    btn_fuyin: TdxBarButton;
    btn_zhengli: TdxBarButton;
    btn_xiaoqian: TdxBarButton;
    btnLingGuanShenHe: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_admin_delete_orderClick(Sender: TObject);
    procedure btn_openClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_listClick(Sender: TObject);
    procedure btn_admin_op_flgClick(Sender: TObject);
    procedure btn_locateClick(Sender: TObject);
  private
    Favg_id:Integer;
    Favgh_number:Integer;
    { Private declarations }
    procedure set_btn_active;  //���ð�ť�Ŀ�������  ��������open���̵���
  public
    { Public declarations }
    procedure OpenVisaSign(vID:Integer);
    procedure OpenVisaSign_BuZiLiao(vID,vNumber:Integer);//�򿪲��ҵ�ָ���Ĳ����ϼ�¼ ����
  end;

var
  VisaSignQueryFrm: TVisaSignQueryFrm;

  procedure ExecVisaSignQueryFrm;
  procedure ExecVisaSignQueryFrmID(Avg_id:Integer);
  procedure ExecVisaSignQueryFrmID_BuZiLiao(Avg_id,Avgh_number:Integer;AfrmNoticePop: TfrmNoticePop);
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit, uVisaSignFrm, uSelectVisaSignFrm,
uVisaAppSelectGuestListFrm,ufrmAddGuest,
ufrmGroupEdit,ufrmApplicationEdit,ufrmVisaAppList;

var
  VisaSign:TVisaSignFrm;


procedure ExecVisaSignQueryFrm;
begin
  if VisaSignQueryFrm=nil then
    Application.CreateForm(TVisaSignQueryFrm,VisaSignQueryFrm);
  with VisaSignQueryFrm do
  begin
    Favg_id:=0;
    Favgh_number:=0;
    Show;
  end;
end;

procedure ExecVisaSignQueryFrmID(Avg_id:Integer);
begin
  if VisaSignQueryFrm=nil then
    Application.CreateForm(TVisaSignQueryFrm,VisaSignQueryFrm);
  with VisaSignQueryFrm do
  begin
    Favg_id:=Avg_id;
    Favgh_number:=0;
    OpenVisaSign(Favg_id);
    Show;
  end;
end;

procedure ExecVisaSignQueryFrmID_BuZiLiao(Avg_id,Avgh_number:Integer;AfrmNoticePop: TfrmNoticePop);
begin
  if VisaSignQueryFrm=nil then
    Application.CreateForm(TVisaSignQueryFrm,VisaSignQueryFrm);
  with VisaSignQueryFrm do
  begin
    Favg_id:=Avg_id;
    Favgh_number:=Avgh_number;
    if AfrmNoticePop<>nil then
      AfrmNoticePop.Close;
    OpenVisaSign_BuZiLiao(Favg_id,Favgh_number);//�򿪲��ҵ�ָ���Ĳ����ϼ�¼ ����
    Show;
  end;
end;

procedure TVisaSignQueryFrm.btn_admin_delete_orderClick(Sender: TObject);
var
  vinvoice:string;
  vavg_id,vreturn:Integer;
begin
  //inherited;  ����Աɾ������
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
    vinvoice:=FieldByName('avg_invoiceno').AsString;
  end;

  if MessageOfQuestion('��ȷ��Ҫɾ�� ������Ϊ['+vinvoice+']�Ķ�����')<>IDOK then  Exit;
  if MessageOfQuestion('ɾ������ִ��֮���޷���ѯ����������Ϣ����ȷ��Ҫ����ִ����')<>IDOK then  Exit;

  with sp_delete_order do
  begin
    if Active then Close;
    Parameters.ParamByName('@avg_id').Value:=vavg_id;
    ExecProc;
    vreturn:=Parameters.ParamByName('@RETURN_VALUE').Value;
    if vreturn=1 then
    begin
      MessageOfInformation('ɾ���ɹ���',False);
      OpenVisaSign(0);
    end;
  end;
end;

procedure TVisaSignQueryFrm.btn_admin_op_flgClick(Sender: TObject);
var
  vinvoice:string;
  vavg_id,vreturn:Integer;
  vavg_op_order_flg:Boolean; //�����Ƿ����ɲ��� 0��˳����� 1����˳����������ɲ�����
begin
  //inherited; ���øö��� ˳����� ���� ���ɲ���
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
    vinvoice:=FieldByName('avg_invoiceno').AsString;
    vavg_op_order_flg:=FieldByName('avg_op_order_flg').AsBoolean;
  end;
  if vavg_op_order_flg then
  begin
    if MessageOfQuestion('��ȷ��Ҫ�� ������Ϊ['+vinvoice+']�Ķ�������Ϊ[˳�����]��')<>IDOK then  Exit;
  end
  else
  begin
    if MessageOfQuestion('��ȷ��Ҫ�� ������Ϊ['+vinvoice+']�Ķ�������Ϊ[���ɲ���]��')<>IDOK then  Exit;
  end;
  with sp_op_order_flg do
  begin
    if Active then Close;
    Parameters.ParamByName('@avg_id').Value:=vavg_id;
    Parameters.ParamByName('@avg_op_order_flg').Value:= not vavg_op_order_flg;
    ExecProc;
    vreturn:=Parameters.ParamByName('@RETURN_VALUE').Value;
    if vreturn=1 then
    begin
      MessageOfInformation('���óɹ���',False);
      OpenVisaSign(vavg_id);
    end;
  end;
end;

procedure TVisaSignQueryFrm.btn_openClick(Sender: TObject);
var
  btn:TdxBarButton;
  vinvoice:string;
  vavg_id,vreturn:Integer;
begin
  //inherited;   ������ť�����¼�    max 18
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
    vinvoice:=FieldByName('avg_invoiceno').AsString;
  end;
  btn:=(sender as TdxBarButton);
  case btn.Tag of
    1:ExecVisaAppSelectGuestListFrm('���',vavg_id);
    2:ExecVisaAppSelectGuestListFrm('������',vavg_id);
    3:ExecVisaAppSelectGuestListFrm('ԤԼ',vavg_id);
    4:ExecVisaAppSelectGuestListFrm('����',vavg_id);
    5:ExecVisaAppSelectGuestListFrm('��ǩ',vavg_id);
    6:ExecVisaAppSelectGuestListFrm('ȡ��',vavg_id);
    7:ExecVisaAppSelectGuestListFrm('����',vavg_id);
    8:ExecVisaAppSelectGuestListFrm('�˸�',vavg_id);
    9:ExecVisaAppSelectGuestListFrm('��ֶ���',vavg_id);
    10:ExecfrmGroupEdit(vavg_id);//�޸Ķ���
    11:ExecfrmApplicationEdit(VisaSign.qry_ava.FieldByName('ava_id').AsInteger);//�޸Ŀ�����Ϣ
    //12�� ǩ֤���� �����¼�����
    //13:  ׷�� �����¼�����
    14:ExecVisaAppSelectGuestListFrm('��ǩ',vavg_id);
    15:ExecVisaAppSelectGuestListFrm('��ݲ���',vavg_id);

    16:ExecVisaAppSelectGuestListFrm('����',vavg_id);
    17:ExecVisaAppSelectGuestListFrm('��ӡ',vavg_id);
    18:ExecVisaAppSelectGuestListFrm('����',vavg_id);
    19:ExecVisaAppSelectGuestListFrm('��ǩ',vavg_id);
    20:ExecVisaAppSelectGuestListFrm('������',vavg_id);
  end;
  //VisaSign.Open(vavg_id);
  OpenVisaSign(vavg_id);
end;

procedure TVisaSignQueryFrm.btn_listClick(Sender: TObject);
var
  vavg_id:string;
begin
  //inherited; ǩ֤����
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=IntToStr(FieldByName('avg_id').AsInteger);
  end;
  if vavg_id<>'' then
    ExecfrmVisaAppList(vavg_id)
  else
    MessageOfInformation('��ѡ��ǩ֤���ϡ�',False);
end;

procedure TVisaSignQueryFrm.btn_locateClick(Sender: TObject);
var
  vid,vno:Integer;
  vname:string;
begin
  //inherited;    ���ҿ��� ��λ��������
  vname:=edt_name_ava.Text;
  if Trim(vname)='' then
  begin
    MessageOfInformation('��������ҿ�������.',false);
    Exit;
  end;

  with VisaSign do
  begin
    with qry_ava do
    begin
      if IsEmpty then
      begin
        vid:=0;
        MessageOfInformation('û���ҵ�ƥ��ļ�¼��',False);
        Exit;
      end
      else
      begin
        vid:=FieldByName('ava_id').AsInteger;
      end;
      if vname<>'' then
      begin
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
  end;

end;

procedure TVisaSignQueryFrm.btn_addClick(Sender: TObject);
begin
  //inherited; ׷�ӿ���
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if ExecfrmAddGuest(FieldByName('avg_id').AsInteger) then
    begin
      //VisaSign.Open(FieldByName('avg_id').AsInteger);
      OpenVisaSign(FieldByName('avg_id').AsInteger);
    end;
  end;
end;

procedure TVisaSignQueryFrm.Btn_QueryClick(Sender: TObject);
var
  SelectVisaSign:TSelectVisaSignFrm;
  vinvoice_no,vname_c,vpassport_no:string;
begin
  inherited;

  vinvoice_no:=StringReplace(Edt_InvoiceNo.Text,'''','',[rfReplaceAll]);
  vname_c:=StringReplace(edt_name_c.Text,'''','',[rfReplaceAll]);
  vpassport_no:=StringReplace(edt_passport_no.Text,'''','',[rfReplaceAll]);

  if (vinvoice_no='')and(vname_c='')and(vpassport_no='') then
  begin
    ShowMessage('�������ѯ����!');
    Exit;
  end;
  SelectVisaSign:=TSelectVisaSignFrm.Create(Application);
  try
    with SelectVisaSign do
    begin
      Qry_SelectVisaSign.Close;
      if vinvoice_no<>'' then
        Qry_SelectVisaSign.SQL.Add(' and avg_invoiceno='+QuotedStr(vinvoice_no));
      if (vname_c<>'')or(vpassport_no<>'') then
      begin
        Qry_SelectVisaSign.SQL.Add(' and avg_id in (select ava_id_avg from ava_visa_application with(nolock) ');
        if vname_c<>'' then
        begin
          Qry_SelectVisaSign.SQL.Add(' where ava_name_c like ''%'+vname_c+'%''  ');
          if vpassport_no<>'' then
            Qry_SelectVisaSign.SQL.Add(' and ava_PassPortNo='+QuotedStr(vpassport_no));
        end
        else
        begin
          Qry_SelectVisaSign.SQL.Add(' where ava_PassPortNo='+QuotedStr(vpassport_no));
        end;
        Qry_SelectVisaSign.SQL.Add(' )          ');
      end;

      Qry_SelectVisaSign.Open;
      if Qry_SelectVisaSign.IsEmpty then
      begin
        ShowMessage('����ض�����Ϣ!');
        Exit;
      end;
      if Qry_SelectVisaSign.RecordCount>1 then
      begin
        ShowModal;
        if ResultID=-1 then
        begin
          //Favg_id:=0;
          OpenVisaSign(0);
          Exit;
        end;
      end
      else
      begin
        ResultID:=Qry_SelectVisaSign.FieldValues['avg_id'];
      end;
      //Favg_id:=ResultID;
      OpenVisaSign(ResultID);
    end;
  finally
    SelectVisaSign.Free;
    SelectVisaSign:=nil;
  end;



end;

procedure TVisaSignQueryFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  VisaSignQueryFrm:=nil;
end;

procedure TVisaSignQueryFrm.FormCreate(Sender: TObject);
begin
  Favg_id:=0;
  inherited;
  //�Ƿ���ʾ����Աɾ����ť һ���������ɾ�����Ե��õ�
  if GUserID<>1 then
  begin
    btn_admin_delete_order.Visible:=ivNever;
    btn_admin_op_flg.Visible:=ivNever;
  end
  else
  begin
    btn_admin_delete_order.Visible:=ivAlways;
    btn_admin_op_flg.Visible:=ivAlways;
  end;

  VisaSign:=ExecVisaSignFrm(cxTabControl2);
end;

procedure TVisaSignQueryFrm.FormShow(Sender: TObject);
begin
  inherited;
  Btn_Query.Visible:=ivAlways;
end;

procedure TVisaSignQueryFrm.OpenVisaSign(vID: Integer);
begin
  VisaSign.Open(vID);
  set_btn_active;  //���ð�ť�Ŀ�������
end;

procedure TVisaSignQueryFrm.OpenVisaSign_BuZiLiao(vID,vNumber:Integer);//�򿪲��ҵ�ָ���Ĳ����ϼ�¼ ����
begin
  VisaSign.Open_BuZiLiao(vID,vNumber);
  set_btn_active;  //���ð�ť�Ŀ�������
end;

procedure TVisaSignQueryFrm.set_btn_active;  //���ð�ť�Ŀ�������   ��������open���̵���
var
  vcj:Boolean; //���
  vbzl:Boolean; //������
  vfy:Boolean; //����
  vcopy:Boolean; //��ӡ
  vyy:Boolean; //ԤԼ
  vzl:Boolean; //����
  vds:Boolean; //����
  vsq:Boolean; //��ǩ
  vlgbl:Boolean; //��ݲ���
  vlgsh:Boolean; //������
  vqh:Boolean; //ȡ��
  vjq:Boolean; //��ǩ
  vff:Boolean; //����
  vxq:Boolean; //��ǩ
begin
  vcj:=true; //���
  vbzl:=true; //������
  vfy:=true; //����
  vcopy:=true; //��ӡ
  vyy:=true; //ԤԼ
  vzl:=true; //����
  vds:=true; //����
  vsq:=true; //��ǩ
  vlgbl:=true; //��ݲ���
  vlgsh:=true; //������
  vqh:=true; //ȡ��
  vjq:=true; //��ǩ
  vff:=true; //����
  vxq:=true; //��ǩ

  if VisaSign.need_op_order then
  begin
    VisaSign.op_button_active(vcj, //���
                              vbzl, //������
                              vfy, //����
                              vcopy, //��ӡ
                              vyy, //ԤԼ
                              vzl, //����
                              vds, //����
                              vsq, //��ǩ
                              vlgbl, //��ݲ���
                              vlgsh, //������
                              vqh, //ȡ��
                              vjq, //��ǩ
                              vff, //����
                              vxq //��ǩ
                              );
  end;

  btn_open.Enabled:=vcj; //���
  btn_buziliao.Enabled:=vbzl; //������
  btn_fanyi.Enabled:=vfy; //����
  btn_fuyin.Enabled:=vcopy; //��ӡ
  btn_booking.Enabled:=vyy; //ԤԼ
  btn_zhengli.Enabled:=vzl; //����
  btn_before_send.Enabled:=vds; //����
  btn_send.Enabled:=vsq; //��ǩ
  btnLingGuanBuLiao.Enabled:= vlgbl; //��ݲ���
  btnLingGuanShenHe.Enabled:= vlgsh; //������
  btn_back.Enabled:=vqh; //ȡ��
  btn_refuse.Enabled:=vjq; //��ǩ
  btn_fafang.Enabled:=vff; //����
  btn_xiaoqian.Enabled:=vxq; //��ǩ
end;

end.
