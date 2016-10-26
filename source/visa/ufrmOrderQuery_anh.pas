unit ufrmOrderQuery_anh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,
  Data.DB, Data.Win.ADODB, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxdbtrel, dxBarExtItems, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridLevel, cxGrid,cxgridexportlink,
  cxMemo, cxGroupBox, cxSplitter, cxDBLookupComboBox, cxCurrencyEdit,
  cxImageComboBox, cxCheckBox, cxSpinEdit;

type
  TfrmOrderQuery_anh = class(TModuleMDIFrm)
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
    edt_name_enter: TcxTextEdit;
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
    bs_user_l: TdxBarStatic;
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
    gb_list_avgh: TcxGroupBox;
    memo_remark: TcxMemo;
    memo_avgh: TcxMemo;
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
    grd_list_btv_list_avgh: TcxGridBandedColumn;
    grd_list_btv_avg_date_send: TcxGridBandedColumn;
    qry_avgh: TADOQuery;
    cxSplitter2: TcxSplitter;
    qry_ava: TADOQuery;
    grd_list_btv_list_ava: TcxGridBandedColumn;
    gb_list_ava: TcxGroupBox;
    cxSplitter3: TcxSplitter;
    memo_ava: TcxMemo;
    dxBarManager1Bar3: TdxBar;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem9: TdxBarControlContainerItem;
    edt_name_send: TcxTextEdit;
    edt_name_op: TcxTextEdit;
    dxBarStatic8: TdxBarStatic;
    dxBarControlContainerItem10: TdxBarControlContainerItem;
    dxBarStatic9: TdxBarStatic;
    cb_type_op: TcxComboBox;
    dxBarControlContainerItem11: TdxBarControlContainerItem;
    grd_list_btv_cj: TcxGridBandedColumn;
    grd_list_btv_bzl: TcxGridBandedColumn;
    grd_list_btv_yy: TcxGridBandedColumn;
    grd_list_btv_ds: TcxGridBandedColumn;
    grd_list_btv_lgbl: TcxGridBandedColumn;
    grd_list_btv_qh: TcxGridBandedColumn;
    grd_list_btv_jq: TcxGridBandedColumn;
    grd_list_btv_ff: TcxGridBandedColumn;
    grd_list_btv_tg: TcxGridBandedColumn;
    grd_list_btv_cfdd: TcxGridBandedColumn;
    grd_list_btv_cflr: TcxGridBandedColumn;
    grd_list_btv_xgdd: TcxGridBandedColumn;
    grd_list_btv_xgkrxx: TcxGridBandedColumn;
    grd_list_btv_zj: TcxGridBandedColumn;
    grd_name_lv: TcxGridLevel;
    grd_name: TcxGrid;
    grd_name_tv: TcxGridTableView;
    grd_name_tv_avg_id: TcxGridColumn;
    grd_name_tv_avg_invoiceno: TcxGridColumn;
    grd_name_tv_avg_id_act: TcxGridColumn;
    grd_name_tv_avg_id_type: TcxGridColumn;
    grd_name_tv_avg_id_avs: TcxGridColumn;
    grd_name_tv_avg_user_enter: TcxGridColumn;
    grd_name_tv_avg_date_enter: TcxGridColumn;
    grd_name_tv_avg_user_send: TcxGridColumn;
    grd_name_tv_avg_date_send: TcxGridColumn;
    grd_name_tv_ava_id: TcxGridColumn;
    grd_name_tv_ava_name_c: TcxGridColumn;
    grd_name_tv_ava_PassPortNo: TcxGridColumn;
    grd_name_tv_avg_price: TcxGridColumn;
    btn_excel_name: TdxBarButton;
    grd_name_tv_ava_name_e: TcxGridColumn;
    grd_name_tv_ava_sex: TcxGridColumn;
    grd_name_tv_ava_idcard: TcxGridColumn;
    grd_name_tv_ava_remark: TcxGridColumn;
    grd_name_tv_ava_remark1: TcxGridColumn;
    grd_name_tv_ava_remark2: TcxGridColumn;
    dxBarControlContainerItem12: TdxBarControlContainerItem;
    cb_show_remark: TcxCheckBox;
    pc_main: TcxPageControl;
    ts_order: TcxTabSheet;
    ts_ava: TcxTabSheet;
    dxBarStatic10: TdxBarStatic;
    dxBarControlContainerItem13: TdxBarControlContainerItem;
    cb_show: TcxComboBox;
    grd_name_tv_select: TcxGridColumn;
    dxBarStatic11: TdxBarStatic;
    btn_select_all: TdxBarButton;
    btn_select_none: TdxBarButton;
    btn_select_not: TdxBarButton;
    grd_list_btv_select: TcxGridBandedColumn;
    grd_list_btv_ava_remark: TcxGridBandedColumn;
    grd_list_btv_ava_remark1: TcxGridBandedColumn;
    grd_list_btv_ava_remark2: TcxGridBandedColumn;
    grd_name_tv_avg_SourceName: TcxGridColumn;
    grd_list_btv_avg_groupcode: TcxGridBandedColumn;
    grd_name_tv_avg_groupcode: TcxGridColumn;
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
    procedure cb_datePropertiesEditValueChanged(Sender: TObject);
    procedure btn_excel_nameClick(Sender: TObject);
    procedure cb_show_remarkPropertiesEditValueChanged(Sender: TObject);
    procedure cb_showPropertiesChange(Sender: TObject);
    procedure btn_select_allClick(Sender: TObject);
    procedure btn_select_noneClick(Sender: TObject);
    procedure btn_select_notClick(Sender: TObject);
  private
    Farea_all:string;
    { Private declarations }
    procedure refresh_avs(act_id:Integer); //ˢ��ǩ֤��������ѡ��
    procedure refresh_remark;  //ˢ�� ��ע��Ϣ

    procedure get_avgh(Avg_id:string);  //��ȡ������Ϣ ���ݶ�
    function get_avgh_list(Avg_id,Arecord:Integer):string; //����������ʾ��  �����ȵ��� get_ava ����
    procedure get_ava(Avg_id:string);  //��ȡ������Ϣ ���ݶ�
    function get_ava_list(Avg_id,Arecord:Integer;var Aremark:string;var Aremark1:string;var Aremark2:string):string; //����������ʾ��  �����ȵ��� get_ava ����
    procedure grid_show;  //��ʾ �б�������  ����get_ava_list get_ava get_avgh_list get_avgh
  public
    { Public declarations }
  end;

