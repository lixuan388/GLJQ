unit ufrmNotice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  dxBarExtItems, cxCheckBox, dxdbtrel;

type
  TfrmNotice = class(TModuleMDIGirdFrm)
    date_begin: TdxBarDateCombo;
    date_end: TdxBarDateCombo;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cb_type: TcxComboBox;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    cb_read_flg: TcxComboBox;
    cxGrid1DBTableView1cnt_id: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_user_ins: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_date_ins: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_user_lst: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_date_lst: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_status: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_read_flg: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_date_begin: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_date_end: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_id_aus_from: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_user_from: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_id_aus_to: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_user_to: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_type: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_type_name: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_id_scoure: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_remark: TcxGridDBColumn;
    cxGrid1DBTableView1cnt_note: TcxGridDBColumn;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    ltv_notice_type: TdxLookupTreeView;
    ds_notice_type: TDataSource;
    qry_notice_type: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Btn_InsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotice: TfrmNotice;
  procedure ExecfrmNotice;
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,ufrmNoticePop,ufrmNoticeNew;

procedure ExecfrmNotice;
begin
  if frmNotice=nil then
    frmNotice:=TfrmNotice.Create(Application);
  frmNotice.WindowState:=wsMaximized;
  frmNotice.Show;
end;

{select *
from cnt_notice with(nolock)
where cnt_status<>'D'
and cnt_date_begin between '2014-09-01' and '2014-09-30'}

procedure TfrmNotice.Btn_InsertClick(Sender: TObject);
begin
  //inherited; 弹出输入窗口
  ExecfrmNoticeNew;
end;

procedure TfrmNotice.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  if date_begin.Date>date_end.Date then
  begin
    MessageOfInformation('开始日期不能大于结束日期。',False);
    exit;
  end;

  with Qry_Module do
  begin
    if Active then close;
    sql.Text:='select * from cnt_notice with(nolock) where cnt_status<>''D'' '
             +' and cnt_date_begin between '''+FormatDateTime('yyyy-mm-dd',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',date_end.Date)+''' ';
    if cb_type.ItemIndex=0 then //收到
    begin
      sql.Text:=sql.Text+' and cnt_id_aus_to='+inttostr(GUserID);
      cxTabControl2.Properties.Tabs.Text:='我收到的通知';
    end;
    if cb_type.ItemIndex=1 then //发出
    begin
      sql.Text:=sql.Text+' and cnt_id_aus_from='+inttostr(GUserID);
      cxTabControl2.Properties.Tabs.Text:='我发出的通知';
    end;

    case cb_read_flg.ItemIndex of
    1:  sql.Text:=sql.Text+' and cnt_read_flg=0 ';   //未读
    2:  sql.Text:=sql.Text+' and cnt_read_flg=1 ';   //已读
    end;

    //类型
    if qry_notice_type.FieldByName('cntt_id').AsInteger>=0 then
      sql.Text:=sql.Text+' and cnt_type='+inttostr(qry_notice_type.FieldByName('cntt_id').AsInteger);

    Open;
  end;

end;

procedure TfrmNotice.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with Qry_Module do
  begin
    if not IsEmpty then
    begin
      ExecfrmNoticePop_read(FieldByName('cnt_id').AsInteger);
    end;
  end;
end;

procedure TfrmNotice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmNotice:=nil;
end;

procedure TfrmNotice.FormCreate(Sender: TObject);
begin
  inherited;
  with qry_notice_type do
  begin
    if Active then Close;
    Open;
    if not IsEmpty then
    begin
      First;
      ltv_notice_type.Text:=FieldByName('cntt_name').AsString;
    end;
  end;
  ltv_notice_type.TreeViewReadOnly:=True;
end;

procedure TfrmNotice.FormShow(Sender: TObject);
begin
  with qry_module do   //打开个人前五分通知
  begin
    if active then close;
    sql.Text:='select top 5 * '
             +' from cnt_notice with(nolock) '
             +' where cnt_status<>''D'' '
             +' and cnt_read_flg=0 '
             +' and getdate() between cnt_date_begin and cnt_date_end '
             +' and cnt_id_aus_to='+inttostr(guserid);
  end;

  inherited;

  //Btn_Query.Visible:=ivAlways;
  Btn_Cancel.Visible:=ivNever;
  Btn_Save.Visible:=ivNever;
       {
  Btn_Approve.Visible:=ivNever;
  Btn_Cancel.Visible:=ivNever;
  Btn_Delete.Visible:=ivNever;
  Btn_Edit.Visible:=ivNever;
  Btn_Insert.Visible:=ivNever;
  Btn_Save.Visible:=ivNever;        }

end;

end.
