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
    procedure set_btn_active;  //设置按钮的可用属性  供那两个open过程调用
  public
    { Public declarations }
    procedure OpenVisaSign(vID:Integer);
    procedure OpenVisaSign_BuZiLiao(vID,vNumber:Integer);//打开并找到指定的补资料记录 弹出
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
    OpenVisaSign_BuZiLiao(Favg_id,Favgh_number);//打开并找到指定的补资料记录 弹出
    Show;
  end;
end;

procedure TVisaSignQueryFrm.btn_admin_delete_orderClick(Sender: TObject);
var
  vinvoice:string;
  vavg_id,vreturn:Integer;
begin
  //inherited;  管理员删除订单
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
    vinvoice:=FieldByName('avg_invoiceno').AsString;
  end;

  if MessageOfQuestion('您确定要删除 受理编号为['+vinvoice+']的订单吗？')<>IDOK then  Exit;
  if MessageOfQuestion('删除操作执行之后将无法查询到本订单信息，您确认要继续执行吗？')<>IDOK then  Exit;

  with sp_delete_order do
  begin
    if Active then Close;
    Parameters.ParamByName('@avg_id').Value:=vavg_id;
    ExecProc;
    vreturn:=Parameters.ParamByName('@RETURN_VALUE').Value;
    if vreturn=1 then
    begin
      MessageOfInformation('删除成功！',False);
      OpenVisaSign(0);
    end;
  end;
end;

procedure TVisaSignQueryFrm.btn_admin_op_flgClick(Sender: TObject);
var
  vinvoice:string;
  vavg_id,vreturn:Integer;
  vavg_op_order_flg:Boolean; //订单是否自由操作 0按顺序操作 1不按顺序操作（自由操作）
begin
  //inherited; 设置该订单 顺序操作 还是 自由操作
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
    if MessageOfQuestion('您确定要把 受理编号为['+vinvoice+']的订单设置为[顺序操作]吗？')<>IDOK then  Exit;
  end
  else
  begin
    if MessageOfQuestion('您确定要把 受理编号为['+vinvoice+']的订单设置为[自由操作]吗？')<>IDOK then  Exit;
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
      MessageOfInformation('设置成功！',False);
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
  //inherited;   操作按钮集中事件    max 18
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
    vinvoice:=FieldByName('avg_invoiceno').AsString;
  end;
  btn:=(sender as TdxBarButton);
  case btn.Tag of
    1:ExecVisaAppSelectGuestListFrm('拆件',vavg_id);
    2:ExecVisaAppSelectGuestListFrm('补资料',vavg_id);
    3:ExecVisaAppSelectGuestListFrm('预约',vavg_id);
    4:ExecVisaAppSelectGuestListFrm('待送',vavg_id);
    5:ExecVisaAppSelectGuestListFrm('送签',vavg_id);
    6:ExecVisaAppSelectGuestListFrm('取回',vavg_id);
    7:ExecVisaAppSelectGuestListFrm('发放',vavg_id);
    8:ExecVisaAppSelectGuestListFrm('退改',vavg_id);
    9:ExecVisaAppSelectGuestListFrm('拆分订单',vavg_id);
    10:ExecfrmGroupEdit(vavg_id);//修改订单
    11:ExecfrmApplicationEdit(VisaSign.qry_ava.FieldByName('ava_id').AsInteger);//修改客人信息
    //12： 签证名单 其他事件处理
    //13:  追加 其他事件处理
    14:ExecVisaAppSelectGuestListFrm('拒签',vavg_id);
    15:ExecVisaAppSelectGuestListFrm('领馆补料',vavg_id);

    16:ExecVisaAppSelectGuestListFrm('翻译',vavg_id);
    17:ExecVisaAppSelectGuestListFrm('复印',vavg_id);
    18:ExecVisaAppSelectGuestListFrm('整理',vavg_id);
    19:ExecVisaAppSelectGuestListFrm('销签',vavg_id);
    20:ExecVisaAppSelectGuestListFrm('领馆审核',vavg_id);
  end;
  //VisaSign.Open(vavg_id);
  OpenVisaSign(vavg_id);
end;

procedure TVisaSignQueryFrm.btn_listClick(Sender: TObject);
var
  vavg_id:string;
