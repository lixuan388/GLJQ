unit ufrmOrderHistoryQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel,cxgridexportlink,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxdbtrel,
  dxBarExtItems, cxDBLookupComboBox;

type
  TfrmOrderHistoryQuery = class(TModuleMDIGirdFrm)
    qry_ast: TADOQuery;
    ds_avt_select: TDataSource;
    qry_avt_select: TADOQuery;
    qry_area: TADOQuery;
    ds_area: TDataSource;
    ltv_area: TdxLookupTreeView;
    cb_date: TcxComboBox;
    edt_name: TcxTextEdit;
    cb_state: TcxComboBox;
    cb_source: TcxComboBox;
    edt_SourceName: TcxTextEdit;
    ltv_type: TdxLookupTreeView;
    sd_1: TSaveDialog;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    datebegin: TdxBarDateCombo;
    dateend: TdxBarDateCombo;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    dxBarStatic5: TdxBarStatic;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    dxBarStatic6: TdxBarStatic;
    dxBarControlContainerItem7: TdxBarControlContainerItem;
    btn_excel: TdxBarButton;
    cxGrid1DBTableView1avgh_Date_op: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_User_op: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_GuestName: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_type: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_remark: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_num: TcxGridDBColumn;
    cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn;
    cxGrid1DBTableView1avg_source: TcxGridDBColumn;
    cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_type: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn;
    cxGrid1DBTableView1avg_num: TcxGridDBColumn;
    cxGrid1DBTableView1avg_price: TcxGridDBColumn;
    cxGrid1DBTableView1avg_amount: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_st: TcxGridDBColumn;
    Qry_avs: TADOQuery;
    DS_avs: TDataSource;
    qry_act: TADOQuery;
    ds_act: TDataSource;
    qry_avt: TADOQuery;
    ds_avt: TDataSource;
    qry_avs_select: TADOQuery;
    ds_avs_select: TDataSource;
    ltv_avs: TdxLookupTreeView;
    dxBarStatic7: TdxBarStatic;
    dxBarControlContainerItem8: TdxBarControlContainerItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_excelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qry_areaAfterScroll(DataSet: TDataSet);
  private
    Farea_all:string;
    { Private declarations }
    procedure refresh_avs(act_id:Integer); //刷新签证种类条件选项
  public
    { Public declarations }
  end;

var
  frmOrderHistoryQuery: TfrmOrderHistoryQuery;
  procedure ExecfrmOrderHistoryQuery;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;
procedure ExecfrmOrderHistoryQuery;
begin
  if frmOrderHistoryQuery=nil then
    frmOrderHistoryQuery:=TfrmOrderHistoryQuery.Create(Application);
  frmOrderHistoryQuery.Show;
end;

procedure TfrmOrderHistoryQuery.refresh_avs(act_id:Integer); //刷新签证种类条件选项
begin
  with qry_avs_select do
  begin
    if not Active then Open;
    if not IsEmpty then
    begin
      Filtered:=False;
      Filter:='avs_id_act=-1';
      if (act_id>0) and (act_id<1000000) then
        Filter:='avs_id_act=-1 or avs_id_act='+inttostr(act_id);
      Filtered:=True;
      First;
      ltv_avs.Text:=FieldByName('avs_name').AsString;
    end
  end;
end;

procedure TfrmOrderHistoryQuery.btn_excelClick(Sender: TObject);
begin
  //inherited;    导出Excel
  if not Qry_Module.Active then Exit;
  if Qry_Module.IsEmpty then Exit;
  with sd_1 do
  begin
    filename:='订单报表'+FormatDateTime('mmddhhnnss',Now);
    if Execute then
    begin
      ExportGridToExcel(FileName,cxGrid1,True,True);
    end;
  end;
end;

procedure TfrmOrderHistoryQuery.Btn_QueryClick(Sender: TObject);
var
  vname:string;
