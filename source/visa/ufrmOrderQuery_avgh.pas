unit ufrmOrderQuery_avgh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,
  Data.DB, Data.Win.ADODB, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxdbtrel, dxBarExtItems, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridLevel, cxGrid,cxgridexportlink,
  cxMemo, cxGroupBox, cxSplitter, cxDBLookupComboBox, cxCurrencyEdit;

type
  TfrmOrderQuery_avgh = class(TModuleMDIFrm)
    Qry_avs: TADOQuery;
    ds_avs_select: TDataSource;
    qry_avs_select: TADOQuery;
    ds_area: TDataSource;
    qry_area: TADOQuery;
    DS_avs: TDataSource;
    ds_act: TDataSource;
    ds_avt: TDataSource;
    qry_avt: TADOQuery;
    qry_act: TADOQuery;
    qry_ast: TADOQuery;
    ds_avt_select: TDataSource;
    qry_avt_select: TADOQuery;
    ltv_area: TdxLookupTreeView;
    cb_date: TcxComboBox;
    edt_name: TcxTextEdit;
    cb_state: TcxComboBox;
    cb_source: TcxComboBox;
    edt_SourceName: TcxTextEdit;
    ltv_type: TdxLookupTreeView;
    ltv_avs: TdxLookupTreeView;
    tc_remark: TcxTabControl;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    date_begin: TdxBarDateCombo;
    date_end: TdxBarDateCombo;
    grd_list_lv: TcxGridLevel;
    grd_list: TcxGrid;
    grd_list_btv: TcxGridBandedTableView;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    dxBarStatic5: TdxBarStatic;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    dxBarStatic6: TdxBarStatic;
    dxBarControlContainerItem7: TdxBarControlContainerItem;
    dxBarStatic7: TdxBarStatic;
    dxBarControlContainerItem8: TdxBarControlContainerItem;
    sd_1: TSaveDialog;
    btn_excel: TdxBarButton;
    cxSplitter1: TcxSplitter;
    gb_remark: TcxGroupBox;
    gb_list: TcxGroupBox;
    memo_remark: TcxMemo;
    memo_list: TcxMemo;
    grd_list_btv_avg_id: TcxGridBandedColumn;
    grd_list_btv_avg_invoiceno: TcxGridBandedColumn;
    grd_list_btv_avg_source: TcxGridBandedColumn;
    grd_list_btv_avg_sourceName: TcxGridBandedColumn;
    grd_list_btv_avg_id_act: TcxGridBandedColumn;
    grd_list_btv_avg_id_type: TcxGridBandedColumn;
    grd_list_btv_avg_id_avs: TcxGridBandedColumn;
    grd_list_btv_avg_user_enter: TcxGridBandedColumn;
    grd_list_btv_avg_date_enter: TcxGridBandedColumn;
    grd_list_btv_avg_num: TcxGridBandedColumn;
    grd_list_btv_avg_state: TcxGridBandedColumn;
    grd_list_btv_avg_amount: TcxGridBandedColumn;
    grd_list_btv_avg_price: TcxGridBandedColumn;
    grd_list_btv_avg_date_Meet: TcxGridBandedColumn;
    grd_list_btv_avg_date_rtn: TcxGridBandedColumn;
    grd_list_btv_avg_user_send: TcxGridBandedColumn;
    grd_list_btv_avg_date_st: TcxGridBandedColumn;
    grd_list_btv_avg_date_re: TcxGridBandedColumn;
    grd_list_btv_avg_date_cancel: TcxGridBandedColumn;
    grd_list_btv_avg_remark: TcxGridBandedColumn;
    grd_list_btv_avg_name_aar: TcxGridBandedColumn;
    grd_list_btv_list: TcxGridBandedColumn;
    grd_list_btv_avg_date_send: TcxGridBandedColumn;
    qry_avgh: TADOQuery;
    cxSplitter2: TcxSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_excelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_areaAfterScroll(DataSet: TDataSet);
    procedure Btn_QueryClick(Sender: TObject);
    procedure grd_list_btvFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure grd_list_btvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure grd_list_btvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    Farea_all:string;
    { Private declarations }
    procedure refresh_avs(act_id:Integer); //刷新签证种类条件选项
    procedure refresh_remark;  //刷新 XX信息

    procedure get_avgh(Avg_id:string);  //获取客人信息 数据端
    procedure grid_show;  //显示 列表行数据  包含get_ava_list 和 get_ava 过程
    function get_avgh_list(Avg_id:Integer):string; //单个订单显示用  必须先调用 get_ava 过程
  public
    { Public declarations }
  end;

var
  frmOrderQuery_avgh: TfrmOrderQuery_avgh;
  procedure ExecfrmOrderQuery_avgh;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;

