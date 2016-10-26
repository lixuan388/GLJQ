unit ufrmVisaAppList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel,  cxgridexportlink,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxDBLookupComboBox, cxImageComboBox;

type
  TfrmVisaAppList = class(TModuleMDIGirdFrm)
    sd_1: TSaveDialog;
    btn_excel: TdxBarButton;
    cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn;
    cxGrid1DBTableView1avg_source: TcxGridDBColumn;
    cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_type: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn;
    cxGrid1DBTableView1avg_remark: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_st: TcxGridDBColumn;
    cxGrid1DBTableView1avg_amount: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    cxGrid1DBTableView1avg_state: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_Meet: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_send: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_send: TcxGridDBColumn;
    ds_act: TDataSource;
    qry_act: TADOQuery;
    qry_avs_all: TADOQuery;
    ds_avs_all: TDataSource;
    qry_avt: TADOQuery;
    ds_avt: TDataSource;
    cxGrid1DBTableView1ava_idcard: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark1: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark2: TcxGridDBColumn;
    procedure btn_excelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Favg_id:string;
    { Private declarations }
    procedure getdata;
  public
    { Public declarations }
  end;

var
  frmVisaAppList: TfrmVisaAppList;
  procedure ExecfrmVisaAppList(Avg_id:string);
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

procedure ExecfrmVisaAppList(Avg_id:string);
begin
  //if Avg_id='' then Exit;
  if frmVisaAppList=nil then
    frmVisaAppList:=TfrmVisaAppList.Create(Application);
  with frmVisaAppList do
  begin
    Favg_id:=Avg_id;
    getdata;
    Show;
  end;
end;

procedure TfrmVisaAppList.btn_excelClick(Sender: TObject);
begin
  inherited;
  //inherited;    导出Excel
  if not Qry_Module.Active then Exit;
  if Qry_Module.IsEmpty then Exit;
  with sd_1 do
  begin
    filename:='签证名单'+FormatDateTime('mmddhhnnss',Now);
    if Execute then
    begin
      ExportGridToExcel(FileName,cxGrid1,True,True);
    end;
  end;
end;

procedure TfrmVisaAppList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmVisaAppList);
end;

procedure TfrmVisaAppList.FormCreate(Sender: TObject);
begin
  inherited;
  with qry_act do   //国家
  begin
    if Active then Close;
    Open;
  end;
  with qry_avs_all do   //办理种类
  begin
    if Active then Close;
    Open;
  end;
  with qry_avt do   //办理类型 对比差异用
  begin
    if Active then Close;
    Open;
  end;
end;

procedure TfrmVisaAppList.FormShow(Sender: TObject);
begin
  //inherited;
  Btn_Query.Visible:=ivNever;
  Btn_Insert.Visible:=ivNever;
  Btn_Edit.Visible:=ivNever;
  Btn_Save.Visible:=ivNever;
  Btn_Cancel.Visible:=ivNever;
  Btn_Delete.Visible:=ivNever;
  Btn_Approve.Visible:=ivNever;
end;

procedure TfrmVisaAppList.getdata;
begin
  //查找数据
  with Qry_Module do
  begin
    if Active then Close;
    if Favg_id='' then Exit;
    SQL.Text:='select avg_id,avg_user_enter,avg_date_enter,avg_state,'
             +' avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,'
             +' avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,'
             +' avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_remark,'
             +' avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_need3,avg_need4,avg_amount,'
             +' avg_Source_link,avg_Source_tel,avg_Source_addr,'
             +' ava_id,ava_index,ava_StatusType,'
             +' ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark,ava_idcard,ava_remark1,ava_remark2'
             +' from avg_visa_group with(nolock),ava_visa_application with(nolock) '
             +' where avg_id in ('+Favg_id+') '
             +' and avg_id=ava_id_avg '
             +' and ava_status<>''D'' '
             +' and ava_state<>''退团'' '
             +' order by avg_id,ava_index                                       ';
    Open;
  end;
end;

{
select avg_id,avg_user_enter,avg_date_enter,avg_state,
avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,
avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,
avg_id_act,avg_id_type,avg_id_avs,avg_name_aar,avg_id_aar,avg_remark,
avg_date_st,avg_date_re,avg_date_cancel,avg_need1,avg_need2,avg_need3,avg_need4,avg_amount,
avg_Source_link,avg_Source_tel,avg_Source_addr,
ava_id,ava_index,ava_StatusType,
ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark,ava_idcard,ava_remark1,ava_remark2
from avg_visa_group with(nolock),ava_visa_application with(nolock)
where avg_id in (90775,90776)
and avg_id=ava_id_avg
and ava_status<>'D'
and ava_state<>'退团'

order by avg_id,ava_index
}

end.
