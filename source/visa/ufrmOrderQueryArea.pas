unit ufrmOrderQueryArea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel, cxgridexportlink,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, dxBarExtItems, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxdbtrel;

type
  TfrmOrderQueryArea = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1avg_id_aar: TcxGridDBColumn;
    cxGrid1DBTableView1avg_name_aar: TcxGridDBColumn;
    cxGrid1DBTableView1_count: TcxGridDBColumn;
    cxGrid1DBTableView1_avg_num: TcxGridDBColumn;
    cxGrid1DBTableView1_avg_amount: TcxGridDBColumn;
    sd_1: TSaveDialog;
    btn_excel: TdxBarButton;
    cb_date: TcxComboBox;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    datebegin: TdxBarDateCombo;
    dateend: TdxBarDateCombo;
    ds_avt_select: TDataSource;
    qry_ast: TADOQuery;
    qry_avt_select: TADOQuery;
    ltv_type: TdxLookupTreeView;
    edt_SourceName: TcxTextEdit;
    cb_source: TcxComboBox;
    cb_state: TcxComboBox;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    dxBarStatic5: TdxBarStatic;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    edt_user_enter: TcxTextEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_excelClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrderQueryArea: TfrmOrderQueryArea;
  procedure ExecfrmOrderQueryArea;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

procedure ExecfrmOrderQueryArea;
begin
  if frmOrderQueryArea=nil then
    frmOrderQueryArea:=TfrmOrderQueryArea.Create(Application);
  frmOrderQueryArea.WindowState:=wsMaximized;
  frmOrderQueryArea.Show;
end;

procedure TfrmOrderQueryArea.btn_excelClick(Sender: TObject);
begin
  //inherited;    ����Excel
  if not Qry_Module.Active then Exit;
  if Qry_Module.IsEmpty then Exit;
  with sd_1 do
  begin
    filename:='��������-����ͳ��'+FormatDateTime('mmddhhnnss',Now);
    if Execute then
    begin
      ExportGridToExcel(FileName,cxGrid1,True,True);
    end;
  end;

end;

{select avg_id_aar,avg_name_aar,count(0) as _count,sum(avg_num) as _avg_num,sum(avg_amount) as _avg_amount
from avg_visa_group with(nolock)
where avg_status<>'D'
and avg_date_enter between '2014-11-01' and '2014-11-01'
group by avg_id_aar,avg_name_aar}

procedure TfrmOrderQueryArea.Btn_QueryClick(Sender: TObject);
var
  vname:string;
begin
  inherited;//��ѯ
  if datebegin.Date>dateend.Date then
  begin
    MessageOfInformation('��ʼ���ڲ��ܴ��ڽ������ڣ�',False);
    Exit;
  end;

  with Qry_Module do
  begin
    if Active then Close;
    SQL.Text:='select avg_id_aar,avg_name_aar,count(0) as _count,sum(avg_num) as _avg_num,sum(avg_amount) as _avg_amount '
             +' from avg_visa_group with(nolock) '
             +' where avg_status<>''D'' ';

    case cb_date.ItemIndex of  //����
    0:SQL.Add(' and avg_date_enter ');//�뵥����0
    1:SQL.Add(' and avg_date_Meet ');//ԤԼ����1
    2:SQL.Add(' and avg_date_send ');//��ǩ����2
    3:SQL.Add(' and avg_date_rtn ');//��ǩ����3
    4:SQL.Add(' and avg_date_cancel ');//��ǩ����4
    5:SQL.Add(' and avg_date_st ');//��������5
    6:SQL.Add(' and avg_date_re ');//��������6
    end;
    SQL.Text:=SQL.Text+' between '''+FormatDateTime('yyyy-mm-dd 00:00:00',datebegin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',dateend.Date)+''' ';

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
    //�뵥��   2015-04-24
    vname:=Replace_keyword(edt_user_enter.Text);
    if vname<>'' then
    begin
      SQL.Add(' and avg_user_enter = '''+vname+'''                 ' );
    end;

    SQL.Add(' group by avg_id_aar,avg_name_aar ');
    Open;
  end;
end;

procedure TfrmOrderQueryArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmOrderQueryArea);
end;

procedure TfrmOrderQueryArea.FormCreate(Sender: TObject);
begin
  inherited;
  //��ȡ״̬ѡ��
  CommonDM.GDB_state_view(cb_state.Properties.Items);
  cb_state.ItemIndex:=0;
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
end;

end.
