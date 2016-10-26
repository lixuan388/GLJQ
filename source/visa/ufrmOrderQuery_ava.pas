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
  cxMemo, cxGroupBox, cxSplitter, cxDBLookupComboBox, cxCurrencyEdit;

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
    qry_ava: TADOQuery;
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
    procedure refresh_avs(act_id:Integer); //ˢ��ǩ֤��������ѡ��
    procedure refresh_remark;  //ˢ�� XX��Ϣ

    procedure get_ava(Avg_id:string);  //��ȡ������Ϣ ���ݶ�
    procedure grid_show;  //��ʾ �б�������  ����get_ava_list �� get_ava ����
    function get_ava_list(Avg_id:Integer):string; //����������ʾ��  �����ȵ��� get_ava ����
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

procedure TfrmOrderQuery_ava.get_ava(Avg_id:string);  //��ȡ������Ϣ
begin
  with qry_ava do
  begin
    if Active then Close;
    if Avg_id='' then Exit;
    SQL.Text:='select ava_id,ava_id_avg,ava_name_c,ava_PassPortNo,ava_StatusType,ava_Remark,ava_index'
             +' from ava_visa_application with(nolock)'
             +' where ava_status<>''D'' '
             +' and ava_state<>''����'' '
             +' and ava_id_avg in ('+avg_id+')'
             +' order by ava_id_avg,ava_index ';
    Open;
  end;
end;

procedure TfrmOrderQuery_ava.grid_show;  //��ʾ �б�������
var
  i:Integer;

  vbegin,vend:Integer;
  vavg_id:string;
begin
  grd_list_btv.BeginUpdate;
  try
    with grd_list_btv.DataController do
    begin
      //����б�
      while RecordCount>0 do
        DeleteRecord(0);
      //д������
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
          //ÿ�γ�������������¼��дһ��������Ϣ
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
            get_ava(vavg_id);  //��ȡ�ͻ���Ϣ
            for i := vbegin to vend do
            begin
              if GetValue(i,grd_list_btv_avg_id.Index)<>null then
              begin
                SetValue(i,grd_list_btv_list.Index,get_ava_list(GetValue(i,grd_list_btv_avg_id.Index)));
              end;
            end;
            vbegin:=vend+1;
          end;
          Qry_Module.Next;
        end;
        //����������Ϣһ�ι�д�룬����еĻ�
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
          get_ava(vavg_id);  //��ȡ�ͻ���Ϣ
          for i := vbegin to vend do
          begin
            if GetValue(i,grd_list_btv_avg_id.Index)<>null then
            begin
              SetValue(i,grd_list_btv_list.Index,get_ava_list(GetValue(i,grd_list_btv_avg_id.Index)));
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

function TfrmOrderQuery_ava.get_ava_list(Avg_id:Integer):string; //����������ʾ��  �����ȵ��� get_ava ����
var
  vfix_flg:Boolean;
begin
  Result:='';
  with qry_ava do
  begin
    if IsEmpty then Exit;
    First;
    vfix_flg:=False;
    while not Eof do
    begin
      if FieldByName('ava_id_avg').AsInteger=Avg_id then
      begin
        vfix_flg:=True;
        if Result<>'' then
          Result:=Result+' | '+fieldbyname('ava_name_c').AsString+';'+fieldbyname('ava_PassPortNo').AsString+';'+fieldbyname('ava_StatusType').AsString
        else
          Result:=fieldbyname('ava_name_c').AsString+';'+fieldbyname('ava_PassPortNo').AsString+';'+fieldbyname('ava_StatusType').AsString;
      end;
      if vfix_flg and(FieldByName('ava_id_avg').AsInteger<>Avg_id) then
        Exit;      //�����ʺϵĿ������� ��������
      Next;
    end;
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
  grd_list_btv.OptionsView.DataRowHeight:=32;
end;

procedure TfrmOrderQuery_ava.grd_list_btvCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  //��ȥ��������Ϣ
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

procedure TfrmOrderQuery_ava.grd_list_btvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
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
  vavg_id:string;
begin
  inherited;//��ѯ
  if date_begin.Date>date_end.Date then
  begin
    MessageOfInformation('��ʼ���ڲ��ܴ��ڽ������ڣ�',False);
    Exit;
  end;
  if date_end.Date>date_begin.Date+40 then
  begin
    if MessageOfQuestion('��ѯ���ڷ�Χ����40�գ���Ӧ�ٶȿ��ܱ�������ȷ��Ҫ������ѯ��')<>idok then
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
    grid_show;  //��ʾ �б�������
    //ShowMessage('2');
    refresh_remark;  //ˢ�� XX��Ϣ
  end;
end;

end.
