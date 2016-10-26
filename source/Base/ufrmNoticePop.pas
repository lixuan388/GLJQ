unit ufrmNoticePop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxLabel, cxPC, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, cxDBEdit, cxTextEdit,
  cxCheckBox;

type
  TfrmNoticePop = class(TForm)
    qry_cnt_detail: TADOQuery;
    qry_cnt_count: TADOQuery;
    cxTabControl1: TcxTabControl;
    lbl_count: TcxLabel;
    btn_show_all: TcxButton;
    grd_cnt_detail_tv: TcxGridDBTableView;
    grd_cnt_detail_lv: TcxGridLevel;
    grd_cnt_detail: TcxGrid;
    cxTabControl2: TcxTabControl;
    ds_cnt_detail: TDataSource;
    grd_cnt_detail_tvcnt_id: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_user_ins: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_date_ins: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_user_lst: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_date_lst: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_status: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_read_flg: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_date_begin: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_date_end: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_id_aus_from: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_user_from: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_id_aus_to: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_user_to: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_type: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_type_name: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_id_scoure: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_remark: TcxGridDBColumn;
    grd_cnt_detail_tvcnt_note: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    btn_close: TcxButton;
    btn_read: TcxButton;
    btn_read_go: TcxButton;
    procedure btn_show_allClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure btn_readClick(Sender: TObject);
    procedure btn_read_goClick(Sender: TObject);
    procedure grd_cnt_detail_tvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grd_cnt_detail_tvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    Fcnt_id:integer;
    { Private declarations }
    procedure read_mark(Acnt_id:Integer);
  public
    { Public declarations }
  end;

var
  frmNoticePop: TfrmNoticePop;
  procedure ExecfrmNoticePop_read(Acnt_id:integer);
  procedure ExecfrmNoticePop_auto;
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;

procedure ExecfrmNoticePop_read(Acnt_id:integer);   //显示制定的通知记录
begin
  if frmNoticePop=nil then
  begin
    frmNoticePop:=TfrmNoticePop.Create(Application);
    try
      with frmNoticePop do
      begin
        lbl_count.Visible:=False;
        btn_show_all.Visible:=False;
        Fcnt_id:=Acnt_id;
        with qry_cnt_detail do
        begin
          if active then  close;
          sql.Text:='select * from cnt_notice with(nolock) where cnt_id='+inttostr(Fcnt_id);
          Open;
        end;
        ShowModal;
      end;
    finally
      frmNoticePop.Free;
      frmNoticePop:=nil;
    end;
  end;
end;

procedure ExecfrmNoticePop_auto;   //自动列出前五条未阅读的有效通知
var
  vcount:Integer;
begin
  if frmNoticePop=nil then
  begin
    frmNoticePop:=TfrmNoticePop.Create(Application);
    try
      with frmNoticePop do
      begin
        Fcnt_id:=-1;
        with qry_cnt_count do
        begin
          if active then  close;
          sql.Text:='select count(0) as cnt_count '
                   +' from cnt_notice with(nolock) '
                   +' where cnt_status<>''D'' '
                   +' and cnt_read_flg=0 '
                   +' and getdate() between cnt_date_begin and cnt_date_end '
                   +' and cnt_id_aus_to='+inttostr(GUserID);
          Open;
          if IsEmpty then
          begin
            vcount:=0;
          end
          else
          begin
            vcount:=fieldbyname('cnt_count').AsInteger;
          end;
        end;
        if vcount>0 then
        begin
          lbl_count.Visible:=True;
          lbl_count.Caption:='有效通知：'+inttostr(vcount)+'条';
          if vcount>5 then
          begin
            btn_show_all.Visible:=True;
          end
          else
          begin
            btn_show_all.Visible:=False;
          end;
          with qry_cnt_detail do
          begin
            if active then  close;
            sql.Text:='select top 5 * '
                     +' from cnt_notice with(nolock) '
                     +' where cnt_status<>''D'' '
                     +' and cnt_read_flg=0 '
                     +' and getdate() between cnt_date_begin and cnt_date_end '
                     +' and cnt_id_aus_to='+inttostr(GUserID);
            Open;
          end;
          ShowModal;
        end;
      end;
    finally
      frmNoticePop.Free;
      frmNoticePop:=nil;
    end;
  end;
end;

procedure TfrmNoticePop.read_mark(Acnt_id:Integer);
var
  vsql,vname:string;
