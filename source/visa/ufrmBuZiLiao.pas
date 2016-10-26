unit ufrmBuZiLiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxContainer, cxMemo, cxDBEdit, cxTextEdit, cxLabel,
  cxImageComboBox;

type
  TfrmBuZiLiao = class(TForm)
    DS_avb: TDataSource;
    Qry_avb: TADOQuery;
    tc_down: TcxTabControl;
    grd_bzlDBTableView1: TcxGridDBTableView;
    grd_bzlLevel1: TcxGridLevel;
    grd_bzl: TcxGrid;
    grd_bzlDBTableView1avb_id: TcxGridDBColumn;
    grd_bzlDBTableView1avb_user_ins: TcxGridDBColumn;
    grd_bzlDBTableView1avb_date_ins: TcxGridDBColumn;
    grd_bzlDBTableView1avb_user_lst: TcxGridDBColumn;
    grd_bzlDBTableView1avb_date_lst: TcxGridDBColumn;
    grd_bzlDBTableView1avb_status: TcxGridDBColumn;
    grd_bzlDBTableView1avb_number_avgh: TcxGridDBColumn;
    grd_bzlDBTableView1avb_id_ava: TcxGridDBColumn;
    grd_bzlDBTableView1avb_name_ava: TcxGridDBColumn;
    grd_bzlDBTableView1avb_id_avi: TcxGridDBColumn;
    grd_bzlDBTableView1avb_name_avi: TcxGridDBColumn;
    btn_close: TcxButton;
    btn_save: TcxButton;
    grd_bzlDBTableView1avb_remark: TcxGridDBColumn;
    tc_top: TcxTabControl;
    qry_avg: TADOQuery;
    ds_avg: TDataSource;
    qry_avgh: TADOQuery;
    ds_avgh: TDataSource;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    grd_bzlDBTableView1avb_state: TcxGridDBColumn;
    grd_bzlDBTableView1avb_note: TcxGridDBColumn;
    tc_remark: TcxTabControl;
    edt_note: TcxDBTextEdit;
    memo_remark: TcxDBMemo;
    qry_ava: TADOQuery;
    qry_avi: TADOQuery;
    qry_avg_user_info: TADOQuery;
    Qry_avb_old: TADOQuery;
    btn_remark: TcxButton;
    procedure grd_bzlDBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_remarkClick(Sender: TObject);
  private
    Ftype:Integer;   //模式 1新增 2阅读

    FAvgh_number:Integer;

    Favg_id:Integer;
    FavaId:string;
    FaviId:string;
    Fres:Boolean;

    Fnotice:string;
    { Private declarations }
    procedure getdata;  //获取数据 阅读模式  (大备注修改按钮)
    procedure newdata;  //获取数据 新增模式
    function GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;       //获取入单用户ID 和受理编号
  public
    { Public declarations }
  end;

var
  frmBuZiLiao: TfrmBuZiLiao;

  procedure ExecfrmBuZiLiao(Avgh_number:Integer);  //阅读模式
  function ExecfrmBuZiLiaoNew(Avg_id:Integer;AvaId,AviId:string):Boolean; //新增模式
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,ufrmBuZiLiao_remark;

procedure ExecfrmBuZiLiao(Avgh_number:Integer);  //阅读模式
begin
  if frmBuZiLiao=nil then
    frmBuZiLiao:=TfrmBuZiLiao.Create(Application);
  try
    with frmBuZiLiao do
    begin
      Ftype:=2; //模式 1新增 2阅读
      FAvgh_number:=Avgh_number;
      ShowModal;
    end;
  finally
    FreeAndNil(frmBuZiLiao);
  end;
end;

function ExecfrmBuZiLiaoNew(Avg_id:Integer;AvaId,AviId:string):Boolean; //新增模式
begin
  if frmBuZiLiao=nil then
    frmBuZiLiao:=TfrmBuZiLiao.Create(Application);
  try
    with frmBuZiLiao do
    begin
      Caption:='新增补资料';
      Ftype:=1; //模式 1新增 2阅读
      Favg_id:=Avg_id;
      FavaId:=AvaId;
      FaviId:=AviId;
      Fres:=False;
      ShowModal;
    end;
  finally
    Result:=frmBuZiLiao.Fres;
    FreeAndNil(frmBuZiLiao);
  end;
end;

procedure TfrmBuZiLiao.getdata;  //获取数据 阅读模式
var
  vavg_id:Integer;
  vopname:string;