var
  frmOrderQuery_anh: TfrmOrderQuery_anh;
  procedure ExecfrmOrderQuery_anh;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;

procedure ExecfrmOrderQuery_anh;
begin
  if frmOrderQuery_anh=nil then
    frmOrderQuery_anh:=TfrmOrderQuery_anh.Create(Application);
  frmOrderQuery_anh.Show;
end;

procedure TfrmOrderQuery_anh.refresh_avs(act_id:Integer); //ˢ��ǩ֤��������ѡ��
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

procedure TfrmOrderQuery_anh.refresh_remark;  //ˢ�� XX��Ϣ
var
  i:Integer;
begin
  with grd_list_btv do
  begin
    //ShowMessage('A');
    if DataController.RecordCount=0 then
    begin
      memo_remark.Text:='';
      memo_ava.Text:='';
      memo_avgh.Text:='';
      Exit;
    end;
    //ShowMessage('B');
    if Controller.SelectedRowCount<=0 then
    begin
      memo_remark.Text:='';
      memo_ava.Text:='';
      memo_avgh.Text:='';
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
    if DataController.GetValue(i,grd_list_btv_list_avgh.Index)=null then
      memo_avgh.Text:=''
    else
      memo_avgh.Text:=DataController.GetValue(i,grd_list_btv_list_avgh.Index);
    if DataController.GetValue(i,grd_list_btv_list_ava.Index)=null then
      memo_ava.Text:=''
    else
      memo_ava.Text:=DataController.GetValue(i,grd_list_btv_list_ava.Index);
  end;
end;

procedure TfrmOrderQuery_anh.get_avgh(Avg_id:string);  //��ȡ������Ϣ
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

procedure TfrmOrderQuery_anh.grid_show;  //��ʾ �б�������
var
  i:Integer;

  vbegin,vend:Integer;
  vavg_id:string;

  vremark,vremark1,vremark2:string;
begin
  grd_list_btv.BeginUpdate;
  grd_name_tv.BeginUpdate;
  try
    with grd_name_tv.DataController do
    begin
      //����б�
      while RecordCount>0 do
        DeleteRecord(0);
    end;
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
          SetValue(i,grd_list_btv_select.Index,False);  //ѡ��
          SetValue(i,grd_list_btv_avg_id.Index,Qry_Module.FieldByName('avg_id').AsInteger);
          SetValue(i,grd_list_btv_avg_invoiceno.Index,Qry_Module.FieldByName('avg_invoiceno').AsString);
          SetValue(i,grd_list_btv_avg_groupcode.Index,Qry_Module.FieldByName('avg_groupcode').AsString);
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
          //ÿ�γ�������������¼��дһ�������Ͳ�����Ϣ
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
            get_avgh(vavg_id);  //��ȡ������¼
            for i := vbegin to vend do
            begin
              if GetValue(i,grd_list_btv_avg_id.Index)<>null then
              begin
                SetValue(i,grd_list_btv_list_avgh.Index,get_avgh_list(GetValue(i,grd_list_btv_avg_id.Index),i));
              end;
            end;
            get_ava(vavg_id);  //��ȡ������Ϣ
            for i := vbegin to vend do
            begin
              if GetValue(i,grd_list_btv_avg_id.Index)<>null then
              begin
                vremark:='';
                vremark1:='';
                vremark2:='';

                SetValue(i,grd_list_btv_list_ava.Index,get_ava_list(GetValue(i,grd_list_btv_avg_id.Index),i,vremark,vremark1,vremark2));

                SetValue(i,grd_list_btv_ava_remark.Index,vremark);
                SetValue(i,grd_list_btv_ava_remark1.Index,vremark1);
                SetValue(i,grd_list_btv_ava_remark2.Index,vremark2);
              end;
            end;
            vbegin:=vend+1;
          end;
          Qry_Module.Next;
        end;
        //���������Ͳ�����Ϣһ�ι�д�룬����еĻ�
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
          get_avgh(vavg_id);  //��ȡ������¼
          for i := vbegin to vend do
          begin
            if GetValue(i,grd_list_btv_avg_id.Index)<>null then
            begin
              SetValue(i,grd_list_btv_list_avgh.Index,get_avgh_list(GetValue(i,grd_list_btv_avg_id.Index),i));
            end;
          end;
          get_ava(vavg_id);  //��ȡ������Ϣ
          for i := vbegin to vend do
          begin
            if GetValue(i,grd_list_btv_avg_id.Index)<>null then
            begin
              vremark:='';
              vremark1:='';
              vremark2:='';

              SetValue(i,grd_list_btv_list_ava.Index,get_ava_list(GetValue(i,grd_list_btv_avg_id.Index),i,vremark,vremark1,vremark2));

              SetValue(i,grd_list_btv_ava_remark.Index,vremark);
              SetValue(i,grd_list_btv_ava_remark1.Index,vremark1);
              SetValue(i,grd_list_btv_ava_remark2.Index,vremark2);
            end;
          end;
          vbegin:=vend+1;
        end;
      end;
    end;
  finally
    grd_list_btv.EndUpdate;
    grd_name_tv.EndUpdate;
  end;