procedure ExecfrmOrderQuery_avgh;
begin
  if frmOrderQuery_avgh=nil then
    frmOrderQuery_avgh:=TfrmOrderQuery_avgh.Create(Application);
  frmOrderQuery_avgh.Show;
end;

procedure TfrmOrderQuery_avgh.refresh_avs(act_id:Integer); //刷新签证种类条件选项
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

procedure TfrmOrderQuery_avgh.refresh_remark;  //刷新 XX信息
var
  i:Integer;
begin
  with grd_list_btv do
  begin
    //ShowMessage('A');
    if DataController.RecordCount=0 then
    begin
      memo_remark.Text:='';
      memo_list.Text:='';
      Exit;
    end;
    //ShowMessage('B');
    if Controller.SelectedRowCount<=0 then
    begin
      memo_remark.Text:='';
      memo_list.Text:='';
      Exit;
    end;
    //ShowMessage('C');
    i:=Controller.SelectedRows[0].RecordIndex;
    //ShowMessage('D');
    if DataController.GetValue(i,grd_list_btv_avg_remark.Index)=null then
      memo_remark.Text:=''
    else
      memo_remark.Text:=DataController.GetValue(i,grd_list_btv_avg_remark.Index);
    //ShowMessage('E');
    if DataController.GetValue(i,grd_list_btv_list.Index)=null then
      memo_list.Text:=''
    else
      memo_list.Text:=DataController.GetValue(i,grd_list_btv_list.Index);
  end;
end;

procedure TfrmOrderQuery_avgh.get_avgh(Avg_id:string);  //获取客人信息
begin
  with qry_avgh do
  begin
    if Active then Close;
    if Avg_id='' then Exit;
    SQL.Text:='select avgh_id,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'
             +' avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_meet,avgh_date_send,avgh_date_rtn'
             +' from avgh_visa_group_history with(nolock)'
             +' where avgh_status<>''D'' '
             +' and avgh_id_avg in ('+avg_id+')'
             +' order by avgh_id_avg,avgh_id  ';
    Open;
  end;
end;

procedure TfrmOrderQuery_avgh.grid_show;  //显示 列表行数据
var
  i:Integer;

  vbegin,vend:Integer;
  vavg_id:string;
