unit ufrmOrderQuery_ava;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,
  Data.DB, Data.Win.ADODB, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxdbtrel, dxBarExtItems, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridLevel, cxGrid,cxgridexportlink,
  cxMemo, cxGroupBox, cxSplitter, cxDBLookupComboBox;

type
  TfrmOrderQuery_ava = class(TModuleMDIFrm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_excelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qry_areaAfterScroll(DataSet: TDataSet);
    procedure Btn_QueryClick(Sender: TObject);
    procedure grd_list_btvFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    Farea_all:string;
    { Private declarations }
    procedure refresh_avs(act_id:Integer); //ˢ��ǩ֤��������ѡ��
    procedure refresh_remark;  //ˢ�� XX��Ϣ
  public
    { Public declarations }
  end;

var
  frmOrderQuery_ava: TfrmOrderQuery_ava;
  procedure ExecfrmOrderQuery_ava;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;

procedure ExecfrmOrderQuery_ava;
begin
  if frmOrderQuery_ava=nil then
    frmOrderQuery_ava:=TfrmOrderQuery_ava.Create(Application);
  frmOrderQuery_ava.Show;
end;

procedure TfrmOrderQuery_ava.refresh_avs(act_id:Integer); //ˢ��ǩ֤��������ѡ��
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

procedure TfrmOrderQuery_ava.refresh_remark;  //ˢ�� XX��Ϣ
var
  i:Integer;
begin
  with grd_list_btv do
  begin
    if DataController.RecordCount=0 then
    begin
      memo_remark.Text:='';
      memo_list.Text:='';
      Exit;
    end;
    if Controller.SelectedRowCount<=0 then
      ViewData.Records[0].Selected:=True;
    i:=Controller.SelectedRows[0].RecordIndex;
    if DataController.GetValue(i,grd_list_btv_avg_remark.Index)=null then
      memo_remark.Text:=''
    else
      memo_remark.Text:=DataController.GetValue(i,grd_list_btv_avg_remark.Index);
    if DataController.GetValue(i,grd_list_btv_list.Index)=null then
      memo_list.Text:=''
    else
      memo_list.Text:=DataController.GetValue(i,grd_list_btv_list.Index);
  end;
end;

procedure TfrmOrderQuery_ava.btn_excelClick(Sender: TObject);
begin
  //inherited;    ����Excel
  if grd_list_btv.DataController.RecordCount>0 then
  begin
    with sd_1 do
    begin
      filename:='��������-������Ϣ'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        ExportGridToExcel(FileName,grd_list,True,True);
      end;
    end;
  end;
end;


procedure TfrmOrderQuery_ava.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ltv_area.CloseUp(True);
  ltv_type.CloseUp(True);
  ltv_avs.CloseUp(True);
  inherited;
  FreeAndNil(frmOrderQuery_ava);
end;

procedure TfrmOrderQuery_ava.FormCreate(Sender: TObject);
begin
  inherited;
  //��ȡ״̬ѡ��
  CommonDM.GDB_state_view(cb_state.Properties.Items);
  cb_state.ItemIndex:=0;
  refresh_avs(-1); //ˢ��ǩ֤��������ѡ��


  with qry_ast do         //�ͻ�����
  begin
    if Active then Close;
    Open;
    cb_source.Properties.Items.Clear;
    if IsEmpty then
    begin
      cb_source.Properties.Items.Add('-=ȫ��=-');
    end
    else
    begin
      First;
      cb_source.Properties.Items.Add('-=ȫ��=-');
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

procedure TfrmOrderQuery_ava.FormShow(Sender: TObject);
begin
  //inherited;   ���Զ��򿪲�ѯ

end;

procedure TfrmOrderQuery_ava.grd_list_btvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  refresh_remark;  //ˢ�� XX��Ϣ
end;

procedure TfrmOrderQuery_ava.qry_areaAfterScroll(DataSet: TDataSet);
begin
  //inherited;   �ı�����ѡ��
  with qry_area do
  begin
    if IsEmpty then
      refresh_avs(-1)
    else
      refresh_avs(qry_area.FieldByName('_id').AsInteger); //ˢ��ǩ֤��������ѡ��
  end;
end;

{select avg_id,avg_invoiceno,avg_source,avg_sourceName,avg_id_act,avg_id_type,avg_id_avs,
avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_price,
avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_st,avg_date_re,avg_date_cancel,
avg_remark,avg_id_aar,avg_name_aar
from avg_visa_group with(nolock)
where avg_status<>'D'
and avg_id=-1}

procedure TfrmOrderQuery_ava.Btn_QueryClick(Sender: TObject);
var
  vname:string;
begin
  inherited;//��ѯ
  if date_begin.Date>date_end.Date then
  begin
    MessageOfInformation('��ʼ���ڲ��ܴ��ڽ������ڣ�',False);
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

    case cb_date.ItemIndex of  //����
    0:SQL.Add(' avg_date_enter ');//�뵥����0
    1:SQL.Add(' avg_date_Meet ');//ԤԼ����1
    2:SQL.Add(' avg_date_send ');//��ǩ����2
    3:SQL.Add(' avg_date_rtn ');//��ǩ����3
    4:SQL.Add(' avg_date_cancel ');//��ǩ����4
    5:SQL.Add(' avg_date_st ');//��������5
    6:SQL.Add(' avg_date_re ');//��������6
    end;
    SQL.Text:=SQL.Text+' between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' ';

    if qry_area.FieldByName('_id').AsInteger>0 then   //����
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //��
        SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
      if qry_area.FieldByName('_level').AsInteger=2 then   //����
        SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
    end;

    vname:=Replace_keyword(edt_name.Text);
    if vname<>'' then  //�뵥��
    begin
      SQL.Add(' and avg_user_enter ='+QuotedStr(vname) );
    end;
    //״̬
    if cb_state.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_state.Text);
      SQL.Add(' and avg_state like ''%'+vname+'%''        ' );
    end;
    //�ͻ����
    if cb_source.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_source.Text);
      SQL.Add(' and avg_source ='+QuotedStr(vname) );
    end;
    //�ͻ�����
    vname:=Replace_keyword(edt_SourceName.Text);
    if vname<>'' then
    begin
      SQL.Add(' and avg_sourceName like ''%'+vname+'%''        ' );
    end;
    //��������
    if not qry_avt_select.IsEmpty then
    begin
      if qry_avt_select.FieldByName('avt_id').AsInteger>0 then
      begin
        SQL.Add(' and avg_id_type ='+inttostr(qry_avt_select.FieldByName('avt_id').AsInteger) );
      end;
    end;
    //��������
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

end.