end;

function TfrmOrderQuery_anh.get_avgh_list(Avg_id,Arecord:Integer):string; //����������ʾ��  �����ȵ��� get_ava ����
var
  vfix_flg:Boolean;

v_cj,//���
v_bzl,//������
v_yy,//ԤԼ
v_ds,//����
//v_sq,//��ǩ
v_lgbl,//��ݲ���
v_qh,//ȡ��
v_jq,//��ǩ
v_ff,//����
v_tg,//�˸�
v_cfdd,//��ֶ���
v_cflr,//���¼��
v_xgdd,//�޸Ķ���
v_xgkrxx,//�޸Ŀ�����Ϣ
v_zj//׷��
:string;
begin
  Result:='';
  with qry_avgh do
  begin
    if IsEmpty then Exit;
    First;
    v_cj:='';//���
    v_bzl:='';//������
    v_yy:='';//ԤԼ
    v_ds:='';//����
//    v_sq:='';//��ǩ
    v_lgbl:='';//��ݲ���
    v_qh:='';//ȡ��
    v_jq:='';//��ǩ
    v_ff:='';//����
    v_tg:='';//�˸�
    v_cfdd:='';//��ֶ���
    v_cflr:='';//���¼��
    v_xgdd:='';//�޸Ķ���
    v_xgkrxx:='';//�޸Ŀ�����Ϣ
    v_zj:='';//׷��
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
                              +';���ˣ�'+fieldbyname('avgh_GuestName').AsString
                              +'('+inttostr(fieldbyname('avgh_num').AsInteger)+')'
                              +'��ע��'+fieldbyname('avgh_remark').AsString
        else
          Result:=fieldbyname('avgh_User_op').AsString
                +fieldbyname('avgh_Date_op').AsString
                +fieldbyname('avgh_type').AsString
                +';���ˣ�'+fieldbyname('avgh_GuestName').AsString
                +'('+inttostr(fieldbyname('avgh_num').AsInteger)+')'
                +'��ע��'+fieldbyname('avgh_remark').AsString;
        if fieldbyname('avgh_type').AsString='���' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_cj)=0 then
            v_cj:=v_cj+fieldbyname('avgh_User_op').AsString+';';//���
        end;
        if fieldbyname('avgh_type').AsString='������' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_bzl)=0 then
            v_bzl:=v_bzl+fieldbyname('avgh_User_op').AsString+';';//������
        end;
        if fieldbyname('avgh_type').AsString='ԤԼ' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_yy)=0 then
            v_yy:=v_yy+fieldbyname('avgh_User_op').AsString+';';//ԤԼ
        end;
        if fieldbyname('avgh_type').AsString='����' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_ds)=0 then
            v_ds:=v_ds+fieldbyname('avgh_User_op').AsString+';';//����
        end;
//        if fieldbyname('avgh_type').AsString='��ǩ' then
//          v_sq:=v_sq+fieldbyname('avgh_User_op').AsString+';';//��ǩ
        if fieldbyname('avgh_type').AsString='��ݲ���' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_lgbl)=0 then
            v_lgbl:=v_lgbl+fieldbyname('avgh_User_op').AsString+';';//��ݲ���
        end;
        if fieldbyname('avgh_type').AsString='ȡ��' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_qh)=0 then
            v_qh:=v_qh+fieldbyname('avgh_User_op').AsString+';';//ȡ��
        end;
        if fieldbyname('avgh_type').AsString='��ǩ' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_jq)=0 then
            v_jq:=v_jq+fieldbyname('avgh_User_op').AsString+';';//��ǩ
        end;
        if fieldbyname('avgh_type').AsString='����' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_ff)=0 then
            v_ff:=v_ff+fieldbyname('avgh_User_op').AsString+';';//����
        end;
        if fieldbyname('avgh_type').AsString='�˸�' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_tg)=0 then
            v_tg:=v_tg+fieldbyname('avgh_User_op').AsString+';';//�˸�
        end;
        if fieldbyname('avgh_type').AsString='��ֶ���' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_cfdd)=0 then
            v_cfdd:=v_cfdd+fieldbyname('avgh_User_op').AsString+';';//��ֶ���
        end;
        if fieldbyname('avgh_type').AsString='���¼��' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_cflr)=0 then
            v_cflr:=v_cflr+fieldbyname('avgh_User_op').AsString+';';//���¼��
        end;
        if fieldbyname('avgh_type').AsString='�޸Ķ���' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_xgdd)=0 then
            v_xgdd:=v_xgdd+fieldbyname('avgh_User_op').AsString+';';//�޸Ķ���
        end;
        if fieldbyname('avgh_type').AsString='�޸Ŀ�����Ϣ' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_xgkrxx)=0 then
            v_xgkrxx:=v_xgkrxx+fieldbyname('avgh_User_op').AsString+';';//�޸Ŀ�����Ϣ
        end;
        if fieldbyname('avgh_type').AsString='׷��' then
        begin
          if Pos(fieldbyname('avgh_User_op').AsString+';',v_zj)=0 then
            v_zj:=v_zj+fieldbyname('avgh_User_op').AsString+';';//׷��
        end;
      end;
      if vfix_flg and(FieldByName('avgh_id_avg').AsInteger<>Avg_id) then
      begin
        //��ʾ���б���
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cj.Index,v_cj);//���
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_bzl.Index,v_bzl);//������
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_yy.Index,v_yy);//ԤԼ
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_ds.Index,v_ds);//����
//        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_sq.Index,v_sq);//��ǩ
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_lgbl.Index,v_lgbl);//��ݲ���
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_qh.Index,v_qh);//ȡ��
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_jq.Index,v_jq);//��ǩ
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_ff.Index,v_ff);//����
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_tg.Index,v_tg);//�˸�
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cfdd.Index,v_cfdd);//��ֶ���
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cflr.Index,v_cflr);//���¼��
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_xgdd.Index,v_xgdd);//�޸Ķ���
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_xgkrxx.Index,v_xgkrxx);//�޸Ŀ�����Ϣ
        grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_zj.Index,v_zj);//׷��
        //�����ʺϵĿ������� ��������
        Exit;
      end;
      Next;
    end;
    //��ʾ���б���
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cj.Index,v_cj);//���
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_bzl.Index,v_bzl);//������
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_yy.Index,v_yy);//ԤԼ
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_ds.Index,v_ds);//����
//    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_sq.Index,v_sq);//��ǩ
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_lgbl.Index,v_lgbl);//��ݲ���
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_qh.Index,v_qh);//ȡ��
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_jq.Index,v_jq);//��ǩ
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_ff.Index,v_ff);//����
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_tg.Index,v_tg);//�˸�
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cfdd.Index,v_cfdd);//��ֶ���
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_cflr.Index,v_cflr);//���¼��
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_xgdd.Index,v_xgdd);//�޸Ķ���
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_xgkrxx.Index,v_xgkrxx);//�޸Ŀ�����Ϣ
    grd_list_btv.DataController.SetValue(Arecord,grd_list_btv_zj.Index,v_zj);//׷��
  end;
