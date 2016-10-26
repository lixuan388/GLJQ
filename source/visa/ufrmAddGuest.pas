unit ufrmAddGuest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, System.DateUtils,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxGroupBox,
  Data.Win.ADODB, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmAddGuest = class(TForm)
    qry_ava: TADOQuery;
    DS_ava: TDataSource;
    cxGroupBox7: TcxGroupBox;
    cxTabControl6: TcxTabControl;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1_ava_state: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id_avg: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_app: TcxGridDBColumn;
    cxGrid1DBTableView1ava_no_app: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_alias: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_ever: TcxGridDBColumn;
    cxGrid1DBTableView1ava_no_iden: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_now: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_pvc_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_cty_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fathername: TcxGridDBColumn;
    cxGrid1DBTableView1ava_mothername: TcxGridDBColumn;
    cxGrid1DBTableView1ava_marriage: TcxGridDBColumn;
    cxGrid1DBTableView1ava_home_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_tel_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fax_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_tel_work: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fax_work: TcxGridDBColumn;
    cxGrid1DBTableView1ava_mobile: TcxGridDBColumn;
    cxGrid1DBTableView1ava_bbc: TcxGridDBColumn;
    cxGrid1DBTableView1ava_email: TcxGridDBColumn;
    cxGrid1DBTableView1ava_status: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_province: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_city: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_county: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_address: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_before: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_province: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_city: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_county: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_address: TcxGridDBColumn;
    cxGrid1DBTableView1ava_home_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_mobile: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_tel: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_fax: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_email: TcxGridDBColumn;
    cxGrid1DBTableView1ava_citizenship: TcxGridDBColumn;
    cxGrid1DBTableView1ava_commercial: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1ava_code: TcxGridDBColumn;
    cxGrid1DBTableView1ava_update1: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_index: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tc_top: TcxTabControl;
    btn_save: TcxButton;
    btn_excel: TcxButton;
    btn_close: TcxButton;
    qry_ava_max_index: TADOQuery;
    qry_avgh_add_guest: TADOQuery;
    cxGrid1DBTableView1ava_user_lst: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_lst: TcxGridDBColumn;
    cxGrid1DBTableView1ava_idcard: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark1: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure btn_closeClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure qry_avaAfterInsert(DataSet: TDataSet);
    procedure btn_saveClick(Sender: TObject);
  private
    Favg_id:Integer;
    Fres:Boolean;
    { Private declarations }
    procedure getdata;
    function Save_check:Boolean;  //追加时的保存检查
  public
    { Public declarations }
  end;

var
  frmAddGuest: TfrmAddGuest;
  function ExecfrmAddGuest(Avg_id:Integer):Boolean;
implementation
uses uCommonDM, uCommonUnit, ufrmExcelInput;
{$R *.dfm}
function ExecfrmAddGuest(Avg_id:Integer):Boolean;
begin
  if frmAddGuest=nil then
    frmAddGuest:=TfrmAddGuest.Create(Application);
   try
     with frmAddGuest do
     begin
       Favg_id:=Avg_id;
       Fres:=False;
       getdata;
       ShowModal;
     end;
   finally
     Result:=frmAddGuest.Fres;
     FreeAndNil(frmAddGuest);
   end;
end;

procedure TfrmAddGuest.btn_closeClick(Sender: TObject);
begin
  frmAddGuest.Close;
end;

procedure TfrmAddGuest.btn_excelClick(Sender: TObject);
begin
  //inherited;  导入客人信息
  if DS_ava.AutoEdit then
    ExecfrmExcelInput2(frmAddGuest)
  else
    MessageOfInformation('订单不在录入状态，不能导入客人信息',False);
end;

procedure TfrmAddGuest.btn_saveClick(Sender: TObject);
begin
  //检查
  if not Save_check then Exit;
  //保存
  try
    qry_ava.UpdateBatch(arAll);
    qry_avgh_add_guest.UpdateBatch(arAll);
    DS_ava.AutoEdit:=False;

    with CommonDM.ADOCommand do
    begin
      CommandText:='exec PAV_UpdateVisaGroupState '+inttostr(Favg_id);
      Execute;
    end;

    Fres:=True;
    frmAddGuest.Close;
  except
    on E:Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TfrmAddGuest.cxGrid1DBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TfrmAddGuest.getdata;
begin
  with qry_ava do
  begin
    if Active then Close;
    Open;
    Append;
  end;
  DS_ava.AutoEdit:=True;
end;



procedure TfrmAddGuest.qry_avaAfterInsert(DataSet: TDataSet);
begin
  with qry_ava do
  begin
    FieldValues['ava_id']:=GetMaxID('ava_id');
    FieldValues['ava_id_avg']:=Favg_id;
    FieldValues['ava_name_c']:='';
    FieldValues['ava_name_e']:='';
    FieldValues['ava_name_p']:='';
    FieldValues['ava_PassPortNo']:='';
    FieldValues['ava_sex']:=1;
    FieldValues['ava_StatusType']:='录入';
    FieldValues['ava_Remark']:='';
    FieldValues['ava_State']:='报名';

    FieldByName('ava_index').AsInteger:= cxGrid1DBTableView1.DataController.RecordCount;
  end;
end;

function TfrmAddGuest.Save_check:Boolean;  //追加时的保存检查
var
  i,vmax_index:Integer;
  vguestlist:string;

  vage:Integer;
  vdatetime:TDateTime;
begin
  Result:=False;
  with qry_ava_max_index do
  begin
    if Active then Close;
    Parameters.ParamByName('ava_id_avg').Value:=Favg_id;
    Open;
    if IsEmpty then
    begin
      MessageOfInformation('没有找到原来订单的客人记录，请确定原订单的状态是否有效！',false);
      Exit;
    end;
    vmax_index:=FieldByName('_max_index').AsInteger;
  end;
  vdatetime:=GetDate;   //当前日期
  with qry_ava do
  begin
    First;
    i:=0;
    vguestlist:='';
    while not Eof do
    begin
      i:=i+1;
      if FieldByName('ava_name_c').IsNull then
      begin
        MessageOfInformation('第'+inttostr(i)+'个客人姓名不能为空！',False);
        Exit;
      end;
      if FieldByName('ava_name_c').AsString='' then
      begin
        MessageOfInformation('请填写第'+inttostr(i)+'个客人的姓名！',False);
        Exit;
      end;
      if vguestlist<>'' then
        vguestlist:=vguestlist+','+FieldByName('ava_name_c').AsString
      else
        vguestlist:=FieldByName('ava_name_c').AsString;
      //排序号
      Edit;
      FieldByName('ava_index').AsInteger:=vmax_index+i;
      //如果有填写出生日期的话 自动计算年龄  2015-04-24
      if not FieldByName('ava_date_birth').IsNull then
      begin
        vage:=YearsBetween(vdatetime,FieldByName('ava_date_birth').AsDateTime)+1;
        if FieldByName('ava_age').AsInteger<>vage then
        begin
          FieldByName('ava_age').AsInteger:=vage;
        end;
      end;
      Post;

      Next;
    end;
  end;
  //处理历史记录 追加客人
  with qry_avgh_add_guest do
  begin
    if Active then Close;
    Open;
    //拆分订单
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=Favg_id;
    FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=vguestlist;
    FieldByName('avgh_type').AsString:='追加';
    FieldByName('avgh_remark').AsString:='';
    FieldByName('avgh_number').AsInteger:=strtoint(GetMaxID('avgh_number'));
    FieldByName('avgh_num').AsInteger:=i;
    FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
    Post;
  end;
  Result:=True;
end;

end.