begin
  with Qry_avb do
  begin
    if Active then Close;
    SQL.Text:='select * '
             +' from avb_visa_buziliao with(nolock) '
             +' where avb_number_avgh='+inttostr(FAvgh_number)
             +' and avb_status<>''D''     ';
    Open;
  end;

  with qry_avgh do
  begin
    if Active then Close;
    SQL.Text:='select * from avgh_visa_group_history with(nolock) where avgh_number='+inttostr(FAvgh_number);
    Open;
    if IsEmpty then
    begin
      vavg_id:=0;
      vopname:='';
    end
    else
    begin
      vavg_id:=FieldByName('avgh_id_avg').AsInteger;
      vopname:=FieldByName('avgh_user_op').AsString;
    end;
  end;

  with qry_avg do
  begin
    if Active then Close;
    if vavg_id>0 then
    begin
      SQL.Text:='select avg_id,avg_state,avg_user_enter,avg_date_enter,avg_date_send,avg_invoiceno,'
               +' avg_id_act,avg_id_type,avg_id_avs,act_name,avt_name,avs_name'
               +' from avg_visa_group with(nolock),act_country with(nolock),avt_visa_type with(nolock),avs_visa_speed with(nolock)'
               +' where avg_id_act=act_id'
               +' and avg_id_type=avt_id'
               +' and avg_id_avs=avs_id'
               +' and avg_id='+inttostr(vavg_id);
      Open;
    end;
  end;
  //阅读模式可以修改状态和说明部分
  ds_avb.AutoEdit:=True;
  grd_bzlDBTableView1avb_state.Options.Editing:=True;
  grd_bzlDBTableView1avb_state.Styles.Content:=CommonDM.cxStyleSkyBlue;
  grd_bzlDBTableView1avb_note.Options.Editing:=True;
  grd_bzlDBTableView1avb_note.Styles.Content:=CommonDM.cxStyleSkyBlue;
  grd_bzlDBTableView1.OptionsData.Editing:=True;
  memo_remark.Properties.ReadOnly:=True;
  //系统管理员和补资料发起人可以修改大备注
  if (GUserName=vopname)or(GUserID=1) then
    btn_remark.Visible:=True;
end;

procedure TfrmBuZiLiao.newdata;  //获取数据 新增模式
var
  GuestNameList:string;
  vremark:string;
  vavgh_number:Integer;
  i:Integer;
  vdatetime:TDateTime;
