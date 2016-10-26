unit uMainFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBar, cxClasses, dxStatusBar, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, auHTTP, auAutoUpgrader, cxContainer, cxEdit, cxImage,
  Vcl.Imaging.jpeg;

type
  TMainFrm = class(TForm)
    dxStatusBar1: TdxStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    上线: TdxBarSubItem;
    Btn_Close: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    qry_ver: TADOQuery;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    Timer_notice: TTimer;
    dxBarButton13: TdxBarButton;
    btn_area: TdxBarButton;
    btnSourceType: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    btn_send_query: TdxBarButton;
    AutoUpgrader: TauAutoUpgrader;
    btn_check_update: TdxBarButton;
    dxBarButton16: TdxBarButton;
    btn_order_ava: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarListItem1: TdxBarListItem;
    Image1: TImage;
    procedure Btn_CloseClick(Sender: TObject);
    procedure CallModuleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer_noticeTimer(Sender: TObject);
    procedure btn_check_updateClick(Sender: TObject);
    procedure dxBarListItem1Click(Sender: TObject);
    procedure dxBarListItem1GetData(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
  private
    { Private declarations }
  public
    FMDIcount:Integer;
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

{$R *.dfm}

uses  uCommonUnit, uCommonDM, uCallModule,ufrmNoticePop;

procedure TMainFrm.btn_check_updateClick(Sender: TObject);
begin    //检查更新
  AutoUpgrader.VersionNumber:=Gver;
  AutoUpgrader.InfoFileURL:=qry_ver.FieldByName('_ver_url').AsString;
  AutoUpgrader.CheckUpdate;
end;

procedure TMainFrm.Btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TMainFrm.CallModuleClick(Sender: TObject);var
  MenuItem :TdxBarButton;
begin
  MenuItem := Sender as TdxBarButton;
  try
    GModuleID := MenuItem.Tag;
    ExecModule(GModuleID);
  except
    MessageOfStop('未找到对应的功能模块，请与软件供应商联系以获得技术支持！',True);
  end;
end;

procedure TMainFrm.dxBarButton19Click(Sender: TObject);
begin
  Cascade; //层叠
end;

procedure TMainFrm.dxBarButton20Click(Sender: TObject);
begin
  TileMode:=tbHorizontal;  //平铺
  Tile;
end;

procedure TMainFrm.dxBarButton21Click(Sender: TObject);
begin
  TileMode:=tbVertical;  //纵向
  Tile;
end;

procedure TMainFrm.dxBarListItem1Click(Sender: TObject);
begin
  with dxBarListItem1 do
    TCustomForm(Items.Objects[ItemIndex]).Show;
end;

procedure TMainFrm.dxBarListItem1GetData(Sender: TObject);
begin
  with dxBarListItem1 do
    ItemIndex:=Items.IndexOfObject(ActiveMDIChild);
end;

procedure TMainFrm.FormShow(Sender: TObject);
var
  i:Integer;
begin
  FMDIcount:=0;
  Self.Caption:='广东国旅假期--签证业务管理系统_v '+Gver;

  CommonDM.qrySelCountry.Close;
  CommonDM.qrySelCountry.Parameters.ParamByName('aus_id').Value := GUserID;
  CommonDM.qrySelCountry.Open;

  for i := 0 to dxBarManager1.ItemCount-1 do
  begin
    if dxBarManager1.Items[i] is TdxBarButton then
    begin
      if (dxBarManager1.Items[i] as TdxBarButton).Tag>0 then
        (dxBarManager1.Items[i] as TdxBarButton).Visible:=ivNever;
    end;
  end;

  with qry_ver do
  begin
    if Active then Close;
    Open;
    if IsEmpty then
    begin
      MessageOfWarning('无效的版本校验！',False);
      Exit;
    end
    else
    begin
      AutoUpgrader.VersionNumber:=Gver;
      AutoUpgrader.InfoFileURL:=FieldByName('_ver_url').AsString;
      AutoUpgrader.CheckUpdate;
      if (Gver>=FieldByName('_ver_min').AsString)and(Gver<=FieldByName('_ver_max').AsString) then
      begin
        Self.Caption:=Self.Caption+' ('+fieldbyname('_ver_title').AsString+')';
      end
      else
      begin
        MessageOfInformation('当前版本已经过期请升级到最新版本。',false);
        Exit;
      end;
    end;
  end;

  //菜单权限
  with CommonDM.qry_power do
  begin
    if Active then close;
    sql.Text:='select * from s_power where userid='+inttostr(GUserID);
    Open;
    if not IsEmpty then
    begin
      for i := 0 to dxBarManager1.ItemCount-1 do
      begin
        if dxBarManager1.Items[i] is TdxBarButton then
        begin
          if (dxBarManager1.Items[i] as TdxBarButton).Tag>0 then
          begin
            if Locate('moduleid',(dxBarManager1.Items[i] as TdxBarButton).Tag,[]) then
            begin
              if fieldbyname('modulepower').AsInteger=2 then
              begin
                (dxBarManager1.Items[i] as TdxBarButton).Visible:=ivAlways;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  dxStatusBar1.Panels[0].Text :=   '登录用户：' + GUserName;
  timer_notice.enabled:=true;  //通知定时器开始
end;

procedure TMainFrm.Timer_noticeTimer(Sender: TObject);
begin      //5分钟定时显示通知
  try
    timer_notice.enabled:=false;
    ExecfrmNoticePop_auto;
  finally
    timer_notice.enabled:=true;
  end;
end;

end.
