unit ufrmNoticeNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.Menus, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, Vcl.StdCtrls, cxButtons, cxPC, cxMemo, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Data.DB, cxDBData, cxGridDBTableView, Data.Win.ADODB,
  cxImageComboBox;

type
  TfrmNoticeNew = class(TForm)
    cxTabControl1: TcxTabControl;
    btn_send: TcxButton;
    cxLabel1: TcxLabel;
    datebegin: TcxDateEdit;
    dateend: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    memo_notice: TcxMemo;
    cxTabControl2: TcxTabControl;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabControl3: TcxTabControl;
    btn_add_all: TcxButton;
    btn_add: TcxButton;
    btn_del: TcxButton;
    btn_del_all: TcxButton;
    cxTabControl4: TcxTabControl;
    cxTabControl5: TcxTabControl;
    cxLabel4: TcxLabel;
    edt_name: TcxTextEdit;
    cxButton1: TcxButton;
    grd_user_lv: TcxGridLevel;
    grd_user: TcxGrid;
    grd_user_tv: TcxGridTableView;
    grd_user_tv_aus_id: TcxGridColumn;
    grd_user_tv_aus_username: TcxGridColumn;
    grd_user_tv_aus_userjob: TcxGridColumn;
    grd_notice_tv: TcxGridDBTableView;
    grd_notice_lv: TcxGridLevel;
    grd_notice: TcxGrid;
    qry_aus: TADOQuery;
    qry_cnt: TADOQuery;
    ds_cnt: TDataSource;
    grd_notice_tvColumn1: TcxGridDBColumn;
    grd_notice_tvColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure grd_user_tvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure grd_notice_tvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure btn_del_allClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_add_allClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_sendClick(Sender: TObject);
  private
     Fres:Boolean;
     Fname:string;
    { Private declarations }
    procedure refresh_user;
  public
    { Public declarations }
  end;

var
  frmNoticeNew: TfrmNoticeNew;
  function ExecfrmNoticeNew:Boolean;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

function ExecfrmNoticeNew:Boolean;
begin
  if frmNoticeNew=nil then
    frmNoticeNew:=TfrmNoticeNew.Create(Application);
  try
    with frmNoticeNew do
    begin
      Fres:=False;
      ShowModal;
    end;
  finally
    Result:=frmNoticeNew.Fres;
    FreeAndNil(frmNoticeNew);
  end;
end;

procedure TfrmNoticeNew.refresh_user;
var
  i,vindex:Integer;
begin
  grd_user_tv.BeginUpdate;
  grd_notice_tv.BeginUpdate;
  try
    with grd_user_tv.DataController do
    begin
      while RecordCount>0 do
        DeleteRecord(0);

      if qry_aus.IsEmpty then  Exit;
      qry_aus.First;
      while not qry_aus.Eof do
      begin
        if not qry_cnt.Locate('cnt_id_aus_to',qry_aus.fieldbyname('aus_id').AsInteger,[]) then
        begin
          if (Fname='')or(Pos(Fname,qry_aus.fieldbyname('aus_username').AsString)>0) then
          begin
            i:=AppendRecord;
            SetValue(i,grd_user_tv_aus_id.Index,qry_aus.fieldbyname('aus_id').AsInteger);
            SetValue(i,grd_user_tv_aus_username.Index,qry_aus.fieldbyname('aus_username').AsString);
            SetValue(i,grd_user_tv_aus_userjob.Index,qry_aus.fieldbyname('aus_userjob').AsInteger);
          end;
        end;
        qry_aus.Next;
      end;
    end;
  finally
    grd_user_tv.EndUpdate;
    grd_notice_tv.EndUpdate;
  end;
end;


procedure TfrmNoticeNew.btn_addClick(Sender: TObject);
var
  vid,i:Integer;
  vname:string;
begin
  with grd_user_tv do
  begin
    if DataController.RecordCount=0 then Exit;
    if Controller.SelectedRowCount=0 then Exit;
    i:=Controller.SelectedRows[0].RecordIndex;
    if DataController.GetValue(i,grd_user_tv_aus_id.Index)=null then Exit;
    vid:=DataController.GetValue(i,grd_user_tv_aus_id.Index);
    if DataController.GetValue(i,grd_user_tv_aus_username.Index)<>null then
      vname:=DataController.GetValue(i,grd_user_tv_aus_username.Index)
    else
      vname:='';
  end;

  with qry_cnt do
  begin
    if not IsEmpty then
    begin
      if Locate('cnt_id_aus_to',vid,[]) then  Exit;
    end;
    Append;
    FieldByName('cnt_id_aus_to').AsInteger:=vid;
    FieldByName('cnt_user_to').AsString:=vname;
    Post;
  end;

  refresh_user;
