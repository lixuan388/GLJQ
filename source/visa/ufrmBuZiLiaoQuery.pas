unit ufrmBuZiLiaoQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel,cxgridexportlink,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxBarExtItems, dxdbtrel, cxContainer, cxCheckBox, cxTextEdit,
  cxImageComboBox, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit;

type
  TfrmBuZiLiaoQuery = class(TModuleMDIGirdFrm)
    qry_area: TADOQuery;
    ds_area: TDataSource;
    sd_1: TSaveDialog;
    ltv_area: TdxLookupTreeView;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    date_begin: TdxBarDateCombo;
    date_end: TdxBarDateCombo;
    ds_avt: TDataSource;
    ds_act: TDataSource;
    DS_avs: TDataSource;
    qry_avt: TADOQuery;
    qry_act: TADOQuery;
    Qry_avs: TADOQuery;
    btn_excel: TdxBarButton;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    edt_enter: TcxTextEdit;
    edt_op: TcxTextEdit;
    cb_enter: TcxCheckBox;
    cb_op: TcxCheckBox;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    cxGrid1DBTableView1avg_id: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_type: TcxGridDBColumn;
    cxGrid1DBTableView1avg_state: TcxGridDBColumn;
    cxGrid1DBTableView1avg_source: TcxGridDBColumn;
    cxGrid1DBTableView1avg_num: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_send: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_send: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn;
    cxGrid1DBTableView1avg_amount: TcxGridDBColumn;
    cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn;
    cxGrid1DBTableView1avg_remark: TcxGridDBColumn;
    cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn;
    cxGrid1DBTableView1avg_price: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_id: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_Date_op: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_User_op: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_GuestName: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_type: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_remark: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_number: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_num: TcxGridDBColumn;
    cxGrid1DBTableView1avgh_id_aus_op: TcxGridDBColumn;
    qry_avb: TADOQuery;
    ds_avb: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2avb_id: TcxGridDBColumn;
    cxGrid1DBTableView2avb_user_ins: TcxGridDBColumn;
    cxGrid1DBTableView2avb_date_ins: TcxGridDBColumn;
    cxGrid1DBTableView2avb_user_lst: TcxGridDBColumn;
    cxGrid1DBTableView2avb_date_lst: TcxGridDBColumn;
    cxGrid1DBTableView2avb_status: TcxGridDBColumn;
    cxGrid1DBTableView2avb_number_avgh: TcxGridDBColumn;
    cxGrid1DBTableView2avb_id_ava: TcxGridDBColumn;
    cxGrid1DBTableView2avb_name_ava: TcxGridDBColumn;
    cxGrid1DBTableView2avb_id_avi: TcxGridDBColumn;
    cxGrid1DBTableView2avb_name_avi: TcxGridDBColumn;
    cxGrid1DBTableView2avb_remark: TcxGridDBColumn;
    cxGrid1DBTableView2avb_state: TcxGridDBColumn;
    cxGrid1DBTableView2avb_note: TcxGridDBColumn;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    edt_SourceName: TcxTextEdit;
    dxBarStatic5: TdxBarStatic;
    dxBarControlContainerItem7: TdxBarControlContainerItem;
    cb_avb_state: TcxComboBox;
    ds_bzl: TDataSource;
    qry_bzl: TADOQuery;
    dxBarStatic6: TdxBarStatic;
    dxBarControlContainerItem8: TdxBarControlContainerItem;
    cb_show: TcxComboBox;
    grd_list_tv: TcxGridDBTableView;
    grd_list_lv: TcxGridLevel;
    grd_list: TcxGrid;
    grd_list_tvavg_id: TcxGridDBColumn;
    grd_list_tvavg_id_act: TcxGridDBColumn;
    grd_list_tvavg_id_type: TcxGridDBColumn;
    grd_list_tvavg_state: TcxGridDBColumn;
    grd_list_tvavg_source: TcxGridDBColumn;
    grd_list_tvavg_num: TcxGridDBColumn;
    grd_list_tvavg_user_enter: TcxGridDBColumn;
    grd_list_tvavg_date_enter: TcxGridDBColumn;
    grd_list_tvavg_user_send: TcxGridDBColumn;
    grd_list_tvavg_date_send: TcxGridDBColumn;
    grd_list_tvavg_date_rtn: TcxGridDBColumn;
    grd_list_tvavg_amount: TcxGridDBColumn;
    grd_list_tvavg_invoiceno: TcxGridDBColumn;
    grd_list_tvavg_remark: TcxGridDBColumn;
    grd_list_tvavg_SourceName: TcxGridDBColumn;
    grd_list_tvavg_id_avs: TcxGridDBColumn;
    grd_list_tvavg_price: TcxGridDBColumn;
    grd_list_tvavgh_id: TcxGridDBColumn;
    grd_list_tvavgh_Date_op: TcxGridDBColumn;
    grd_list_tvavgh_User_op: TcxGridDBColumn;
    grd_list_tvavgh_GuestName: TcxGridDBColumn;
    grd_list_tvavgh_type: TcxGridDBColumn;
    grd_list_tvavgh_remark: TcxGridDBColumn;
    grd_list_tvavgh_number: TcxGridDBColumn;
    grd_list_tvavgh_num: TcxGridDBColumn;
    grd_list_tvavgh_id_aus_op: TcxGridDBColumn;
    grd_list_tvavb_id: TcxGridDBColumn;
    grd_list_tvavb_name_ava: TcxGridDBColumn;
    grd_list_tvavb_name_avi: TcxGridDBColumn;
    grd_list_tvavb_remark: TcxGridDBColumn;
    grd_list_tvavb_state: TcxGridDBColumn;
    grd_list_tvavb_note: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure cb_enterPropertiesEditValueChanged(Sender: TObject);
    procedure cb_opPropertiesEditValueChanged(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_showPropertiesChange(Sender: TObject);
  private
    Farea_all:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuZiLiaoQuery: TfrmBuZiLiaoQuery;
  procedure ExecfrmBuZiLiaoQuery;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;
procedure ExecfrmBuZiLiaoQuery;
begin
  if frmBuZiLiaoQuery=nil then
    frmBuZiLiaoQuery:=TfrmBuZiLiaoQuery.Create(Application);
  frmBuZiLiaoQuery.Show;
end;



procedure TfrmBuZiLiaoQuery.Btn_EditClick(Sender: TObject);
var
  v_id_scoure,v_number_avgh:Integer;
begin
  //inherited;
  if cxGrid1.Visible then  //补资料记录(树)
  begin
    with Qry_Module do
    begin
      if not Active then Exit;
      if IsEmpty then Exit;
      v_id_scoure:=FieldByName('avg_id').AsInteger;
      v_number_avgh:=FieldByName('avgh_number').AsInteger;
      ExecVisaSignQueryFrmID_BuZiLiao(v_id_scoure,v_number_avgh,nil);  //跳去订单查询 并弹出补资料框
    end;
  end;
  if grd_list.Visible then  //补资料明细(表)
  begin
    with qry_bzl do
    begin
      if not Active then Exit;
      if IsEmpty then Exit;
      v_id_scoure:=FieldByName('avg_id').AsInteger;
      v_number_avgh:=FieldByName('avgh_number').AsInteger;
      ExecVisaSignQueryFrmID_BuZiLiao(v_id_scoure,v_number_avgh,nil);  //跳去订单查询 并弹出补资料框
    end;
  end;
end;

procedure TfrmBuZiLiaoQuery.btn_excelClick(Sender: TObject);
begin
  //inherited;    导出Excel
  if cxGrid1.Visible then
  begin
    if not Qry_Module.Active then
    begin
      MessageOfInformation('没有可导出的记录.',False);
      Exit;
    end;
    if Qry_Module.IsEmpty then
    begin
      MessageOfInformation('没有可导出的数据记录.',False);
      Exit;
    end;
    with sd_1 do
    begin
      filename:='补资料记录(树)'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        ExportGridToExcel(FileName,cxGrid1,True,True);
      end;
    end;
  end;
  if grd_list.Visible then
  begin
    if not qry_bzl.Active then
    begin
      MessageOfInformation('没有可导出的明细.',False);
      Exit;
    end;
    if qry_bzl.IsEmpty then
    begin
      MessageOfInformation('没有可导出的数据明细.',False);
      Exit;
    end;
    with sd_1 do
    begin
      filename:='补资料明细(表)'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        ExportGridToExcel(FileName,grd_list,True,True);
      end;
    end;
  end;
end;

procedure TfrmBuZiLiaoQuery.Btn_QueryClick(Sender: TObject);
var
  vname:string;
begin
  inherited;//查询
  if date_begin.Date>date_end.Date then
  begin
    MessageOfInformation('开始日期不能大于结束日期！',False);
    Exit;
  end;

  if cb_show.ItemIndex=0 then   //表格
  begin
    with qry_avb do
    begin
      if Active then Close;
    end;
    with Qry_Module do
    begin
      if Active then Close;
    end;
    with qry_bzl do
    begin
      if Active then Close;
      SQL.Text:='select avg_id,avg_id_act,avg_id_type,avg_state,avg_source,avg_num,avg_user_enter,avg_date_enter,'
               +' avg_user_send,avg_date_send,avg_date_rtn,avg_amount,avg_invoiceno,avg_remark,avg_SourceName,avg_id_avs,avg_price,'
               +' avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op,'
               +' avb_id,avb_name_ava,avb_name_avi,avb_remark,avb_state,avb_note'
               +' from avg_visa_group with(nolock),'
               +'      avgh_visa_group_history with(nolock),'
               +'      avb_visa_buziliao with(nolock)'
               +' where avg_id=avgh_id_avg'
               +' and avg_status<>''D'' '
               +' and avgh_status<>''D'' '
               +' and avb_status<>''D'' '
               +' and avgh_type=''补资料'' '
               +' and avgh_number=avb_number_avgh '
               +' and avgh_date_op between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' ';
      if qry_area.FieldByName('_id').AsInteger>0 then   //区域
      begin
        if qry_area.FieldByName('_level').AsInteger=1 then   //洲
          SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
        if qry_area.FieldByName('_level').AsInteger=2 then   //国家
          SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
      end;

      vname:=Replace_keyword(edt_enter.Text);
      if vname<>'' then  //入单人员
      begin
        SQL.Add(' and avg_user_enter = '''+vname+''' ');
      end;

      vname:=Replace_keyword(edt_op.Text);
      if vname<>'' then  //操作人员
      begin
        SQL.Add(' and avgh_user_op = '''+vname+''' ');
      end;

      vname:=Replace_keyword(edt_SourceName.Text);
      if vname<>'' then  //客户名称
      begin
        SQL.Add(' and avg_SourceName like '''+vname+'%'' ');
      end;

      if cb_avb_state.ItemIndex>0 then  //补资料明细状态
      begin
        SQL.Add(' and avb_state='+inttostr(cb_avb_state.ItemIndex-1));
      end;
      SQL.Add(' order by avg_id,avgh_id             ');
      Open;
    end;
  end;

  if cb_show.ItemIndex=1 then   //树型
  begin
    with qry_bzl do
    begin
      if Active then Close;
    end;
    with qry_avb do
    begin
      if Active then Close;
      SQL.Text:='select *'
               +' from avb_visa_buziliao with(nolock)'
               +' where avb_status<>''D'' '
               +' and avb_date_ins between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' '
               +' order by avb_number_avgh';
      Open;
    end;
    with Qry_Module do
    begin
      if Active then Close;
      SQL.Text:='select avg_id,avg_id_act,avg_id_type,avg_state,avg_source,avg_num,avg_user_enter,avg_date_enter, '
               +' avg_user_send,avg_date_send,avg_date_rtn,avg_amount,avg_invoiceno,avg_remark,avg_SourceName,avg_id_avs,avg_price, '
               +' avgh_id,avgh_Date_op,avgh_User_op,avgh_GuestName,avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op '
               +' from avg_visa_group with(nolock), '
               +'      avgh_visa_group_history with(nolock) '
               +' where avg_id=avgh_id_avg '
               +' and avg_status<>''D'' '
               +' and avgh_status<>''D'' '
               +' and avgh_type=''补资料'' '
               +' and avgh_date_op between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' ';

      if qry_area.FieldByName('_id').AsInteger>0 then   //区域
      begin
        if qry_area.FieldByName('_level').AsInteger=1 then   //洲
          SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
        if qry_area.FieldByName('_level').AsInteger=2 then   //国家
          SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
      end;

      vname:=Replace_keyword(edt_enter.Text);
      if vname<>'' then  //入单人员
      begin
        SQL.Add(' and avg_user_enter = '''+vname+''' ');
      end;

      vname:=Replace_keyword(edt_op.Text);
      if vname<>'' then  //操作人员
      begin
        SQL.Add(' and avgh_user_op = '''+vname+''' ');
      end;

      vname:=Replace_keyword(edt_SourceName.Text);
      if vname<>'' then  //客户名称
      begin
        SQL.Add(' and avg_SourceName like '''+vname+'%'' ');
      end;
      Open;
    end;
  end;
end;

procedure TfrmBuZiLiaoQuery.cb_enterPropertiesEditValueChanged(Sender: TObject);
begin
  //inherited; 本人录入的
  if cb_enter.Checked then
  begin
    edt_enter.Text:=GUserName;
    edt_enter.Enabled:=False;
  end
  else
  begin
    edt_enter.Text:='';
    edt_enter.Enabled:=True;
  end;
end;

procedure TfrmBuZiLiaoQuery.cb_opPropertiesEditValueChanged(Sender: TObject);
begin
  //inherited; 本人操作的
  if cb_op.Checked then
  begin
    edt_op.Text:=GUserName;
    edt_op.Enabled:=False;
  end
  else
  begin
    edt_op.Text:='';
    edt_op.Enabled:=True;
  end;
end;

procedure TfrmBuZiLiaoQuery.cb_showPropertiesChange(Sender: TObject);
begin
  inherited;
  if cb_show.ItemIndex=0 then  //表格
  begin
    cxGrid1.Visible:=False;
    grd_list.Visible:=True;
    cxTabControl2.Tabs.Text:='补资料明细(表格)';
    cb_avb_state.Enabled:=True;
  end;
  if cb_show.ItemIndex=1 then  //树型
  begin
    grd_list.Visible:=False;
    cxGrid1.Visible:=True;
    cxTabControl2.Tabs.Text:='补资料记录(树型)';
    cb_avb_state.ItemIndex:=0;
    cb_avb_state.Enabled:=False;
  end;
end;

procedure TfrmBuZiLiaoQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmBuZiLiaoQuery);
end;

procedure TfrmBuZiLiaoQuery.FormCreate(Sender: TObject);
begin
  inherited;
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
end;

procedure TfrmBuZiLiaoQuery.FormShow(Sender: TObject);
begin
  inherited;
  Btn_Save.Visible:=ivNever;
  Btn_Cancel.Visible:=ivNever;
end;

end.