begin
  inherited;   //查询
  if datebegin.Date>dateend.Date then
  begin
    MessageOfInformation('开始日期不能大于结束日期！',False);
    Exit;
  end;

  with Qry_Module do
  begin
    if Active then Close;
    SQL.Text:='select avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_type,avgh_remark,avgh_number,avgh_num,'
             +' avg_id,avg_invoiceno,avg_source,avg_SourceName,avg_id_act,avg_id_type,avg_id_avs,'
             +' avg_num,avg_price,avg_amount,avg_user_enter,avg_date_enter,avg_date_st'
             +' from avgh_visa_group_history with(nolock),'
             +' avg_visa_group with(nolock)'
             +' where avgh_id_avg=avg_id '
             +' and avgh_status<>''D'' '
             +' and avg_status<>''D'' ';

    case cb_date.ItemIndex of  //日期类型
    0:SQL.Add(' and avgh_Date_op ');   //操作日期0
    1:SQL.Add(' and avg_date_enter '); //入单日期1
    2:SQL.Add(' and avg_date_st ');    //出发日期2
    3:SQL.Add(' and avgh_date_meet '); //预约日期3
    4:SQL.Add(' and avgh_date_send '); //送签日期4
    5:SQL.Add(' and avgh_date_rtn ');  //出签日期5
    end;
    SQL.Text:=SQL.Text+' between '''+FormatDateTime('yyyy-mm-dd 00:00:00',datebegin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',dateend.Date)+''' ';

    if qry_area.FieldByName('_id').AsInteger>0 then   //区域
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //洲
        SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
      if qry_area.FieldByName('_level').AsInteger=2 then   //国家
        SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
    end;

    vname:=Replace_keyword(edt_name.Text);
    if vname<>'' then  //操作人
    begin
      SQL.Add(' and avgh_User_op ='+QuotedStr(vname) );
    end;
    //业务类型
    if cb_state.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_state.Text);
      SQL.Add(' and avgh_type = '''+vname+'''        ' );
    end;
    //客户类别
    if cb_source.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_source.Text);
      SQL.Add(' and avg_source ='+QuotedStr(vname) );
    end;
    //客户名称
    vname:=Replace_keyword(edt_SourceName.Text);
    if vname<>'' then
    begin
      SQL.Add(' and avg_sourceName like ''%'+vname+'%''        ' );
    end;
    //办理类型
    if not qry_avt_select.IsEmpty then
    begin
      if qry_avt_select.FieldByName('avt_id').AsInteger>0 then
      begin
        SQL.Add(' and avg_id_type ='+inttostr(qry_avt_select.FieldByName('avt_id').AsInteger) );
      end;
    end;
    //办理种类
    if not qry_avs_select.IsEmpty then
    begin
      if qry_avs_select.FieldByName('avs_id').AsInteger>0 then
      begin
        SQL.Add(' and avg_id_avs ='+inttostr(qry_avs_select.FieldByName('avs_id').AsInteger) );
      end;
    end;
    Open;
  end;


end;

procedure TfrmOrderHistoryQuery.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  //跳去报名表信息
  with Qry_Module do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    ExecVisaSignQueryFrmID(FieldByName('avg_id').AsInteger);
  end;
end;

procedure TfrmOrderHistoryQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmOrderHistoryQuery);
end;

procedure TfrmOrderHistoryQuery.FormCreate(Sender: TObject);
begin
  inherited;
  //获取操作选项
  CommonDM.GDB_op_view(cb_state.Properties.Items);
  cb_state.ItemIndex:=0;

  refresh_avs(-1); //刷新签证种类条件选项
end;

procedure TfrmOrderHistoryQuery.FormShow(Sender: TObject);
begin
  //inherited;   不自动打开查询

  with qry_ast do         //客户类型
  begin
    if Active then Close;
    Open;
    cb_source.Properties.Items.Clear;
    if IsEmpty then
    begin
      cb_source.Properties.Items.Add('-=全部=-');
    end
    else
    begin
      First;
      cb_source.Properties.Items.Add('-=全部=-');
      while not Eof do
      begin
        cb_source.Properties.Items.Add(FieldByName('ast_name').AsString);
        Next;
      end;
    end;
  end;
  cb_source.ItemIndex:=0;
  with qry_avt_select do
  begin
    if Active then Close;
    Open;
    if not IsEmpty then
    begin
      First;
      ltv_type.Text:=FieldByName('avt_Name').AsString;
    end;
  end;

  with Qry_avs do
  begin
    if Active then Close;
    Open;
  end;
  with qry_act do
  begin
    if Active then Close;
    Open;
  end;
  with Qry_avt do
  begin
    if Active then Close;
    Open;
  end;
  with qry_area do
  begin
    if Active then Close;
    Open;
    Farea_all:='';
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if Farea_all<>'' then
          Farea_all:=Farea_all+','+inttostr(FieldByName('_id').AsInteger)
        else
          Farea_all:=inttostr(FieldByName('_id').AsInteger);
        Next;
      end;
      First;
      ltv_area.Text:=FieldByName('_name').AsString;
    end;
  end;
  with Qry_avs do
  begin
    if Active then Close;
    Open;
  end;
  with qry_act do
  begin
    if Active then Close;
    Open;
  end;
  with Qry_avt do
  begin
    if Active then Close;
    Open;
  end;
end;

procedure TfrmOrderHistoryQuery.qry_areaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_area do
  begin
    if IsEmpty then
      refresh_avs(-1)
    else
      refresh_avs(qry_area.FieldByName('_id').AsInteger); //刷新签证种类条件选项
  end;
end;

end.