end;

procedure TfrmNoticeNew.btn_add_allClick(Sender: TObject);
var
  vid,i:Integer;
  vname:string;
begin
  with grd_user_tv.DataController do
  begin
    if RecordCount=0 then Exit;
    for i:=0  to RecordCount-1 do
    begin
      if GetValue(i,grd_user_tv_aus_id.Index)=null then Continue;
      vid:=GetValue(i,grd_user_tv_aus_id.Index);
      if GetValue(i,grd_user_tv_aus_username.Index)<>null then
        vname:=GetValue(i,grd_user_tv_aus_username.Index)
      else
        vname:='';

      if not qry_cnt.IsEmpty then
      begin
        if qry_cnt.Locate('cnt_id_aus_to',vid,[]) then  Continue;
      end;
      qry_cnt.Append;
      qry_cnt.FieldByName('cnt_id_aus_to').AsInteger:=vid;
      qry_cnt.FieldByName('cnt_user_to').AsString:=vname;
      qry_cnt.Post;
    end;
  end;

  refresh_user;
end;

procedure TfrmNoticeNew.btn_delClick(Sender: TObject);
begin
  with qry_cnt do
  begin
    if not IsEmpty then
    begin
      Delete;
      refresh_user;
    end;
  end;
end;

procedure TfrmNoticeNew.btn_del_allClick(Sender: TObject);
begin
  with qry_cnt do
  begin
    while not IsEmpty do
      Delete;
  end;
  refresh_user;
end;


procedure TfrmNoticeNew.cxButton1Click(Sender: TObject);
begin
  Fname:=edt_name.Text;
  refresh_user;
end;

procedure TfrmNoticeNew.FormCreate(Sender: TObject);
begin
  datebegin.Date:=GetDate;
  dateend.Date:= datebegin.Date+7;

  with qry_aus do
  begin
    if Active then Close;
    Open;
  end;

  with qry_cnt do
  begin
    if Active then Close;
    Open;
  end;

  Fname:='';
  refresh_user;
end;

procedure TfrmNoticeNew.grd_notice_tvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfrmNoticeNew.grd_user_tvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfrmNoticeNew.btn_sendClick(Sender: TObject);
var
  vdatetime:TDateTime;
begin
  //检查
  if datebegin.Date<GetDate then
  begin
    MessageOfInformation('有效期不能小于今天。',False);
    Exit;
  end;
  if datebegin.Date>=dateend.Date then
  begin
    MessageOfInformation('开始日期不能大于等于结束日期。',False);
    Exit;
  end;
  if (datebegin.Date+40)<dateend.Date then
  begin
    MessageOfInformation('有效期最多40天。',False);
    Exit;
  end;

  if Length(memo_notice.Text)<8 then
  begin
    MessageOfInformation('通知内容不能小于8字节。',False);
    Exit;
  end;
  //整合数据
  with qry_cnt do
  begin
    if not Active then
    begin
      MessageOfWarning('没有可保存的数据！',False);
      Exit;
    end;
    if IsEmpty then
    begin
      MessageOfWarning('请设置通知名单！',False);
      Exit;
    end;
    vdatetime:=GetDatetime;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('cnt_user_ins').AsString:=GUserName;
      FieldByName('cnt_date_ins').AsDateTime:=vdatetime;
      FieldByName('cnt_status').AsString:='I';

      FieldByName('cnt_read_flg').AsBoolean:=False;

      FieldByName('cnt_date_begin').AsDateTime:=datebegin.Date;
      FieldByName('cnt_date_end').AsDateTime:=dateend.Date;

      FieldByName('cnt_id_aus_from').AsInteger:=GUserID;
      FieldByName('cnt_user_from').AsString:=GUserName;

      FieldByName('cnt_type').AsInteger:=0;
      FieldByName('cnt_type_name').AsString:='系统通知';
      FieldByName('cnt_id_scoure').AsInteger:=0;
      FieldByName('cnt_remark').AsString:=memo_notice.Text;

      Post;
      Next;
    end;
  end;
  //执行保存
  try
    qry_cnt.UpdateBatch(arAll);
    Fres:=True;
    frmNoticeNew.Close;
  except
    MessageOfWarning('保存出错！',False);
  end;
end;

end.