end;

procedure TfrmOrderQuery_anh.get_ava(Avg_id:string);  //��ȡ������Ϣ
begin
  with qry_ava do
  begin
    if Active then Close;
    if Avg_id='' then Exit;
    SQL.Text:='select ava_id,ava_id_avg,ava_name_c,ava_PassPortNo,ava_StatusType,ava_Remark,ava_index,ava_name_e,ava_sex,ava_idcard,ava_remark1,ava_remark2'
             +' from ava_visa_application with(nolock)'
             +' where ava_status<>''D'' '
             +' and ava_state<>''����'' '
             +' and ava_id_avg in ('+avg_id+')'
             +' order by ava_id_avg,ava_index ';
    Open;
  end;
end;

function TfrmOrderQuery_anh.get_ava_list(Avg_id,Arecord:Integer;var Aremark:string;var Aremark1:string;var Aremark2:string):string; //����������ʾ��  �����ȵ��� get_ava ����
var
  vfix_flg:Boolean;
  i,n:Integer;
begin
  Result:='';
  Aremark:='';
  Aremark1:='';
  Aremark2:='';
  with qry_ava do
  begin
    if IsEmpty then Exit;
    First;
    vfix_flg:=False;
    n:=0;
    while not Eof do
    begin
      if FieldByName('ava_id_avg').AsInteger=Avg_id then
      begin
        vfix_flg:=True;
        n:=n+1;
        if Result='' then //ֻ��ʾһ������
        begin
          Result:=fieldbyname('ava_name_c').AsString;
          Aremark:=fieldbyname('ava_remark').AsString;
          Aremark1:=fieldbyname('ava_remark1').AsString;
          Aremark2:=fieldbyname('ava_remark2').AsString;
        end;
//        if Result<>'' then
//          Result:=Result+' | '+fieldbyname('ava_name_c').AsString+';'+fieldbyname('ava_PassPortNo').AsString+';'+fieldbyname('ava_StatusType').AsString
//        else
//          Result:=fieldbyname('ava_name_c').AsString+';'+fieldbyname('ava_PassPortNo').AsString+';'+fieldbyname('ava_StatusType').AsString;
        //����������
        i:=grd_name_tv.DataController.AppendRecord;
        grd_name_tv.DataController.SetValue(i,grd_name_tv_select.Index,False);  //ѡ��

        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_id.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_id.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_invoiceno.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_invoiceno.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_groupcode.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_groupcode.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_id_act.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_id_act.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_id_type.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_id_type.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_id_avs.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_id_avs.Index));

        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_price.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_price.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_user_enter.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_user_enter.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_date_enter.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_date_enter.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_user_send.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_user_send.Index));
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_date_send.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_date_send.Index));

        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_id.Index,FieldByName('ava_id').AsInteger);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_name_c.Index,FieldByName('ava_name_c').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_PassPortNo.Index,FieldByName('ava_PassPortNo').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_name_e.Index,FieldByName('ava_name_e').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_sex.Index,FieldByName('ava_sex').Asinteger);

        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_idcard.Index,FieldByName('ava_idcard').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_remark.Index,FieldByName('ava_remark').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_remark1.Index,FieldByName('ava_remark1').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_ava_remark2.Index,FieldByName('ava_remark2').AsString);
        grd_name_tv.DataController.SetValue(i,grd_name_tv_avg_SourceName.Index,grd_list_btv.DataController.GetValue(Arecord,grd_list_btv_avg_sourceName.Index));
      end;
      if vfix_flg and(FieldByName('ava_id_avg').AsInteger<>Avg_id) then
      begin
        Result:=Result+inttostr(n)+'��';
        Exit;      //�����ʺϵĿ������� ��������
      end;
      Next;
    end;
    if vfix_flg then
    begin
      Result:=Result+inttostr(n)+'��';
    end;
  end;
end;


procedure TfrmOrderQuery_anh.btn_excelClick(Sender: TObject);
begin
  //inherited;    ����Excel
  cxTabControl1.SetFocus;  //��ת�½��� ��������ձ༭��ѡ��״̬
  with grd_list_btv.DataController do
  begin
    if RecordCount>0 then
    begin
      try
        //ֻ����ѡ�еģ�����������
        Filter.Root.Clear;
        Filter.Root.AddItem(grd_list_btv_select,foEqual,True,'True');
        Filter.Active:=True;
        with sd_1 do
        begin
          filename:='��������'+FormatDateTime('mmddhhnnss',Now);
          if Execute then
          begin
            ExportGridToExcel(FileName,grd_list,True,True);
          end;
        end;
      finally
        Filter.Active:=True;
        Filter.Root.Clear;
      end;
    end;
  end;