begin
  grd_list_btv.BeginUpdate;
  try
    with grd_list_btv.DataController do
    begin
      //清空列表
      while RecordCount>0 do
        DeleteRecord(0);
      //写入数据
      if not Qry_Module.IsEmpty then
      begin
        Qry_Module.First;
        vbegin:=0;
        vend:=-1;
        while not Qry_Module.Eof do
        begin
          i:=AppendRecord;
          SetValue(i,grd_list_btv_avg_id.Index,Qry_Module.FieldByName('avg_id').AsInteger);
          SetValue(i,grd_list_btv_avg_invoiceno.Index,Qry_Module.FieldByName('avg_invoiceno').AsString);
          SetValue(i,grd_list_btv_avg_source.Index,Qry_Module.FieldByName('avg_source').AsString);
          SetValue(i,grd_list_btv_avg_sourceName.Index,Qry_Module.FieldByName('avg_sourceName').AsString);
          SetValue(i,grd_list_btv_avg_id_act.Index,Qry_Module.FieldByName('avg_id_act').AsInteger);

          SetValue(i,grd_list_btv_avg_id_type.Index,Qry_Module.FieldByName('avg_id_type').AsInteger);
          SetValue(i,grd_list_btv_avg_id_avs.Index,Qry_Module.FieldByName('avg_id_avs').AsInteger);
          SetValue(i,grd_list_btv_avg_user_enter.Index,Qry_Module.FieldByName('avg_user_enter').AsString);
          SetValue(i,grd_list_btv_avg_date_enter.Index,Qry_Module.FieldByName('avg_date_enter').AsVariant);
          SetValue(i,grd_list_btv_avg_num.Index,Qry_Module.FieldByName('avg_num').AsInteger);

          SetValue(i,grd_list_btv_avg_state.Index,Qry_Module.FieldByName('avg_state').AsString);
          SetValue(i,grd_list_btv_avg_amount.Index,Qry_Module.FieldByName('avg_amount').AsCurrency);
          SetValue(i,grd_list_btv_avg_price.Index,Qry_Module.FieldByName('avg_price').AsCurrency);
          SetValue(i,grd_list_btv_avg_date_Meet.Index,Qry_Module.FieldByName('avg_date_Meet').AsVariant);
          SetValue(i,grd_list_btv_avg_date_send.Index,Qry_Module.FieldByName('avg_date_send').AsVariant);

          SetValue(i,grd_list_btv_avg_date_rtn.Index,Qry_Module.FieldByName('avg_date_rtn').AsVariant);
          SetValue(i,grd_list_btv_avg_user_send.Index,Qry_Module.FieldByName('avg_user_send').AsString);
          SetValue(i,grd_list_btv_avg_date_st.Index,Qry_Module.FieldByName('avg_date_st').AsVariant);
          SetValue(i,grd_list_btv_avg_date_re.Index,Qry_Module.FieldByName('avg_date_re').AsVariant);
          SetValue(i,grd_list_btv_avg_date_cancel.Index,Qry_Module.FieldByName('avg_date_cancel').AsVariant);

          SetValue(i,grd_list_btv_avg_remark.Index,Qry_Module.FieldByName('avg_remark').AsString);
          SetValue(i,grd_list_btv_avg_name_aar.Index,Qry_Module.FieldByName('avg_name_aar').AsString);

          vend:=i;
          //每次超过百条订单记录就写一次名单信息
          if vbegin+100<vend then
          begin
            vavg_id:='';
            for i := vbegin to vend do
            begin
              if GetValue(i,grd_list_btv_avg_id.Index)<>null then
              begin
                if vavg_id<>'' then
                  vavg_id:=vavg_id+','+inttostr(GetValue(i,grd_list_btv_avg_id.Index))
                else
                  vavg_id:=inttostr(GetValue(i,grd_list_btv_avg_id.Index));
              end;
            end;
            get_avgh(vavg_id);  //获取客户信息
            for i := vbegin to vend do
            begin
              if GetValue(i,grd_list_btv_avg_id.Index)<>null then
              begin
                SetValue(i,grd_list_btv_list.Index,get_avgh_list(GetValue(i,grd_list_btv_avg_id.Index)));
              end;
            end;
            vbegin:=vend+1;
          end;
          Qry_Module.Next;
        end;
        //最后的名单信息一次过写入，如果有的话
        if vbegin<=vend then
        begin
          vavg_id:='';
          for i := vbegin to vend do
          begin
            if GetValue(i,grd_list_btv_avg_id.Index)<>null then
            begin
              if vavg_id<>'' then
                vavg_id:=vavg_id+','+inttostr(GetValue(i,grd_list_btv_avg_id.Index))
              else
                vavg_id:=inttostr(GetValue(i,grd_list_btv_avg_id.Index));
            end;
          end;
          get_avgh(vavg_id);  //获取客户信息
          for i := vbegin to vend do
          begin
            if GetValue(i,grd_list_btv_avg_id.Index)<>null then
            begin
              SetValue(i,grd_list_btv_list.Index,get_avgh_list(GetValue(i,grd_list_btv_avg_id.Index)));
            end;
          end;
          vbegin:=vend+1;
        end;
      end;
    end;
  finally
    grd_list_btv.EndUpdate;
  end;
end;

function TfrmOrderQuery_avgh.get_avgh_list(Avg_id:Integer):string; //单个订单显示用  必须先调用 get_ava 过程
var
  vfix_flg:Boolean;
begin
  Result:='';
  with qry_avgh do
  begin
    if IsEmpty then Exit;
    First;
    vfix_flg:=False;
    while not Eof do
    begin
      if FieldByName('avgh_id_avg').AsInteger=Avg_id then
      begin
        vfix_flg:=True;
        if Result<>'' then
          Result:=Result+' | '+fieldbyname('avgh_User_op').AsString
                              +fieldbyname('avgh_Date_op').AsString
                              +fieldbyname('avgh_type').AsString
                              +';客人：'+fieldbyname('avgh_GuestName').AsString
                              +'('+inttostr(fieldbyname('avgh_num').AsInteger)+')'
                              +'备注：'+fieldbyname('avgh_remark').AsString
        else
          Result:=fieldbyname('avgh_User_op').AsString
                +fieldbyname('avgh_Date_op').AsString
                +fieldbyname('avgh_type').AsString
                +';客人：'+fieldbyname('avgh_GuestName').AsString
                +'('+inttostr(fieldbyname('avgh_num').AsInteger)+')'
                +'备注：'+fieldbyname('avgh_remark').AsString;
      end;
      if vfix_flg and(FieldByName('avgh_id_avg').AsInteger<>Avg_id) then
        Exit;      //过了适合的客人名单 跳出过程
      Next;
    end;
  end;
end;


procedure TfrmOrderQuery_avgh.btn_excelClick(Sender: TObject);
begin
  //inherited;    导出Excel
  if grd_list_btv.DataController.RecordCount>0 then
  begin
    with sd_1 do
    begin
      filename:='订单报表-操作记录'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        ExportGridToExcel(FileName,grd_list,True,True);
      end;
    end;
  end;
