unit ufrmSourceQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uVisaSignFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ufrmGroupEdit,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, cxPC, Data.Win.ADODB;

type
  TfrmSourceQuery = class(TForm)
    tc_top: TcxTabControl;
    cxLabel1: TcxLabel;
    edt_name: TcxTextEdit;
    btn_query: TcxButton;
    btn_ok: TcxButton;
    grd_scoure_tv: TcxGridDBTableView;
    grd_scoure_lv: TcxGridLevel;
    grd_scoure: TcxGrid;
    qry_asi: TADOQuery;
    ds_asi: TDataSource;
    grd_scoure_tvasi_id: TcxGridDBColumn;
    grd_scoure_tvasi_status: TcxGridDBColumn;
    grd_scoure_tvasi_Date_Ins: TcxGridDBColumn;
    grd_scoure_tvasi_User_Ins: TcxGridDBColumn;
    grd_scoure_tvasi_Date_Lst: TcxGridDBColumn;
    grd_scoure_tvasi_User_Lst: TcxGridDBColumn;
    grd_scoure_tvasi_Name: TcxGridDBColumn;
    grd_scoure_tvasi_Link: TcxGridDBColumn;
    grd_scoure_tvasi_Tel: TcxGridDBColumn;
    grd_scoure_tvasi_Addr: TcxGridDBColumn;
    procedure btn_queryClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure grd_scoure_tvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    Ftype:Integer;  //1新增订单 2修改订单
    FVisaSignFrm: TVisaSignFrm;  //1新增订单 窗口
    FfrmGroupEdit:TfrmGroupEdit; //2修改订单 窗口
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSourceQuery: TfrmSourceQuery;
  procedure ExecfrmSourceQuery_ins(AVisaSignFrm: TVisaSignFrm);
  procedure ExecfrmSourceQuery_ins2(AfrmGroupEdit:TfrmGroupEdit);
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

procedure ExecfrmSourceQuery_ins(AVisaSignFrm: TVisaSignFrm);
begin
  if frmSourceQuery=nil then
    frmSourceQuery:=TfrmSourceQuery.Create(Application);
  try
    with frmSourceQuery do
    begin
      Ftype:=1;
      FVisaSignFrm:=AVisaSignFrm;
      ShowModal;
    end;
  finally
    frmSourceQuery.Free;
    frmSourceQuery:=nil;
  end;
end;

procedure ExecfrmSourceQuery_ins2(AfrmGroupEdit:TfrmGroupEdit);
begin
  if frmSourceQuery=nil then
    frmSourceQuery:=TfrmSourceQuery.Create(Application);
  try
    with frmSourceQuery do
    begin
      Ftype:=2;
      FfrmGroupEdit:=AfrmGroupEdit;
      ShowModal;
    end;
  finally
    frmSourceQuery.Free;
    frmSourceQuery:=nil;
  end;
end;

procedure TfrmSourceQuery.btn_okClick(Sender: TObject);
begin

  if not qry_asi.IsEmpty then
  begin
    //1新增订单
    if Ftype=1 then
    begin
      with FVisaSignFrm.Qry_Avg do
      begin
        if state=dsinsert then
        begin
          fieldbyname('avg_SourceName').AsString:=qry_asi.FieldByName('asi_Name').AsString;
          fieldbyname('avg_Source_link').AsString:=qry_asi.FieldByName('asi_Link').AsString;
          fieldbyname('avg_Source_tel').AsString:=qry_asi.FieldByName('asi_Tel').AsString;
          fieldbyname('avg_Source_addr').AsString:=qry_asi.FieldByName('asi_Addr').AsString;

          frmSourceQuery.Close;  //关窗
        end;
      end;
    end
    else if Ftype=2 then   //2修改订单
    begin
      with FfrmGroupEdit.Qry_Avg do
      begin
        if state=dsEdit then
        begin
          fieldbyname('avg_SourceName').AsString:=qry_asi.FieldByName('asi_Name').AsString;
          fieldbyname('avg_Source_link').AsString:=qry_asi.FieldByName('asi_Link').AsString;
          fieldbyname('avg_Source_tel').AsString:=qry_asi.FieldByName('asi_Tel').AsString;
          fieldbyname('avg_Source_addr').AsString:=qry_asi.FieldByName('asi_Addr').AsString;

          frmSourceQuery.Close;  //关窗
        end;
      end;
    end;
    //其他类型暂时没有
  end
  else
  begin
    MessageOfInformation('请先查找。',False);
  end;
end;

procedure TfrmSourceQuery.btn_queryClick(Sender: TObject);
begin
  if edt_name.Text='' then
  begin
    MessageOfInformation('请输入查询条件。',False);
    Exit;
  end;
  if pos('''',edt_name.Text)>0 then
  begin
    MessageOfInformation('查询条件不能包含保留字符。',False);
    Exit;
  end;

  with qry_asi do
  begin
    if Active then Close;
    sql.Text:='select * '
             +' from asi_source_info with(nolock) '
             +' where asi_status<>''D'' '
             +' and asi_Name like ''%'+edt_name.Text+'%'' ';
    Open;
    btn_ok.Enabled:=not IsEmpty;
  end;

end;

procedure TfrmSourceQuery.grd_scoure_tvCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btn_okClick(nil);
end;

end.