begin
  with qry_avg do
  begin
    if Active then Close;
    begin
      SQL.Text:='select avg_id,avg_state,avg_user_enter,avg_date_enter,avg_date_send,avg_invoiceno,'
               +' avg_id_act,avg_id_type,avg_id_avs,act_name,avt_name,avs_name'
               +' from avg_visa_group with(nolock),act_country with(nolock),avt_visa_type with(nolock),avs_visa_speed with(nolock)'
               +' where avg_id_act=act_id'
               +' and avg_id_type=avt_id'
               +' and avg_id_avs=avs_id'
               +' and avg_id='+inttostr(Favg_id);
      Open;
    end;
  end;
  with qry_ava do
  begin
    if Active then Close;
    SQL.Text:='select ava_id,ava_name_c,ava_index'
             +' from ava_visa_application'
             +' where ava_id in('+FavaId+')'
             +' order by ava_index';
    Open;
  end;
  with qry_avi do
  begin
    if Active then Close;
    SQL.Text:='select * from avi_visa_info where avi_id in('+FaviId+')';
    Open;
  end;
  vavgh_number:=StrToInt(CommonDM.GetMaxID('avgh_number'));
  vdatetime:=GetDatetime;
  with Qry_avb do
  begin
    if Active then Close;
    SQL.Text:='select * from avb_visa_buziliao where avb_id=-1';
    Open;
    if not qry_ava.IsEmpty then
    begin
      qry_ava.First;
      GuestNameList:='';
      vremark:='';
      i:=0;
      while not qry_ava.Eof do
      begin
        if not qry_avi.IsEmpty then
        begin
          qry_avi.First;
          while not qry_avi.Eof do
          begin
            Append;
            FieldByName('avb_user_ins').AsString:=GUserName;
            FieldByName('avb_date_ins').AsDateTime:=vdatetime;
            FieldByName('avb_status').AsString:='I';
            FieldByName('avb_number_avgh').AsInteger:=vavgh_number;
            FieldByName('avb_id_ava').AsInteger:=qry_ava.FieldByName('ava_id').AsInteger;
            FieldByName('avb_name_ava').AsString:=qry_ava.FieldByName('ava_name_c').AsString;
            FieldByName('avb_id_avi').AsInteger:=qry_avi.FieldByName('avi_id').AsInteger;
            FieldByName('avb_name_avi').AsString:=qry_avi.FieldByName('avi_name').AsString;
            FieldByName('avb_state').AsInteger:=0;
            Post;
            if i=0 then
            begin
              if vremark='' then
                vremark:=qry_avi.FieldByName('avi_name').AsString
              else
                vremark:=vremark+','+qry_avi.FieldByName('avi_name').AsString;
            end;
            qry_avi.Next;
          end;
        end;
        if GuestNameList='' then
          GuestNameList:=qry_ava.FieldByName('ava_name_c').AsString
        else
          GuestNameList:=GuestNameList+','+qry_ava.FieldByName('ava_name_c').AsString;
        i:=i+1;
        qry_ava.Next;
      end;
    end;
  end;
  Fnotice:=StringReplace('订单：'+qry_avg.FieldByName('avg_invoiceno').AsString+ ';名单：'+GuestNameList+';补资料：'+vremark,'''','',[rfReplaceAll]);
  with qry_avgh do
  begin
    if Active then Close;
    SQL.Text:='select * from avgh_visa_group_history where avgh_id=-1';
    Open;
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=vdatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=Favg_id;
    FieldByName('avgh_Date_op').AsDateTime:=vdatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=GuestNameList;
    FieldByName('avgh_type').AsString:='补资料';
    FieldByName('avgh_remark').AsString:=vremark;
    FieldByName('avgh_number').AsInteger:=vavgh_number;
    FieldByName('avgh_num').AsInteger:=i;
    FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
    Post;
  end;
  ds_avgh.AutoEdit:=True;
  ds_avb.AutoEdit:=True;
  grd_bzlDBTableView1avb_remark.Options.Editing:=True;
  grd_bzlDBTableView1.OptionsData.Editing:=True;

  grd_bzlDBTableView1avb_state.Visible:=False;
  grd_bzlDBTableView1avb_note.Visible:=False;
  edt_note.Visible:=False;
  cxDBTextEdit1.Style.Color:=clMoneyGreen;
  cxDBTextEdit2.Style.Color:=clMoneyGreen;
  cxDBTextEdit3.Style.Color:=clMoneyGreen;
  cxDBTextEdit4.Style.Color:=clMoneyGreen;
end;

function TfrmBuZiLiao.GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;
begin
  Result:=0;
  Ainvoiceno:='';
  with qry_avg_user_info do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_invoiceno,avg_user_enter,aus_id'
             +' from avg_visa_group with(nolock),aus_users with(nolock)'
             +' where avg_id='+inttostr(Avg_id)
             +' and aus_status<>''D'' '
             +' and aus_username=avg_user_enter';
    Open;
    if not IsEmpty then
    begin
      Ainvoiceno:=fieldbyname('avg_invoiceno').asstring;
      Result:=fieldbyname('aus_id').AsInteger;
    end;
  end;
end;

procedure TfrmBuZiLiao.btn_closeClick(Sender: TObject);
begin
  //取消 关闭
  Self.Close;
end;

procedure TfrmBuZiLiao.btn_remarkClick(Sender: TObject);
begin
  //修改补资料大备注
  with qry_avgh do
  begin
    if not IsEmpty then
    begin
      if ExecfrmBuZiLiao_remark(FieldByName('avgh_id').AsInteger,FieldByName('avgh_remark').AsString) then
      begin
        Close;
        Open;
      end;
    end;
  end;
end;

procedure TfrmBuZiLiao.btn_saveClick(Sender: TObject);
var
  SqlStr:string;
  vuserid:integer;
  vinvoiceno:string;

  vavg_id:Integer;
  vnotice:string;
  vchange_flg:Boolean;

  vAvgh_number:Integer;
begin

  //保存按钮
  if Ftype=1 then //新增模式
  begin
    vuserid:=GetUserId(Favg_id,vinvoiceno);
    vAvgh_number:=qry_avgh.FieldByName('avgh_number').AsInteger;
    SqlStr:='update ava_visa_application set ava_StatusType=''补资料'' where ava_id in ('+FavaId+')'+#13#10  //名单状态
           +' exec usp_set_notice2 '+inttostr(GUserID)+','+inttostr(vuserid)+',2,'+inttostr(Favg_id)+','+inttostr(vAvgh_number)+','+QuotedStr(Fnotice)+#13#10 //补资料通知
           +' exec PAV_UpdateVisaGroupState '+IntToStr(Favg_id)+#13#10; //更新状态+更新人数
    try
      if Qry_avb.State in [dsInsert,dsEdit] then
        Qry_avb.Post;
      if Qry_avgh.State in [dsInsert,dsEdit] then
        Qry_avgh.Post;
      Qry_avb.UpdateBatch(arAll);
      Qry_avgh.UpdateBatch(arAll);
      with CommonDM.ADOCommand do
      begin
        CommandText:=SqlStr;
        Execute;
      end;
      Fres:=True;
      frmBuZiLiao.Close;
    except
      on E:Exception do
      begin
        ShowMessage(e.Message);
      end;
    end;
  end;

  if Ftype=2 then //阅读模式
  begin
    vchange_flg:=False;
    with qry_avg do
    begin
      if IsEmpty then
      begin
        vinvoiceno:='';
        vavg_id:=0;
      end
      else
      begin
        vinvoiceno:=FieldByName('avg_invoiceno').AsString;
        vavg_id:=FieldByName('avg_id').AsInteger;
      end;
    end;
    with qry_avgh do
    begin
      if IsEmpty then
      begin
        vuserid:=0;
        vAvgh_number:=0;
      end
      else
      begin
        vuserid:=FieldByName('avgh_id_aus_op').AsInteger;
        vAvgh_number:=FieldByName('avgh_number').AsInteger;
      end;
    end;
    vnotice:='';
    with Qry_avb_old do
    begin
      if Active then Close;
      SQL.Text:='select * '
               +' from avb_visa_buziliao with(nolock) '
               +' where avb_number_avgh='+inttostr(FAvgh_number)
               +' and avb_status<>''D''     ';
      Open;
      if not IsEmpty then
      begin
        grd_bzlDBTableView1.BeginUpdate;
        Qry_avb.DisableControls;
        try
          First;
          while not Eof do
          begin
            if Qry_avb.Locate('avb_id',FieldByName('avb_id').AsInteger,[]) then
            begin
              if Qry_avb.FieldByName('avb_state').AsVariant<>FieldByName('avb_state').AsVariant then
              begin
                vchange_flg:=True;
                if vnotice<>'' then
                  vnotice:=vnotice+';';
                vnotice:=vnotice+fieldbyname('avb_name_ava').AsString+'_'
                                +fieldbyname('avb_name_avi').AsString+':';
                case FieldByName('avb_state').AsInteger of
                0: vnotice:=vnotice+'未操作';
                1: vnotice:=vnotice+'已交';
                2: vnotice:=vnotice+'拒交';
                end;
                vnotice:=vnotice+'->';
                case Qry_avb.FieldByName('avb_state').AsInteger of
                0: vnotice:=vnotice+'未操作';
                1: vnotice:=vnotice+'已交';
                2: vnotice:=vnotice+'拒交';
                end;
                //有状态改变的时候记录下修改人和修改的时间
                Qry_avb.Edit;
                Qry_avb.FieldByName('avb_user_lst').AsString:=GUserName;
                Qry_avb.FieldByName('avb_date_lst').AsDateTime:=GetDatetime;
                Qry_avb.FieldByName('avb_status').AsString:='E';
                Qry_avb.Post;
              end;
            end;
            Next;
          end;
        finally
          Qry_avb.EnableControls;
          grd_bzlDBTableView1.EndUpdate;
        end;
      end;
    end;
    if vchange_flg then  //有改动 保存
    begin
      vnotice:='订单：'+vinvoiceno+';'+vnotice;
      vnotice:=Replace_keyword(vnotice);
      SqlStr:= 'exec usp_set_notice2 '+inttostr(GUserID)+','+inttostr(vuserid)+',4,'+inttostr(vavg_id)+','+inttostr(vAvgh_number)+','+QuotedStr(vnotice); //补资料通知
      try
        if Qry_avb.State in [dsInsert,dsEdit] then
          Qry_avb.Post;
        Qry_avb.UpdateBatch(arAll);
        with CommonDM.ADOCommand do
        begin
          CommandText:=SqlStr;
          Execute;
        end;
        Fres:=True;
        frmBuZiLiao.Close;
      except
        on E:Exception do
        begin
          ShowMessage(e.Message);
        end;
      end;
    end
    else    //没改动 不保存
    begin
      if MessageOfQuestion('补资料记录状态没有改变，确定将放弃保存操作直接退出，您确定要继续吗？')<>idok then
        Exit;
      frmBuZiLiao.Close;
    end;
  end;
end;

procedure TfrmBuZiLiao.FormShow(Sender: TObject);
begin
  if Ftype=2 then
    getdata;  //获取数据 阅读模式
  if Ftype=1 then
    newdata; //新增模式
end;

procedure TfrmBuZiLiao.grd_bzlDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

end.