end;

procedure TfrmOrderQuery_anh.btn_excel_nameClick(Sender: TObject);
begin
  //inherited;  ��������
{//��cxGird����������
 cxGrid1DBTableView1.DataController.Filter.Root.Clear;
 cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1zjm, foLike, '%' + Trim(Edit1.Text) + '%', '%' + Trim(Edit1.Text) + '%');
 cxGrid1DBTableView1.DataController.Filter.Active := True;}
  cxTabControl1.SetFocus;  //��ת�½��� ��������ձ༭��ѡ��״̬
  with grd_name_tv.DataController do
  begin
    if RecordCount>0 then
    begin
      try
        //ֻ����ѡ�еģ�����������
        Filter.Root.Clear;
        Filter.Root.AddItem(grd_name_tv_select,foEqual,True,'True');
        Filter.Active:=True;
        with sd_1 do
        begin
          filename:='��������-����'+FormatDateTime('mmddhhnnss',Now);
          if Execute then
          begin
            ExportGridToExcel(FileName,grd_name,True,True);
          end;
        end;
      finally
        Filter.Active:=True;
        Filter.Root.Clear;
      end;
    end;
  end;
end;


procedure TfrmOrderQuery_anh.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ltv_area.CloseUp(True);
  ltv_type.CloseUp(True);
  ltv_avs.CloseUp(True);
  inherited;
  FreeAndNil(frmOrderQuery_anh);
end;

procedure TfrmOrderQuery_anh.FormCreate(Sender: TObject);
begin
  inherited;
  //��ȡ����ѡ��
  CommonDM.GDB_op_view(cb_type_op.Properties.Items);
  cb_type_op.ItemIndex:=0;
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

procedure TfrmOrderQuery_anh.FormShow(Sender: TObject);
begin
  //inherited;   ���Զ��򿪲�ѯ
  grd_list_btv.OptionsView.DataRowHeight:=32;
end;

