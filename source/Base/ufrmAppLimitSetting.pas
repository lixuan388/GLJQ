unit ufrmAppLimitSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxBar, cxClasses, Data.Win.ADODB, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxSplitter, cxCheckBox, cxContainer, cxDBEdit, cxLabel,
  cxDBLabel;

type
  TfrmAppLimitSetting = class(TModuleMDIGirdFrm)
    cxSplitter1: TcxSplitter;
    pc_main: TcxPageControl;
    ts_main: TcxTabSheet;
    grd_state_tv: TcxGridDBTableView;
    grd_state_lv: TcxGridLevel;
    grd_state: TcxGrid;
    cxGrid1DBTableView1alm_name: TcxGridDBColumn;
    cxGrid1DBTableView1alm_active_flg: TcxGridDBColumn;
    cxGrid1DBTableView1alm_id: TcxGridDBColumn;
    tc_top: TcxTabControl;
    cxDBLabel1: TcxDBLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    qry_ald: TADOQuery;
    ds_ald: TDataSource;
    grd_state_tvald_id: TcxGridDBColumn;
    grd_state_tvald_user_ins: TcxGridDBColumn;
    grd_state_tvald_date_ins: TcxGridDBColumn;
    grd_state_tvald_user_lst: TcxGridDBColumn;
    grd_state_tvald_date_lst: TcxGridDBColumn;
    grd_state_tvald_status: TcxGridDBColumn;
    grd_state_tvald_id_alm: TcxGridDBColumn;
    grd_state_tvald_name: TcxGridDBColumn;
    grd_state_tvald_app_flg: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure qry_aldAfterEdit(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
  private
    { Private declarations }
    procedure refresh_detail;
    procedure set_state(Aedit_flg:Boolean);
  public
    { Public declarations }
  end;

var
  frmAppLimitSetting: TfrmAppLimitSetting;
  procedure ExecfrmAppLimitSetting;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

procedure ExecfrmAppLimitSetting;
begin
  if frmAppLimitSetting=nil then
    frmAppLimitSetting:=TfrmAppLimitSetting.Create(Application);
  frmAppLimitSetting.Show;
end;

procedure TfrmAppLimitSetting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  frmAppLimitSetting:=nil;
end;


procedure TfrmAppLimitSetting.FormShow(Sender: TObject);
begin
  inherited;
  Btn_Insert.Visible:=ivNever;
  Btn_Delete.Visible:=ivNever;
end;

procedure TfrmAppLimitSetting.qry_aldAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with qry_ald do
  begin
    FieldValues['ald_status']:='E';
    FieldValues['ald_user_lst']:=GUserName;
    FieldValues['ald_date_lst']:=GetDatetime;
  end;
end;

procedure TfrmAppLimitSetting.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['alm_status']:='E';
    FieldValues['alm_user_lst']:=GUserName;
    FieldValues['alm_date_lst']:=GetDatetime;
  end;
end;

procedure TfrmAppLimitSetting.refresh_detail;
begin
  with Qry_Module do
  begin
    if qry_ald.Active then qry_ald.Close;
    if not Active then Exit;
    if IsEmpty then Exit;
    qry_ald.Parameters.ParamByName('ald_id_alm').Value:=Qry_Module.FieldByName('alm_id').AsInteger;
    qry_ald.Open;
  end;
end;

procedure TfrmAppLimitSetting.set_state(Aedit_flg:Boolean);
begin

  Btn_Save.Enabled:=Aedit_flg;
  Btn_Cancel.Enabled:=Aedit_flg;
  Btn_Insert.Enabled:=not Aedit_flg;
  Btn_Query.Enabled:=not Aedit_flg;
  Btn_Edit.Enabled:=not Aedit_flg;
  Btn_Delete.Enabled:=not Aedit_flg;
  Btn_Approve.Enabled:=not Aedit_flg;

  ds_ald.AutoEdit:=Aedit_flg;
end;

procedure TfrmAppLimitSetting.Btn_CancelClick(Sender: TObject);
begin
  qry_ald.Cancel;
  inherited;
  set_state(False);
end;

procedure TfrmAppLimitSetting.Btn_EditClick(Sender: TObject);
begin
  inherited;
  set_state(True);
end;

procedure TfrmAppLimitSetting.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  refresh_detail;
end;

procedure TfrmAppLimitSetting.Btn_SaveClick(Sender: TObject);
begin
  pc_main.SetFocus;

  try
    CommonDM.ConVisa.BeginTrans;
    qry_ald.UpdateBatch(arAll);
    Qry_Module.UpdateBatch(arAll);
    CommonDM.ConVisa.CommitTrans;

    MessageOfInformation('保存成功。',False);
    set_state(False);
  except
    CommonDM.ConVisa.RollbackTrans;
    MessageOfWarning('保存失败！',False);
  end;
end;

procedure TfrmAppLimitSetting.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if Btn_Query.Enabled then
    refresh_detail;
end;


end.