end;


procedure TfrmOrderQuery_avgh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ltv_area.CloseUp(True);
  ltv_type.CloseUp(True);
  ltv_avs.CloseUp(True);
  inherited;
  FreeAndNil(frmOrderQuery_avgh);
end;

procedure TfrmOrderQuery_avgh.FormCreate(Sender: TObject);
begin
  inherited;
  //获取状态选项
  CommonDM.GDB_state_view(cb_state.Properties.Items);
  cb_state.ItemIndex:=0;
  refresh_avs(-1); //刷新签证种类条件选项


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
end;

procedure TfrmOrderQuery_avgh.FormShow(Sender: TObject);
begin
  //inherited;   不自动打开查询
  grd_list_btv.OptionsView.DataRowHeight:=32;
end;

procedure TfrmOrderQuery_avgh.grd_list_btvCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  //跳去报名表信息
  with grd_list_btv do
  begin
    if DataController.RecordCount=0 then Exit;
    if Controller.SelectedRowCount=0 then Exit;
    if DataController.GetValue(Controller.SelectedRows[0].RecordIndex,grd_list_btv_avg_id.Index)<>null then
    begin
      ExecVisaSignQueryFrmID(DataController.GetValue(Controller.SelectedRows[0].RecordIndex,grd_list_btv_avg_id.Index));
    end;
  end;
end;

procedure TfrmOrderQuery_avgh.grd_list_btvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfrmOrderQuery_avgh.grd_list_btvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  refresh_remark;  //刷新 XX信息
end;

procedure TfrmOrderQuery_avgh.qry_areaAfterScroll(DataSet: TDataSet);
begin
  //inherited;   改变区域选项
  with qry_area do
  begin
    if IsEmpty then
      refresh_avs(-1)
    else
      refresh_avs(qry_area.FieldByName('_id').AsInteger); //刷新签证种类条件选项
  end;
end;

{select avg_id,avg_invoiceno,avg_source,avg_sourceName,avg_id_act,avg_id_type,avg_id_avs,
avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_price,
avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_st,avg_date_re,avg_date_cancel,
avg_remark,avg_id_aar,avg_name_aar
from avg_visa_group with(nolock)
where avg_status<>'D'
and avg_id=-1}

procedure TfrmOrderQuery_avgh.Btn_QueryClick(Sender: TObject);
var
  vname:string;
  vavg_id:string;
begin
  inherited;//查询
  if date_begin.Date>date_end.Date then
  begin
    MessageOfInformation('开始日期不能大于结束日期！',False);
    Exit;
  end;
  if date_end.Date>date_begin.Date+40 then
  begin
    if MessageOfQuestion('查询日期范围超过40日，响应速度可能变慢。您确定要继续查询吗？')<>idok then
      Exit;
  end;

  with Qry_Module do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_invoiceno,avg_source,avg_sourceName,avg_id_act,avg_id_type,avg_id_avs,'
             +' avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_price,'
             +' avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_st,avg_date_re,avg_date_cancel,'
             +' avg_remark,avg_id_aar,avg_name_aar'
             +' from avg_visa_group with(nolock) where avg_status<>''D'' and ';

    case cb_date.ItemIndex of  //日期
    0:SQL.Add(' avg_date_enter ');//入单日期0
    1:SQL.Add(' avg_date_Meet ');//预约日期1
    2:SQL.Add(' avg_date_send ');//送签日期2
    3:SQL.Add(' avg_date_rtn ');//出签日期3
    4:SQL.Add(' avg_date_cancel ');//销签日期4
    5:SQL.Add(' avg_date_st ');//出发日期5
    6:SQL.Add(' avg_date_re ');//返程日期6
    end;
    SQL.Text:=SQL.Text+' between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' ';

    if qry_area.FieldByName('_id').AsInteger>0 then   //区域
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //洲
        SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
      if qry_area.FieldByName('_level').AsInteger=2 then   //国家
        SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
    end;

    vname:=Replace_keyword(edt_name.Text);
    if vname<>'' then  //入单人
    begin
      SQL.Add(' and avg_user_enter ='+QuotedStr(vname) );
    end;
    //状态
    if cb_state.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_state.Text);
      SQL.Add(' and avg_state like ''%'+vname+'%''        ' );
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
    vavg_id:='';
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if vavg_id<>'' then
          vavg_id:=vavg_id+','+inttostr(FieldByName('avg_id').AsInteger)
        else
          vavg_id:=inttostr(FieldByName('avg_id').AsInteger);
        Next;
      end;
    end;
    //ShowMessage('1');
    grid_show;  //显示 列表行数据
    //ShowMessage('2');
    refresh_remark;  //刷新 XX信息
  end;
end;

end.