begin
  vname:=StringReplace(GUserName,'''','',[rfReplaceAll]);
  vsql:='update cnt_notice '
       +' set cnt_read_flg=1, '
       +'     cnt_user_lst='''+vname+''', '
       +'   cnt_date_lst=getdate()'
       +' where cnt_id ='+inttostr(acnt_id)
       +' and cnt_read_flg=0 '
       +' and cnt_id_aus_to='+inttostr(GUserID);

  with CommonDM.ADOCommand do
  begin
    CommandText:=vSql;
    try
      Execute;
    except
      ShowMessage('保存失败,请重试!');
      Exit;
    end;
  end;
end;

procedure TfrmNoticePop.btn_closeClick(Sender: TObject); //关闭
begin
  frmNoticePop.Close;
end;

procedure TfrmNoticePop.btn_readClick(Sender: TObject);  //标记阅读
var
  vcnt_id:Integer;
begin
  with qry_cnt_detail do
  begin
    if IsEmpty then
    begin
      btn_read_go.Enabled:=False;
      btn_read.Enabled:=False;
    end
    else
    begin
      if not FieldByName('cnt_read_flg').AsBoolean then
      begin
        vcnt_id:=FieldByName('cnt_id').AsInteger;
        read_mark(vcnt_id);
        Close;
        Open;
      end;
    end;
  end;
end;

procedure TfrmNoticePop.btn_read_goClick(Sender: TObject);  //阅读并查看
var
  vcnt_id,vcnt_type,vcnt_id_scoure,vcnt_number_avgh:Integer;
begin
  with qry_cnt_detail do
  begin
    if IsEmpty then
    begin
      btn_read_go.Enabled:=False;
      btn_read.Enabled:=False;
    end
    else
    begin
      if not FieldByName('cnt_read_flg').AsBoolean then
      begin
        vcnt_id:=FieldByName('cnt_id').AsInteger;
        read_mark(vcnt_id);
      end;
      vcnt_type:=FieldByName('cnt_type').AsInteger;
      vcnt_id_scoure:=FieldByName('cnt_id_scoure').AsInteger;
      vcnt_number_avgh:=FieldByName('cnt_number_avgh').AsInteger;
      //按步同类型区分处理
      if vcnt_type in [1,3,5] then  //1预约通知  3修改订单通知 5领馆补料通知
      begin
        ExecVisaSignQueryFrmID(vcnt_id_scoure);  //跳去订单查询
        frmNoticePop.Close; //关闭通知提示
      end
      else if  vcnt_type=0 then  //0系统通知 不跳
      begin
        btn_readClick(nil);  //标记阅读
      end
      else if  vcnt_type in [2,4] then  //2补资料通知 4交资料通知
      begin
        frmNoticePop.FormStyle:=fsNormal;
        ExecVisaSignQueryFrmID_BuZiLiao(vcnt_id_scoure,vcnt_number_avgh,frmNoticePop);  //跳去订单查询 并弹出补资料框
      end;
    end;
  end;

end;

procedure TfrmNoticePop.btn_show_allClick(Sender: TObject);   //显示所有未读的有效通知
var
  vcnt_id,vcount:Integer;
begin

  with qry_cnt_count do
  begin
    if active then  close;
    sql.Text:='select count(0) as cnt_count '
             +' from cnt_notice with(nolock) '
             +' where cnt_status<>''D'' '
             +' and cnt_read_flg=0 '
             +' and getdate() between cnt_date_begin and cnt_date_end '
             +' and cnt_id_aus_to='+inttostr(GUserID);
    Open;
    if IsEmpty then
    begin
      vcount:=0;
    end
    else
    begin
      vcount:=fieldbyname('cnt_count').AsInteger;
    end;
  end;
  lbl_count.Caption:='有效通知：'+inttostr(vcount)+'条';

  with qry_cnt_detail do
  begin
    if active then
    begin
      vcnt_id:=fieldbyname('cnt_id').AsInteger;
      close;
    end
    else
    begin
      vcnt_id:=-1;
    end;
    sql.Text:='select * '
             +' from cnt_notice with(nolock) '
             +' where cnt_status<>''D'' '
             +' and cnt_read_flg=0 '
             +' and getdate() between cnt_date_begin and cnt_date_end '
             +' and cnt_id_aus_to='+inttostr(GUserID);
    Open;
    if vcnt_id>0 then
    begin
      Locate('cnt_id',vcnt_id,[]);
    end;
  end;
end;

procedure TfrmNoticePop.grd_cnt_detail_tvCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if MessageOfQuestion('是否要对选定的通知记录进行“已读并查看”操作？')=IDOK then
  begin
    btn_read_goClick(nil);
  end;
end;

procedure TfrmNoticePop.grd_cnt_detail_tvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

end.