procedure TfrmOrderQuery_anh.grd_list_btvCellDblClick(
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

procedure TfrmOrderQuery_anh.grd_list_btvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfrmOrderQuery_anh.grd_list_btvFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  refresh_remark;  //ˢ�� XX��Ϣ
end;

procedure TfrmOrderQuery_anh.qry_areaAfterScroll(DataSet: TDataSet);
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

procedure TfrmOrderQuery_anh.Btn_QueryClick(Sender: TObject);
var
  vname:string;
  //vavg_id:string;
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
    SQL.Text:='select avg_id,avg_groupcode,avg_invoiceno,avg_source,avg_sourceName,avg_id_act,avg_id_type,avg_id_avs,'
             +' avg_user_enter,avg_date_enter,avg_num,avg_state,avg_amount,avg_price,'
             +' avg_date_Meet,avg_date_send,avg_date_rtn,avg_user_send,avg_date_st,avg_date_re,avg_date_cancel,'
             +' avg_remark,avg_id_aar,avg_name_aar'
             +' from avg_visa_group with(nolock) where avg_status<>''D'' and ';

    if cb_date.ItemIndex<>7 then   //��ҵ���������
    begin
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
    end
    else      //ҵ���������
    begin
      SQL.Text:=SQL.Text+' avg_id in (select avgh_id_avg from avgh_visa_group_history with(nolock) where avgh_status<>''D'' '
                        +' and avgh_date_op between '''+FormatDateTime('yyyy-mm-dd 00:00:00',date_begin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',date_end.Date)+''' ';

      //ҵ������
      if cb_type_op.ItemIndex>0 then
      begin
        vname:=Replace_keyword(cb_type_op.Text);
        SQL.Add(' and avgh_type='''+vname+'''        ' );
      end;
      vname:=Replace_keyword(edt_name_op.Text);
      if vname<>'' then  //������
      begin
        SQL.Add(' and avgh_user_op ='+QuotedStr(vname) );
      end;
      SQL.Text:=SQL.Text+')';
    end;


    if qry_area.FieldByName('_id').AsInteger>0 then   //����
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //��
        SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
      if qry_area.FieldByName('_level').AsInteger=2 then   //����
        SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
    end;

    vname:=Replace_keyword(edt_name_enter.Text);
    if vname<>'' then  //�뵥��
    begin
      SQL.Add(' and avg_user_enter ='+QuotedStr(vname) );
    end;
    vname:=Replace_keyword(edt_name_send.Text);
    if vname<>'' then  //��ǩ��
    begin
      SQL.Add(' and avg_user_send ='+QuotedStr(vname) );
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
//    vavg_id:='';
//    if not IsEmpty then
//    begin
//      First;
//      while not Eof do
//      begin
//        if vavg_id<>'' then
//          vavg_id:=vavg_id+','+inttostr(FieldByName('avg_id').AsInteger)
//        else
//          vavg_id:=inttostr(FieldByName('avg_id').AsInteger);
//        Next;
//      end;
//    end;
    //ShowMessage('1');
    grid_show;  //��ʾ �б�������
    //ShowMessage('2');
    refresh_remark;  //ˢ�� XX��Ϣ
  end;
end;

procedure TfrmOrderQuery_anh.btn_select_allClick(Sender: TObject);
var
  i:Integer;
begin
  //inherited;    ȫѡ
  if pc_main.ActivePage=ts_ava then  //�����б�
  begin
    try
      grd_name_tv.BeginUpdate;
      with grd_name_tv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          SetValue(i,grd_name_tv_select.Index,True);
        end;
      end;
    finally
      grd_name_tv.EndUpdate;
    end;
  end;
  if pc_main.ActivePage=ts_order then  //�����б�
  begin
    try
      grd_list_btv.BeginUpdate;
      with grd_list_btv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          SetValue(i,grd_list_btv_select.Index,True);
        end;
      end;
    finally
      grd_list_btv.EndUpdate;
    end;
  end;
end;


procedure TfrmOrderQuery_anh.btn_select_noneClick(Sender: TObject);
var
  i:Integer;
begin
  //inherited;  ȫ��ѡ
  if pc_main.ActivePage=ts_ava then  //�����б�
  begin
    try
      grd_name_tv.BeginUpdate;
      with grd_name_tv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          SetValue(i,grd_name_tv_select.Index,False);
        end;
      end;
    finally
      grd_name_tv.EndUpdate;
    end;
  end;
  if pc_main.ActivePage=ts_order then  //�����б�
  begin
    try
      grd_list_btv.BeginUpdate;
      with grd_list_btv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          SetValue(i,grd_list_btv_select.Index,False);
        end;
      end;
    finally
      grd_list_btv.EndUpdate;
    end;
  end;
end;

procedure TfrmOrderQuery_anh.btn_select_notClick(Sender: TObject);
var
  i:Integer;
begin
  //inherited;    ��ѡ
  cxTabControl1.SetFocus;  //��ת�½��� ��������ձ༭��ѡ��״̬
  if pc_main.ActivePage=ts_ava then  //�����б�
  begin
    try
      grd_name_tv.BeginUpdate;
      with grd_name_tv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          if GetValue(i,grd_name_tv_select.Index)<>null then
          begin
            if GetValue(i,grd_name_tv_select.Index)=True then
              SetValue(i,grd_name_tv_select.Index,False)
            else
              SetValue(i,grd_name_tv_select.Index,True);
          end
          else
          begin
            SetValue(i,grd_name_tv_select.Index,True);
          end;
        end;
      end;
    finally
      grd_name_tv.EndUpdate;
    end;
  end;
  if pc_main.ActivePage=ts_order then  //�����б�
  begin
    try
      grd_list_btv.BeginUpdate;
      with grd_list_btv.DataController do
      begin
        for i:=0 to RecordCount-1 do
        begin
          if GetValue(i,grd_list_btv_select.Index)<>null then
          begin
            if GetValue(i,grd_list_btv_select.Index)=True then
              SetValue(i,grd_list_btv_select.Index,False)
            else
              SetValue(i,grd_list_btv_select.Index,True);
          end
          else
          begin
            SetValue(i,grd_list_btv_select.Index,True);
          end;
        end;
      end;
    finally
      grd_list_btv.EndUpdate;
    end;
  end;
end;

procedure TfrmOrderQuery_anh.cb_datePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  //�������͸�����ʱ��
  if cb_date.ItemIndex<>7 then    //��  7ҵ������  ����ѡ��ҵ������ �;�����
  begin
    cb_type_op.Enabled:=False;
    edt_name_op.Enabled:=False;
  end
  else
  begin
    cb_type_op.Enabled:=True;
    edt_name_op.Enabled:=True;
  end;
end;

procedure TfrmOrderQuery_anh.cb_show_remarkPropertiesEditValueChanged(
  Sender: TObject);
begin
  //inherited; �Ƿ���ʾ��ע��
  tc_remark.Visible:=cb_show_remark.Checked;
end;

procedure TfrmOrderQuery_anh.cb_showPropertiesChange(Sender: TObject);
var
  n:Integer;
begin
  //inherited;  ��ʾ��ʽ
  //ShowMessage(IntToStr(cb_show.ItemIndex ));
  //ע��0ͷ��0���ǹ̶�ѡ����
  grd_list_btv.BeginUpdate;
  try
    for n := 1 to grd_list_btv.ColumnCount-1 do
    begin
      grd_list_btv.Columns[n].Visible:=False;
      grd_list_btv.Columns[n].Position.BandIndex:=cb_show.ItemIndex+1;
    end;
    for n := 1 to grd_list_btv.Bands.Count-1 do
      grd_list_btv.Bands[n].Visible:=False;
    //ҵ����Ϣ�������������--������š���״̬�����ͻ���𡪡��ͻ����ơ������򡪡�������ҡ���
    //�������͡����������ࡪ��������Ϣ���������������ۡ���Ӧ�ս��
    if cb_show.ItemIndex=0 then
    begin
      grd_list_btv_avg_invoiceno.Visible:=True;
      grd_list_btv_avg_invoiceno.Position.ColIndex:=1;
      grd_list_btv_avg_groupcode.Visible:=True;
      grd_list_btv_avg_groupcode.Position.ColIndex:=2;
      grd_list_btv_avg_state.Visible:=True;
      grd_list_btv_avg_state.Position.ColIndex:=3;
      grd_list_btv_avg_source.Visible:=True;
      grd_list_btv_avg_source.Position.ColIndex:=4;
      grd_list_btv_avg_sourceName.Visible:=True;
      grd_list_btv_avg_sourceName.Position.ColIndex:=5;
      grd_list_btv_avg_name_aar.Visible:=True;
      grd_list_btv_avg_name_aar.Position.ColIndex:=6;
      grd_list_btv_avg_id_act.Visible:=True;
      grd_list_btv_avg_id_act.Position.ColIndex:=7;
      grd_list_btv_avg_id_type.Visible:=True;
      grd_list_btv_avg_id_type.Position.ColIndex:=8;
      grd_list_btv_avg_id_avs.Visible:=True;
      grd_list_btv_avg_id_avs.Position.ColIndex:=9;
      grd_list_btv_list_ava.Visible:=True;
      grd_list_btv_list_ava.Position.ColIndex:=10;
      grd_list_btv_avg_num.Visible:=True;
      grd_list_btv_avg_num.Position.ColIndex:=11;
      grd_list_btv_avg_price.Visible:=True;
      grd_list_btv_avg_price.Position.ColIndex:=12;
      grd_list_btv_avg_amount.Visible:=True;
      grd_list_btv_avg_amount.Position.ColIndex:=13;
    end;
    //��ǩ��Ϣ�������������--������š���״̬����������ҡ����������͡����������ࡪ��������Ϣ����
    //����������ǩ���ڡ�����ǩ���ڡ�����������
    if cb_show.ItemIndex=1 then
    begin
      grd_list_btv_avg_invoiceno.Visible:=True;
      grd_list_btv_avg_invoiceno.Position.ColIndex:=1;
      grd_list_btv_avg_groupcode.Visible:=True;
      grd_list_btv_avg_groupcode.Position.ColIndex:=2;
      grd_list_btv_avg_state.Visible:=True;
      grd_list_btv_avg_state.Position.ColIndex:=3;
      grd_list_btv_avg_id_act.Visible:=True;
      grd_list_btv_avg_id_act.Position.ColIndex:=5;
      grd_list_btv_avg_id_type.Visible:=True;
      grd_list_btv_avg_id_type.Position.ColIndex:=6;
      grd_list_btv_avg_id_avs.Visible:=True;
      grd_list_btv_avg_id_avs.Position.ColIndex:=7;
      grd_list_btv_list_ava.Visible:=True;
      grd_list_btv_list_ava.Position.ColIndex:=8;
      grd_list_btv_avg_num.Visible:=True;
      grd_list_btv_avg_num.Position.ColIndex:=9;
      grd_list_btv_avg_date_send.Visible:=True;
      grd_list_btv_avg_date_send.Position.ColIndex:=10;
      grd_list_btv_avg_date_rtn.Visible:=True;
      grd_list_btv_avg_date_rtn.Position.ColIndex:=11;
      grd_list_btv_avg_date_st.Visible:=True;
      grd_list_btv_avg_date_st.Position.ColIndex:=12;
    end;
    //������Ϣ�������������--������š���״̬�����ͻ���𡪡��ͻ����ơ������򡪡�������ҡ���
    //�������͡����������ࡪ��������Ϣ���������������ۡ���Ӧ�ս����뵥�ˡ����������
    //�����ϡ���ԤԼ�������͡�����ǩ�ˡ�����ݲ��ϡ���ȡ�ء�����ǩ�������š����˸ġ�����ֶ����������¼��
    if cb_show.ItemIndex=2 then
    begin
      grd_list_btv_avg_invoiceno.Visible:=True;
      grd_list_btv_avg_invoiceno.Position.ColIndex:=1;
      grd_list_btv_avg_groupcode.Visible:=True;
      grd_list_btv_avg_groupcode.Position.ColIndex:=2;
      grd_list_btv_avg_state.Visible:=True;
      grd_list_btv_avg_state.Position.ColIndex:=3;
      grd_list_btv_avg_source.Visible:=True;
      grd_list_btv_avg_source.Position.ColIndex:=4;
      grd_list_btv_avg_sourceName.Visible:=True;
      grd_list_btv_avg_sourceName.Position.ColIndex:=5;
      grd_list_btv_avg_name_aar.Visible:=True;
      grd_list_btv_avg_name_aar.Position.ColIndex:=6;
      grd_list_btv_avg_id_act.Visible:=True;
      grd_list_btv_avg_id_act.Position.ColIndex:=7;
      grd_list_btv_avg_id_type.Visible:=True;
      grd_list_btv_avg_id_type.Position.ColIndex:=8;
      grd_list_btv_avg_id_avs.Visible:=True;
      grd_list_btv_avg_id_avs.Position.ColIndex:=9;
      grd_list_btv_list_ava.Visible:=True;
      grd_list_btv_list_ava.Position.ColIndex:=10;
      grd_list_btv_avg_num.Visible:=True;
      grd_list_btv_avg_num.Position.ColIndex:=11;
      grd_list_btv_avg_price.Visible:=True;
      grd_list_btv_avg_price.Position.ColIndex:=12;
      grd_list_btv_avg_amount.Visible:=True;
      grd_list_btv_avg_amount.Position.ColIndex:=13;
      grd_list_btv_avg_user_enter.Visible:=True;
      grd_list_btv_avg_user_enter.Position.ColIndex:=14;
      grd_list_btv_cj.Visible:=True;
      grd_list_btv_cj.Position.ColIndex:=15;
      grd_list_btv_bzl.Visible:=True;
      grd_list_btv_bzl.Position.ColIndex:=16;
      grd_list_btv_yy.Visible:=True;
      grd_list_btv_yy.Position.ColIndex:=17;
      grd_list_btv_ds.Visible:=True;
      grd_list_btv_ds.Position.ColIndex:=18;
      grd_list_btv_lgbl.Visible:=True;
      grd_list_btv_lgbl.Position.ColIndex:=19;
      grd_list_btv_qh.Visible:=True;
      grd_list_btv_qh.Position.ColIndex:=20;
      grd_list_btv_jq.Visible:=True;
      grd_list_btv_jq.Position.ColIndex:=21;
      grd_list_btv_ff.Visible:=True;
      grd_list_btv_ff.Position.ColIndex:=22;
      grd_list_btv_tg.Visible:=True;
      grd_list_btv_tg.Position.ColIndex:=23;
      grd_list_btv_cfdd.Visible:=True;
      grd_list_btv_cfdd.Position.ColIndex:=24;
      grd_list_btv_cflr.Visible:=True;
      grd_list_btv_cflr.Position.ColIndex:=25;
    end;
    //��ϸ��Ϣ �����--������š���״̬�����ͻ���𡪡��ͻ����ơ������򡪡�������ҡ����������͡���
    //�������ࡪ��������Ϣ���������������ۡ���Ӧ�ս����뵥�ˡ���������������ϡ���ԤԼ����
    //���͡�����ǩ�ˡ�����ݲ��ϡ���ȡ�ء�����ǩ�������š����˸ġ�����ֶ����������¼�롪��
    //�뵥���ڡ���ԤԼ���ڡ����������ڡ����������ڡ�����ǩ���ڡ�����ǩ���ڡ�����ǩ���ڡ���
    //��ע����������¼�����޸Ķ��������޸Ŀ��ˡ���׷�ӡ�����ע������ע1������ע2
    if cb_show.ItemIndex=3 then
    begin
      grd_list_btv_avg_invoiceno.Visible:=True;
      grd_list_btv_avg_invoiceno.Position.ColIndex:=1;
      grd_list_btv_avg_groupcode.Visible:=True;
      grd_list_btv_avg_groupcode.Position.ColIndex:=2;
      grd_list_btv_avg_state.Visible:=True;
      grd_list_btv_avg_state.Position.ColIndex:=3;
      grd_list_btv_avg_source.Visible:=True;
      grd_list_btv_avg_source.Position.ColIndex:=4;
      grd_list_btv_avg_sourceName.Visible:=True;
      grd_list_btv_avg_sourceName.Position.ColIndex:=5;
      grd_list_btv_avg_name_aar.Visible:=True;
      grd_list_btv_avg_name_aar.Position.ColIndex:=6;
      grd_list_btv_avg_id_act.Visible:=True;
      grd_list_btv_avg_id_act.Position.ColIndex:=7;
      grd_list_btv_avg_id_type.Visible:=True;
      grd_list_btv_avg_id_type.Position.ColIndex:=8;
      grd_list_btv_avg_id_avs.Visible:=True;
      grd_list_btv_avg_id_avs.Position.ColIndex:=9;
      grd_list_btv_list_ava.Visible:=True;
      grd_list_btv_list_ava.Position.ColIndex:=10;
      grd_list_btv_avg_num.Visible:=True;
      grd_list_btv_avg_num.Position.ColIndex:=11;
      grd_list_btv_avg_price.Visible:=True;
      grd_list_btv_avg_price.Position.ColIndex:=12;
      grd_list_btv_avg_amount.Visible:=True;
      grd_list_btv_avg_amount.Position.ColIndex:=13;
      grd_list_btv_avg_user_enter.Visible:=True;
      grd_list_btv_avg_user_enter.Position.ColIndex:=14;
      grd_list_btv_cj.Visible:=True;
      grd_list_btv_cj.Position.ColIndex:=15;
      grd_list_btv_bzl.Visible:=True;
      grd_list_btv_bzl.Position.ColIndex:=16;
      grd_list_btv_yy.Visible:=True;
      grd_list_btv_yy.Position.ColIndex:=17;
      grd_list_btv_ds.Visible:=True;
      grd_list_btv_ds.Position.ColIndex:=18;
      grd_list_btv_lgbl.Visible:=True;
      grd_list_btv_lgbl.Position.ColIndex:=19;
      grd_list_btv_qh.Visible:=True;
      grd_list_btv_qh.Position.ColIndex:=20;
      grd_list_btv_jq.Visible:=True;
      grd_list_btv_jq.Position.ColIndex:=21;
      grd_list_btv_ff.Visible:=True;
      grd_list_btv_ff.Position.ColIndex:=22;
      grd_list_btv_tg.Visible:=True;
      grd_list_btv_tg.Position.ColIndex:=23;
      grd_list_btv_cfdd.Visible:=True;
      grd_list_btv_cfdd.Position.ColIndex:=24;
      grd_list_btv_cflr.Visible:=True;
      grd_list_btv_cflr.Position.ColIndex:=25;
      grd_list_btv_avg_date_enter.Visible:=True;
      grd_list_btv_avg_date_enter.Position.ColIndex:=26;
      grd_list_btv_avg_date_Meet.Visible:=True;
      grd_list_btv_avg_date_Meet.Position.ColIndex:=27;
      grd_list_btv_avg_date_st.Visible:=True;
      grd_list_btv_avg_date_st.Position.ColIndex:=28;
      grd_list_btv_avg_date_re.Visible:=True;
      grd_list_btv_avg_date_re.Position.ColIndex:=29;
      grd_list_btv_avg_date_send.Visible:=True;
      grd_list_btv_avg_date_send.Position.ColIndex:=30;
      grd_list_btv_avg_date_rtn.Visible:=True;
      grd_list_btv_avg_date_rtn.Position.ColIndex:=31;
      grd_list_btv_avg_date_cancel.Visible:=True;
      grd_list_btv_avg_date_cancel.Position.ColIndex:=32;
      grd_list_btv_avg_remark.Visible:=True;
      grd_list_btv_avg_remark.Position.ColIndex:=33;
      grd_list_btv_list_avgh.Visible:=True;
      grd_list_btv_list_avgh.Position.ColIndex:=34;
      grd_list_btv_xgdd.Visible:=True;
      grd_list_btv_xgdd.Position.ColIndex:=35;
      grd_list_btv_xgkrxx.Visible:=True;
      grd_list_btv_xgkrxx.Position.ColIndex:=36;
      grd_list_btv_zj.Visible:=True;
      grd_list_btv_zj.Position.ColIndex:=37;
      grd_list_btv_ava_remark.Visible:=True;
      grd_list_btv_ava_remark.Position.ColIndex:=38;
      grd_list_btv_ava_remark1.Visible:=True;
      grd_list_btv_ava_remark1.Position.ColIndex:=39;
      grd_list_btv_ava_remark2.Visible:=True;
      grd_list_btv_ava_remark2.Position.ColIndex:=40;
    end;
    grd_list_btv.Bands[cb_show.ItemIndex+1].Visible:=True;
  finally
    grd_list_btv.EndUpdate;
  end;
end;

end.