begin
  //inherited; 签证名单
  with VisaSign.Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=IntToStr(FieldByName('avg_id').AsInteger);
  end;
  if vavg_id<>'' then
    ExecfrmVisaAppList(vavg_id)
  else
    MessageOfInformation('请选择签证资料。',False);
end;

procedure TVisaSignQueryFrm.btn_locateClick(Sender: TObject);
var
  vid,vno:Integer;
  vname:string;
begin
  //inherited;    查找客人 定位客人姓名
  vname:=edt_name_ava.Text;
  if Trim(vname)='' then
  begin
    MessageOfInformation('请输入查找客人条件.',false);
    Exit;
  end;

  with VisaSign do
  begin
    with qry_ava do
    begin
      if IsEmpty then
      begin
        vid:=0;
        MessageOfInformation('没有找到匹配的记录。',False);
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
          if vno>1 then  //不是从第一条开始的
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
          else    //从第一条开始
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
            MessageOfInformation('没有找到匹配的记录。',False);
        finally
          cxGrid1DBTableView1.EndUpdate;
        end;
      end;
    end;
  end;

end;

procedure TVisaSignQueryFrm.btn_addClick(Sender: TObject);
begin
  //inherited; 追加客人
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
    ShowMessage('请输入查询条件!');
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
        ShowMessage('无相关订单信息!');
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
  //是否显示管理员删除按钮 一般情况下是删除测试单用的
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
  set_btn_active;  //设置按钮的可用属性
end;

procedure TVisaSignQueryFrm.OpenVisaSign_BuZiLiao(vID,vNumber:Integer);//打开并找到指定的补资料记录 弹出
begin
  VisaSign.Open_BuZiLiao(vID,vNumber);
  set_btn_active;  //设置按钮的可用属性
end;

procedure TVisaSignQueryFrm.set_btn_active;  //设置按钮的可用属性   供那两个open过程调用
var
  vcj:Boolean; //拆件
  vbzl:Boolean; //补资料
  vfy:Boolean; //翻译
  vcopy:Boolean; //复印
  vyy:Boolean; //预约
  vzl:Boolean; //整理
  vds:Boolean; //待送
  vsq:Boolean; //送签
  vlgbl:Boolean; //领馆补料
  vlgsh:Boolean; //领馆审核
  vqh:Boolean; //取回
  vjq:Boolean; //拒签
  vff:Boolean; //发放
  vxq:Boolean; //销签
begin
  vcj:=true; //拆件
  vbzl:=true; //补资料
  vfy:=true; //翻译
  vcopy:=true; //复印
  vyy:=true; //预约
  vzl:=true; //整理
  vds:=true; //待送
  vsq:=true; //送签
  vlgbl:=true; //领馆补料
  vlgsh:=true; //领馆审核
  vqh:=true; //取回
  vjq:=true; //拒签
  vff:=true; //发放
  vxq:=true; //销签

  if VisaSign.need_op_order then
  begin
    VisaSign.op_button_active(vcj, //拆件
                              vbzl, //补资料
                              vfy, //翻译
                              vcopy, //复印
                              vyy, //预约
                              vzl, //整理
                              vds, //待送
                              vsq, //送签
                              vlgbl, //领馆补料
                              vlgsh, //领馆审核
                              vqh, //取回
                              vjq, //拒签
                              vff, //发放
                              vxq //销签
                              );
  end;

  btn_open.Enabled:=vcj; //拆件
  btn_buziliao.Enabled:=vbzl; //补资料
  btn_fanyi.Enabled:=vfy; //翻译
  btn_fuyin.Enabled:=vcopy; //复印
  btn_booking.Enabled:=vyy; //预约
  btn_zhengli.Enabled:=vzl; //整理
  btn_before_send.Enabled:=vds; //待送
  btn_send.Enabled:=vsq; //送签
  btnLingGuanBuLiao.Enabled:= vlgbl; //领馆补料
  btnLingGuanShenHe.Enabled:= vlgsh; //领馆审核
  btn_back.Enabled:=vqh; //取回
  btn_refuse.Enabled:=vjq; //拒签
  btn_fafang.Enabled:=vff; //发放
  btn_xiaoqian.Enabled:=vxq; //销签
end;

end.
