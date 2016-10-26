unit uVisaAppFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxBar, Data.Win.ADODB, cxPC, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar,uVisaSignFrm, Vcl.StdCtrls, dxdbtrel, cxCheckBox, cxRadioGroup,
  Vcl.Menus, cxButtons, cxSplitter;

type
  TVisaAppFrm = class(TModuleMDIFrm)
    cxTabControl2: TcxTabControl;
    cxTabControl3: TcxTabControl;
    cxTabControl4: TcxTabControl;
    cxTabControl5: TcxTabControl;
    cxTabControl6: TcxTabControl;
    cxTabControl7: TcxTabControl;
    cxTabControl8: TcxTabControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    CB_Act: TcxLookupComboBox;
    ADOSP_GetSignDate: TADOStoredProc;
    dsSigndate: TDataSource;
    ADOSP_GetStartDate: TADOStoredProc;
    dsStartdate: TDataSource;
    cxGridDBTableView1avg_date_start: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_sign: TcxGridDBColumn;
    DE_Start: TcxDateEdit;
    DE_Sign: TcxDateEdit;
    qryVisaM: TADOQuery;
    dsVisaM: TDataSource;
    cxGridDBTableView2avg_id_act: TcxGridDBColumn;
    cxGridDBTableView2avg_id_type: TcxGridDBColumn;
    cxGridDBTableView2avg_state: TcxGridDBColumn;
    cxGridDBTableView2avg_date_sign: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dsSelCountry: TDataSource;
    qrySelCountry: TADOQuery;
    btn_booking: TdxBarButton;
    btn_refund: TdxBarButton;
    btn_before_send: TdxBarButton;
    btn_GroupEdit: TdxBarButton;
    btn_ApplicationEdit: TdxBarButton;
    Memo1: TMemo;
    cxGridDBTableView2avg_id: TcxGridDBColumn;
    btn_list: TdxBarButton;
    btn_split_orders: TdxBarButton;
    btn_open: TdxBarButton;
    btn_add: TdxBarButton;
    btn_refuse: TdxBarButton;
    btnLingGuanBuLiao: TdxBarButton;
    cb_country: TcxCheckBox;
    cb_area: TcxCheckBox;
    qry_area: TADOQuery;
    ds_area: TDataSource;
    ltv_area: TdxLookupTreeView;
    rb_sign_st: TcxRadioButton;
    rb_send_rtn: TcxRadioButton;
    btn_date_clear: TcxButton;
    cxSplitter1: TcxSplitter;
    btn_fanyi: TdxBarButton;
    btn_fuyin: TdxBarButton;
    btn_zhengli: TdxBarButton;
    btn_xiaoqian: TdxBarButton;
    btnLingGuanShenHe: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBTableView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure btn_listClick(Sender: TObject);
    procedure cxGridDBTableView2FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGrid1DBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure btn_addClick(Sender: TObject);
    procedure cb_areaPropertiesEditValueChanged(Sender: TObject);
    procedure cb_countryPropertiesEditValueChanged(Sender: TObject);
    procedure rb_sign_stClick(Sender: TObject);
    procedure ltv_areaCloseUp(Sender: TObject; Accept: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btn_date_clearClick(Sender: TObject);
  private
    { Private declarations }
    Farea_all:string;
    VisaSign:TVisaSignFrm;
    FSelectCountryId:Integer;
    FSelectAreaId:Integer;
    procedure RefreshQryVisaM;                    //ˢ��ǩ֤�Ŷ�QryVisaM

    procedure RefreshSignDate(adate: TDate);      //ˢ���������ڵ�ѡ��Χ
    procedure RefreshStartDate(adate: TDate);     //ˢ�³������ڵ�ѡ��Χ

    function getSelectDateSign:string;  //��ȡѡ�е����루���������ڼ�
    function getSelectDateSt:string;    //��ȡѡ�еĳ������ڼ�
    function getSelectGroup:string;     //��ȡѡ��Ķ���

    procedure set_btn_active;  //���ð�ť�Ŀ�������  �򿪶�����ϸ����� ���Ǹ�open���̵���
    procedure open_order_detail(Avg_id:Integer);//�򿪶�����ϸ���
  public
    { Public declarations }
    procedure refresh_avg;  //ˢ���¶�����ϸ��Ϣ���ڲ𵥱���ɹ������
  end;

var
  VisaAppFrm: TVisaAppFrm;

  procedure ExecVisaAppfrm;
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit, uVisaAppSelectGuestListFrm,ufrmAddGuest,
ufrmGroupEdit,ufrmApplicationEdit,ufrmVisaAppList;

procedure ExecVisaAppfrm;
begin
  if VisaAppfrm=nil then Application.CreateForm(TVisaAppFrm,VisaAppFrm);
  VisaAppfrm.Show;
end;




procedure TVisaAppFrm.btn_addClick(Sender: TObject);
begin
  //inherited; ׷�ӿ���
  with qryVisaM do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if ExecfrmAddGuest(FieldByName('avg_id').AsInteger) then
      open_order_detail(FieldByName('avg_id').AsInteger);
  end;
end;

procedure TVisaAppFrm.btn_date_clearClick(Sender: TObject);
var
  i:Integer;
begin
  //inherited;  �������ѡ��
  cxGrid1DBTableView1.BeginUpdate;
  cxGridDBTableView1.BeginUpdate;
  try
    with cxGrid1DBTableView1 do
    begin
      for i := 0 to DataController.RecordCount-1 do
        if ViewData.Records[i].Selected then
          ViewData.Records[i].Selected:=False;
    end;
    with cxGridDBTableView1 do
    begin
      for i := 0 to DataController.RecordCount-1 do
        if ViewData.Records[i].Selected then
          ViewData.Records[i].Selected:=False;
    end;
  finally
    cxGrid1DBTableView1.EndUpdate;
    cxGridDBTableView1.EndUpdate;
  end;
end;

procedure TVisaAppFrm.btn_listClick(Sender: TObject);
var
  vavg_id:string;
begin
  //inherited; ǩ֤����
  vavg_id:=getSelectGroup;
  if vavg_id<>'' then
    ExecfrmVisaAppList(vavg_id)
  else
    MessageOfInformation('��ѡ��ǩ֤���ϡ�',False);
end;

procedure TVisaAppFrm.cb_areaPropertiesEditValueChanged(Sender: TObject);
begin
  //inherited; ǩ֤����ѡ��
  cb_country.Checked:=not cb_area.Checked;
  ltv_area.Enabled:=cb_area.Checked;
  if cb_area.Checked then
  begin
    FSelectCountryId :=0;
    FSelectAreaId:=0;
    if qry_area.FieldByName('_id').AsInteger>0 then   //����
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //��
        FSelectAreaId:=qry_area.FieldByName('_id').AsInteger;
      if qry_area.FieldByName('_level').AsInteger=2 then   //����
        FSelectCountryId :=qry_area.FieldByName('_id').AsInteger;
    end;
    RefreshSignDate(DE_Sign.Date);
    RefreshStartDate(DE_Start.Date);
  end;
end;

procedure TVisaAppFrm.cb_countryPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  //inherited; ǩ֤����ѡ��
  cb_area.Checked:=not cb_country.Checked;
  CB_Act.Enabled:=cb_country.Checked;
  if cb_country.Checked then
  begin
    if CB_Act.EditValue<>null then
      FSelectCountryId :=CB_Act.EditValue
    else
      FSelectCountryId :=0;
    FSelectAreaId:=0;
    RefreshSignDate(DE_Sign.Date);
    RefreshStartDate(DE_Start.Date);
  end;
end;

procedure TVisaAppFrm.cxGrid1DBTableView1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

//  try
//    Screen.Cursor := crHourGlass;
//    if ADOSP_GetSignDate.IsEmpty then
//    begin
//      Exit;
//    end;
//    RefreshQryVisaM;
//  finally
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TVisaAppFrm.cxGrid1DBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if ADOSP_GetSignDate.IsEmpty then
    begin
      Exit;
    end;
    RefreshQryVisaM;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TVisaAppFrm.cxGridDBTableView1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

//  try
//    Screen.Cursor := crHourGlass;
//    if ADOSP_GetStartDate.IsEmpty then
//    begin
//      Exit;
//    end;
//    RefreshQryVisaM;
//  finally
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TVisaAppFrm.cxGridDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if ADOSP_GetStartDate.IsEmpty then
    begin
      Exit;
    end;
    RefreshQryVisaM;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TVisaAppFrm.cxGridDBTableView2CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TVisaAppFrm.cxGridDBTableView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  //inherited;  ǩ֤���ϸı佹���ʱ��
  with qryVisaM do
  begin
    if not Active then
      VisaSign.Open(0);
    if IsEmpty then
      VisaSign.Open(0)
    else
      open_order_detail(FieldByName('avg_id').AsInteger);
  end;
end;

procedure TVisaAppFrm.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  //inherited;  ǩ֤����ѡ��ر�
  if not cb_country.Checked then Exit;
  if CB_Act.EditValue<>null then
    FSelectCountryId :=CB_Act.EditValue
  else
    FSelectCountryId :=0;
  FSelectAreaId:=0;
  RefreshSignDate(DE_Sign.Date);
  RefreshStartDate(DE_Start.Date);
//  SetToolButtonStatus;
end;

procedure TVisaAppFrm.ltv_areaCloseUp(Sender: TObject; Accept: Boolean);
begin
  //inherited;   ǩ֤����ѡ��ر�
  if not cb_area.Checked then Exit;
  FSelectCountryId :=0;
  FSelectAreaId:=0;
  if qry_area.FieldByName('_id').AsInteger>0 then   //����
  begin
    if qry_area.FieldByName('_level').AsInteger=1 then   //��
      FSelectAreaId:=qry_area.FieldByName('_id').AsInteger;
    if qry_area.FieldByName('_level').AsInteger=2 then   //����
      FSelectCountryId :=qry_area.FieldByName('_id').AsInteger;
  end;
  RefreshSignDate(DE_Sign.Date);
  RefreshStartDate(DE_Start.Date);
end;

procedure TVisaAppFrm.dxBarButton1Click(Sender: TObject);
var
  btn:TdxBarButton;
begin
  inherited;
  if qryVisaM.IsEmpty then Exit;
  btn:=(sender as TdxBarButton);
  case btn.Tag of
    1:ExecVisaAppSelectGuestListFrm('���',qryVisaM.FieldValues['avg_id']);
    2:ExecVisaAppSelectGuestListFrm('������',qryVisaM.FieldValues['avg_id']);
    3:ExecVisaAppSelectGuestListFrm('ԤԼ',qryVisaM.FieldValues['avg_id']);
    4:ExecVisaAppSelectGuestListFrm('����',qryVisaM.FieldValues['avg_id']);
    5:ExecVisaAppSelectGuestListFrm('��ǩ',qryVisaM.FieldValues['avg_id']);
    6:ExecVisaAppSelectGuestListFrm('ȡ��',qryVisaM.FieldValues['avg_id']);
    7:ExecVisaAppSelectGuestListFrm('����',qryVisaM.FieldValues['avg_id']);
    8:ExecVisaAppSelectGuestListFrm('�˸�',qryVisaM.FieldValues['avg_id']);
    9:ExecVisaAppSelectGuestListFrm('��ֶ���',qryVisaM.FieldValues['avg_id']);
    10:ExecfrmGroupEdit(qryVisaM.FieldValues['avg_id']);//�޸Ķ���
    11:ExecfrmApplicationEdit(VisaSign.qry_ava.FieldByName('ava_id').AsInteger);//�޸Ŀ�����Ϣ
    //12�� ǩ֤���� �����¼�����
    //13:  ׷�� �����¼�����
    14:ExecVisaAppSelectGuestListFrm('��ǩ',qryVisaM.FieldValues['avg_id']);
    15:ExecVisaAppSelectGuestListFrm('��ݲ���',qryVisaM.FieldValues['avg_id']);

    16:ExecVisaAppSelectGuestListFrm('����',qryVisaM.FieldValues['avg_id']);
    17:ExecVisaAppSelectGuestListFrm('��ӡ',qryVisaM.FieldValues['avg_id']);
    18:ExecVisaAppSelectGuestListFrm('����',qryVisaM.FieldValues['avg_id']);
    19:ExecVisaAppSelectGuestListFrm('��ǩ',qryVisaM.FieldValues['avg_id']);
    20:ExecVisaAppSelectGuestListFrm('������',qryVisaM.FieldValues['avg_id']);
  end;
  open_order_detail(qryVisaM.FieldValues['avg_id']);
end;

procedure TVisaAppFrm.FormCreate(Sender: TObject);
begin
  inherited;

  DE_Start.Date:=GetDate;
  DE_Sign.Date:=DE_Start.Date-30;

  FSelectCountryId:=0;
  FSelectAreaId:=0;

  VisaSign:=ExecVisaSignFrm(cxTabControl8);
  VisaSign.tc_up_down.Visible:=True; //�ɽ��������ƶ����������

  with qrySelCountry do
  begin
    if Active then close;
    Parameters.ParamByName('aus_id').Value:=GUserID;
    open;
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

procedure TVisaAppFrm.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
//var
//  i:Integer;
begin
  //inherited; ���ڻ����¼� ��
//  with qryVisaM do
//  begin
//    if not Active then Exit;
//    if IsEmpty then Exit;
//    if not Eof then Next;
//  end;

  //Memo1.Text:=FormatDateTime('yyyy-mm-dd hh:nn:ss',now)+'��';
//  with cxGridDBTableView2 do
//  begin
//    if DataController.RecordCount=0 then Exit;
//    if Controller.SelectedRowCount=0 then
//    begin
//      i:=-1;
//    end
//    else
//    begin
//      i:=Controller.SelectedRows[0].RecordIndex;
//    end;
//    if i<0 then
//    begin
//      ViewData.Records[i].Selected:=True;
//    end
//    else
//    begin
//      if i<DataController.RecordCount-1 then
//      begin
//        ViewData.Records[i].Selected:=False;
//        ViewData.Records[i+1].Selected:=True;
//      end;
//    end;
//  end;
end;

procedure TVisaAppFrm.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
//var
//  i:Integer;
begin
  //inherited; ���ڻ����¼� ��
//  with qryVisaM do
//  begin
//    if not Active then Exit;
//    if IsEmpty then Exit;
//    if not Bof then Prior;
//  end;
  //Memo1.Text:=FormatDateTime('yyyy-mm-dd hh:nn:ss',now)+'��';
//  with cxGridDBTableView2 do
//  begin
//    if DataController.RecordCount=0 then Exit;
//    if DataController.FocusedRecordIndex>0 then
//      DataController.FocusedRecordIndex:=DataController.FocusedRecordIndex-1;
//  end;
//  with cxGridDBTableView2 do
//  begin
//    if DataController.RecordCount=0 then Exit;
//    if Controller.SelectedRowCount=0 then
//    begin
//      i:=-1;
//    end
//    else
//    begin
//      i:=Controller.SelectedRows[0].RecordIndex;
//    end;
//    if i<0 then
//    begin
//      ViewData.Records[i].Selected:=True;
//    end
//    else
//    begin
//      if i>0 then
//      begin
//        ViewData.Records[i].Selected:=False;
//        ViewData.Records[i-1].Selected:=True;
//      end;
//    end;
//  end;
end;

procedure TVisaAppFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  VisaAppFrm:=nil;

end;

procedure TVisaAppFrm.RefreshQryVisaM;
var
  vdatesign,vdatest:string;
begin
  vdatesign:=getSelectDateSign;  //��ȡѡ�е����루���������ڼ�
  vdatest:=getSelectDateSt;    //��ȡѡ�еĳ������ڼ�
  with qryVisaM do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_date_sign,avg_id_act,avg_id_type,avg_state,act_name,avt_Name'+#13#10+
              'from avg_visa_group,act_country,avt_visa_type'+#13#10+
              'where avg_id_act=act_id and avt_id=avg_id_type '+
              ' and avg_status<>''D'' ';
    if FSelectCountryId>0 then
    begin
      SQL.Text:=SQL.Text+' and  avg_id_act='+IntToStr(FSelectCountryId);
    end
    else
    begin
      if FSelectAreaId>0 then
        SQL.Text:=SQL.Text+' and  avg_id_aar='+IntToStr(FSelectAreaId);
    end;
    if (vdatesign='') and (vdatest='') then
    begin
      VisaSign.Open(0);
      Exit;
    end;
    if rb_sign_st.Checked then      //����ͳ�������
    begin
      if vdatesign<>'' then
        SQL.Text:=SQL.Text+' and avg_date_sign in ('+vdatesign+')';
      if vdatest<>'' then
        SQL.Text:=SQL.Text+' and avg_date_st in ('+vdatest+')';
    end
    else    //��ǩ�ͳ�ǩ����
    begin
      if vdatesign<>'' then
        SQL.Text:=SQL.Text+' and avg_date_send in ('+vdatesign+')';
      if vdatest<>'' then
        SQL.Text:=SQL.Text+' and avg_date_rtn in ('+vdatest+')';
    end;
//    if cxGrid1DBTableView1.DataController.GetSelectedCount>0 then
//      SQL.Text:=SQL.Text+' and avg_date_sign='''+ADOSP_GetSignDate.FieldByName('avg_date_sign').AsString+'''';
//    if cxGridDBTableView1.DataController.GetSelectedCount>0 then
//      SQL.Text:=SQL.Text+' and avg_date_st='''+ADOSP_GetStartDate.FieldByName('avg_date_st').AsString+'''';
    SQL.Text:=SQL.Text+' order by avg_invoiceno  ';
    //Memo1.Text:=SQL.Text;
    Open;
    if IsEmpty then
    begin
      VisaSign.Open(0);
    end
    else
    begin
      open_order_detail(qryVisaM.FieldValues['avg_id']);
    end;
  end;    // with
//  qryVisaApp.Open;
//  qryVisaFollow.Open;

end;

procedure TVisaAppFrm.RefreshSignDate(adate: TDate);
var
  vtype:Integer;
begin
  vtype:=1;
  if rb_send_rtn.Checked then
    vtype:=3;
  with ADOSP_GetSignDate do
  try
    Screen.Cursor := crHourGlass;
    if Active then Close;
    Parameters.ParamByName('@idate').Value := adate;
    Parameters.ParamByName('@iareaid').Value := FSelectAreaId;
    Parameters.ParamByName('@icountryid').Value := FSelectCountryId;
    Parameters.ParamByName('@itype').Value := vtype;
    Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TVisaAppFrm.RefreshStartDate(adate: TDate);
var
  vtype:Integer;
begin
  vtype:=2;
  if rb_send_rtn.Checked then
    vtype:=4;
  with ADOSP_GetStartDate do
  try
    Screen.Cursor := crHourGlass;
    if Active then Close;
    Parameters.ParamByName('@idate').Value := adate;
    Parameters.ParamByName('@iareaid').Value := FSelectAreaId;
    Parameters.ParamByName('@icountryid').Value := FSelectCountryId;
    Parameters.ParamByName('@itype').Value := vtype;
    Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TVisaAppFrm.getSelectDateSign:string;  //��ȡѡ�е����루���������ڼ�
var
  i:Integer;
begin
  Result:='';
  with cxGrid1DBTableView1 do
  begin
    if Controller.SelectedRowCount=0 then Exit;
    for i := 0 to Controller.SelectedRowCount-1 do
    begin
      if DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGrid1DBTableView1avg_date_sign.Index)<>null then
      begin
        if Result<>'' then
          Result:=Result+','''+FormatDateTime('yyyy-mm-dd',DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGrid1DBTableView1avg_date_sign.Index))+''''
        else
          Result:=''''+FormatDateTime('yyyy-mm-dd',DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGrid1DBTableView1avg_date_sign.Index))+'''';
      end;
    end;
  end;
end;

function TVisaAppFrm.getSelectDateSt:string;    //��ȡѡ�еĳ������ڼ�
var
  i:Integer;
begin
  Result:='';
  with cxGridDBTableView1 do
  begin
    if Controller.SelectedRowCount=0 then Exit;
    for i := 0 to Controller.SelectedRowCount-1 do
    begin
      if DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView1avg_date_start.Index)<>null then
      begin
        if Result<>'' then
          Result:=Result+','''+FormatDateTime('yyyy-mm-dd',DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView1avg_date_start.Index))+''''
        else
          Result:=''''+FormatDateTime('yyyy-mm-dd',DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView1avg_date_start.Index))+'''';
      end;
    end;
  end;
end;

function TVisaAppFrm.getSelectGroup:string;     //��ȡѡ��Ķ���
var
  i:Integer;
begin
  Result:='';
  with cxGridDBTableView2 do
  begin
    if Controller.SelectedRowCount=0 then Exit;
    for i := 0 to Controller.SelectedRowCount-1 do
    begin
      if DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView2avg_id.Index)<>null then
      begin
        if Result<>'' then
          Result:=Result+','+IntToStr(DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView2avg_id.Index))
        else
          Result:=IntToStr(DataController.GetValue(Controller.SelectedRows[i].RecordIndex,cxGridDBTableView2avg_id.Index));
      end;
    end;
  end;
end;


procedure TVisaAppFrm.rb_sign_stClick(Sender: TObject);
begin
  //inherited;  �������� ����/��������  ��ǩ/��ǩ����
  if rb_sign_st.Checked then
  begin
    cxTabControl7.Tabs.Text:='��������';
    cxTabControl6.Tabs.Text:='��������';
  end;
  if rb_send_rtn.Checked then
  begin
    cxTabControl7.Tabs.Text:='��ǩ����';
    cxTabControl6.Tabs.Text:='��ǩ����';
  end;
  RefreshSignDate(DE_Sign.Date);
  RefreshStartDate(DE_Start.Date);
end;

procedure TVisaAppFrm.refresh_avg;  //ˢ���¶�����ϸ��Ϣ���ڲ𵥱���ɹ������
begin
  if VisaSign=nil then Exit;

  with qryVisaM do
  begin
    if not Active then
    begin
      VisaSign.Open(0);
      Exit;
    end;
    if IsEmpty then
    begin
      VisaSign.Open(0);
      Exit;
    end;
    open_order_detail(FieldByName('avg_id').AsInteger);
  end;
end;

procedure TVisaAppFrm.open_order_detail(Avg_id:Integer);//�򿪶�����ϸ���
begin
  VisaSign.Open(Avg_id);
  set_btn_active;  //���ð�ť�Ŀ�������  �򿪶�����ϸ����� ����������״̬
end;

procedure TVisaAppFrm.set_btn_active;  //���ð�ť�Ŀ�������  �򿪶�����ϸ����� ���Ǹ�open���̵���
var
  vcj:Boolean; //���
  vbzl:Boolean; //������
  vfy:Boolean; //����
  vcopy:Boolean; //��ӡ
  vyy:Boolean; //ԤԼ
  vzl:Boolean; //����
  vds:Boolean; //����
  vsq:Boolean; //��ǩ
  vlgbl:Boolean; //��ݲ���
  vlgsh:Boolean; //������
  vqh:Boolean; //ȡ��
  vjq:Boolean; //��ǩ
  vff:Boolean; //����
  vxq:Boolean; //��ǩ
begin
  vcj:=true; //���
  vbzl:=true; //������
  vfy:=true; //����
  vcopy:=true; //��ӡ
  vyy:=true; //ԤԼ
  vzl:=true; //����
  vds:=true; //����
  vsq:=true; //��ǩ
  vlgbl:=true; //��ݲ���
  vlgsh:=true; //������
  vqh:=true; //ȡ��
  vjq:=true; //��ǩ
  vff:=true; //����
  vxq:=true; //��ǩ

  if VisaSign.need_op_order then
  begin
    VisaSign.op_button_active(vcj, //���
                              vbzl, //������
                              vfy, //����
                              vcopy, //��ӡ
                              vyy, //ԤԼ
                              vzl, //����
                              vds, //����
                              vsq, //��ǩ
                              vlgbl, //��ݲ���
                              vlgsh, //������
                              vqh, //ȡ��
                              vjq, //��ǩ
                              vff, //����
                              vxq //��ǩ
                            );
  end;

  btn_open.Enabled:=vcj; //���
  dxBarButton4.Enabled:=vbzl; //������
  btn_fanyi.Enabled:=vfy; //����
  btn_fuyin.Enabled:=vcopy; //��ӡ
  btn_booking.Enabled:=vyy; //ԤԼ
  btn_zhengli.Enabled:=vzl; //����
  btn_before_send.Enabled:=vds; //����
  dxBarButton1.Enabled:=vsq; //��ǩ
  btnLingGuanBuLiao.Enabled:=vlgbl; //��ݲ���
  btnLingGuanShenHe.Enabled:= vlgsh; //������
  dxBarButton2.Enabled:=vqh; //ȡ��
  btn_refuse.Enabled:=vjq; //��ǩ
  dxBarButton3.Enabled:=vff; //����
  btn_xiaoqian.Enabled:=vxq; //��ǩ
end;


end.
