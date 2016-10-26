unit uUserPowerfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, ToolWin, ComCtrls, SUIToolBar, ImgList,
  bsSkinData, BusinessSkinForm, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsdbctrls, bsSkinGrids, bsDBGrids, Grids, DBGridEh, DB,
  ADODB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons;

type
  TUserPowerfrm = class(TForm)
    bsBusinessSkinForm: TbsBusinessSkinForm;
    bsSkinControlBar1: TbsSkinControlBar;
    SkinToolBar: TbsSkinToolBar;
    tbExit: TbsSkinSpeedButton;
    tbQuery: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    tbInsert: TbsSkinSpeedButton;
    tbModify: TbsSkinSpeedButton;
    tbDelete: TbsSkinSpeedButton;
    tbSave: TbsSkinSpeedButton;
    tbCancel: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    Label1: TLabel;
    bsSkinBevel4: TbsSkinBevel;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinGroupBox2: TbsSkinGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    bsSkinGroupBox3: TbsSkinGroupBox;
    edtUserCode: TbsSkinDBEdit;
    edtUserName: TbsSkinDBEdit;
    dbgPower: TDBGridEh;
    bsSkinDBComboBox1: TbsSkinDBComboBox;
    bsSkinDBRadioGroup1: TbsSkinDBRadioGroup;
    dbgUsers: TDBGridEh;
    qryUsers: TADOQuery;
    dsUsers: TDataSource;
    qryPower: TADOQuery;
    qryPowers_insert: TSmallintField;
    qryPowers_modify: TSmallintField;
    qryPowers_delete: TSmallintField;
    qryPowers_locate: TSmallintField;
    qryPowers_print: TSmallintField;
    qryPowers_approve: TSmallintField;
    dsPower: TDataSource;
    qryPowerpowerid: TAutoIncField;
    qryPowermodulepower: TIntegerField;
    qryPowermodulename: TStringField;
    ImageListModule: TImageList;
    Label6: TLabel;
    qryTreePower: TADOQuery;
    dsTreePower: TDataSource;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    btn_all_tree: TcxButton;
    tb_reset_password: TbsSkinSpeedButton;
    sp_reset_password: TADOStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryUsersAfterInsert(DataSet: TDataSet);
    procedure qryPowermodulepowerChange(Sender: TField);
    procedure dbgPowerCellClick(Column: TColumnEh);
    procedure dbgPowerKeyPress(Sender: TObject; var Key: Char);
    procedure tbInsertClick(Sender: TObject);
    procedure tbModifyClick(Sender: TObject);
    procedure tbDeleteClick(Sender: TObject);
    procedure tbQueryClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbCancelClick(Sender: TObject);
    procedure qryUsersAfterEdit(DataSet: TDataSet);
    procedure tbExitClick(Sender: TObject);
    procedure qryUsersAfterScroll(DataSet: TDataSet);
    procedure btn_all_treeClick(Sender: TObject);
    procedure tb_reset_passwordClick(Sender: TObject);
  private
    procedure SetToolButtonStatus;
    procedure SetToolButtonVisible;
    procedure UserPowerStat;
  public
    { Public declarations }
  end;

var
  UserPowerfrm: TUserPowerfrm;
  procedure ExecUserPowerfrm;
  
implementation

uses uCommonDM, uCommonUnit;

{$R *.dfm}

procedure ExecUserPowerfrm;
begin
  if UserPowerfrm=nil then
    UserPowerfrm:=TUserPowerfrm.Create(Application);
  UserPowerfrm.Show;
end;

procedure TUserPowerfrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryPower.Close;
  qryUsers.Close;
  Action:=caFree;
  UserPowerfrm:=nil;
end;

procedure TUserPowerfrm.FormCreate(Sender: TObject);
begin
  bsBusinessSkinForm.WindowState:=wsMaximized;
  qryUsers.Open;
  qryUsers.Locate('aus_id', GUserId, []);
  qryPower.Open;
  SetToolButtonVisible;
  SetToolButtonStatus;
end;

procedure TUserPowerfrm.FormResize(Sender: TObject);
begin
  SkinToolBar.Width := Self.Width-10;
end;

procedure TUserPowerfrm.qryUsersAfterInsert(DataSet: TDataSet);
begin
  qryUsers.FieldByName('aus_status').Value := 'I';
  qryUsers.FieldByName('aus_id').Value := StrToInt(CommonDM.GetMaxId('aus_id'));
  qryUsers.FieldByName('aus_userjob').Value := 0;
end;

procedure TUserPowerfrm.qryPowermodulepowerChange(Sender: TField);
begin
  if dbgPower.SelectedField.Value=0 then dbgPower.SelectedField.Value:=1;
end;

procedure TUserPowerfrm.btn_all_treeClick(Sender: TObject);
begin
  with qryTreePower do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if not dsTreePower.AutoEdit then Exit;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('s_power').AsInteger:=2;
      Post;
      Next;
    end;
  end;
end;

procedure TUserPowerfrm.dbgPowerCellClick(Column: TColumnEh);
begin
  if qryUsers.State in [dsInsert,dsEdit] then
  begin
    dbgPower.ReadOnly := False;
    if (dbgPower.SelectedField.Index<>1) and (dbgPower.SelectedField.AsInteger=0)  then
        dbgPower.ReadOnly := True;
  end;
end;

procedure TUserPowerfrm.dbgPowerKeyPress(Sender: TObject; var Key: Char);
begin
  if (not (qryUsers.State in [dsInsert,dsEdit])) or (dbgPower.SelectedField.AsInteger=0) then
    Key := #0; { eat enter key }
end;

procedure TUserPowerfrm.tbInsertClick(Sender: TObject);
begin
  if edtUserCode.CanFocus then edtUserCode.SetFocus;
  qryUsers.Append;
  UserPowerStat;
  SetToolButtonStatus;
end;

procedure TUserPowerfrm.tbModifyClick(Sender: TObject);
begin
  if edtUserCode.CanFocus then edtUserCode.SetFocus;
  qryTreePower.Edit;
  qryUsers.Edit;
  qryPower.Edit;
  SetToolButtonStatus;
end;

procedure TUserPowerfrm.tbDeleteClick(Sender: TObject);
var
  vNextUserId :integer;
begin
  if Application.MessageBox('是否确认删除该用户?','询问',MB_OKCANCEL+MB_ICONQUESTION+MB_DEFBUTTON2)<>IDOK then
    Exit;
  try
    Screen.Cursor:=crHourGlass;
    try
      CommonDM.ConVisa.BeginTrans;
      with CommonDM.ADOCommand do
      begin
        CommandText:='delete s_power where userid='+qryUsers.FieldByName('aus_id').AsString;
        Execute;
      end;    // with

      vNextUserId := -1;
      with qryUsers do
      try
        Edit;
        FieldByName('aus_status').Value:='D';
        UpdateBatch(arAllChapters);
        CommonDM.ConVisa.CommitTrans;
        Next;
        if not eof then
          vNextUserId:= qryUsers.FieldByName('aus_id').AsInteger;
      finally
        Close;
        Open;
        Locate('aus_id', vNextUserId, []);
      end;    // with
    except
      CommonDM.ConVisa.RollbackTrans;
      MessageOfStop('系统删除出错！',True);
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TUserPowerfrm.tbQueryClick(Sender: TObject);
var
  sName:String;
begin
  inherited;
  sName := InputBox('查询','员工名称:','');
  qryUsers.Locate('aus_username',sName,[lopartialkey]);
end;

procedure TUserPowerfrm.SetToolButtonStatus;
var
  sResult, sTemp :String;
  i :SmallInt;
  UpdateMode, EmptyFlag :Boolean;
begin
  UpdateMode := qryUsers.State in [dsinsert, dsedit];
  EmptyFlag  := qryUsers.IsEmpty;
  sResult := GetToolButtonStatus('0123456', UpdateMode , EmptyFlag);
  i:=0;
  while sResult <> '' do
  begin
    sTemp := Copy(sResult, 1, 1);
    case i of
    0:  tbExit.Enabled := sTemp='1';   //退出按钮
    1:  tbQuery.Enabled := sTemp='1'; //查询按钮
    2:  tbInsert.Enabled := sTemp='1'; //新增按钮
    3:  tbModify.Enabled := sTemp='1'; //修改按钮
    4:  tbDelete.Enabled := sTemp='1'; //删除按钮
    5:  tbSave.Enabled := sTemp='1';   //保存按钮
    6:  tbCancel.Enabled := sTemp='1'; //取消按钮
    end;
    Delete(sResult, 1, 1);
    inc(i);
  end;
  dsUsers.AutoEdit := UpdateMode;
  dsPower.AutoEdit := UpdateMode;
  dsTreePower.AutoEdit := UpdateMode;

  btn_all_tree.Enabled:= UpdateMode;  //全部授权按钮

  dbgUsers.Enabled:=not UpdateMode;  //新增或修改的时候人员列表不能动
end;


procedure TUserPowerfrm.tbSaveClick(Sender: TObject);
var
  vInsertFlg :Boolean;
  vid:Integer;
begin
  if qryUsers.FieldByName('aus_usercode').AsString='' then
  begin
    if edtUserCode.CanFocus then edtUserCode.SetFocus;
    MessageOfWarning('请填写用户编号！', True);
  end;

  if qryUsers.FieldByName('aus_username').AsString='' then
  begin
    if edtUserName.CanFocus then edtUserName.SetFocus;
    MessageOfWarning('请填写用户名称！', True);
  end;

  vInsertFlg:= qryUsers.State=dsinsert;
  try
    Screen.Cursor:= crHourGlass;
    try
      CommonDM.ConVisa.BeginTrans;
      if vInsertFlg then
        begin
          CommonDM.ADOCommand.CommandText:=
          'insert s_power(userid, moduleid, modulepower, s_insert, s_modify,'+
          ' s_delete, s_locate, s_print, s_approve)'+
          ' select ' + qryUsers.FieldByName('aus_id').AsString +','+
          ' moduleid, modulepower, s_insert, s_modify, s_delete, s_locate, s_print,'+
          ' s_approve from s_power_def where jobid='+inttostr(qryUsers.FieldByName('aus_userjob').AsInteger); //默认权限 跟用户属性
          CommonDM.ADOCommand.Execute;
        end
      else
      qryPower.UpdateBatch(arAllChapters);
      qryTreePower.UpdateBatch(arAllChapters);
      qryUsers.UpdateBatch(arAllChapters);
      CommonDM.ConVisa.CommitTrans;
      qryPower.Close;
      qryPower.Open;
    except
      CommonDM.ConVisa.RollbackTrans;
      MessageOfStop('系统保存错误！', True);
    end;
  finally
    SetToolButtonStatus;
    Screen.Cursor:= crDefault;
  end;
end;

procedure TUserPowerfrm.tb_reset_passwordClick(Sender: TObject);
var
  vaus_id:Integer;
begin
  //重置密码
  if dsTreePower.AutoEdit then Exit;
  with qryUsers do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if MessageOfQuestion('您确定要重置['+fieldbyname('aus_username').AsString+']用户的密码吗？' )<>idok then Exit;
    vaus_id:=FieldByName('aus_id').AsInteger;
  end;
  with sp_reset_password do
  begin
    if Active then Close;
    Parameters.ParamByName('@aus_id').Value:=vaus_id;
    Parameters.ParamByName('@userid').Value:=GUserID;
    ExecProc;
    if Parameters.ParamByName('@RETURN_VALUE').Value=1 then
      MessageOfInformation('重置密码成功！',false);
  end;
end;

procedure TUserPowerfrm.tbCancelClick(Sender: TObject);
begin
  qryPower.CancelUpdates;
  qryUsers.CancelUpdates;
  SetToolButtonStatus;
end;

procedure TUserPowerfrm.qryUsersAfterEdit(DataSet: TDataSet);
begin
  qryUsers.FieldByName('aus_status').Value:='E';
  qryUsers.FieldByName('aus_user_lst').Value:=GUserId;
  qryUsers.FieldByName('aus_date_lst').Value:=Now;
end;

procedure TUserPowerfrm.tbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TUserPowerfrm.SetToolButtonVisible;
begin
  with CommonDM.qryTemp do
  try
    SQl.Text:='select * from s_power where userid='+IntToStr(GUserId)+
              ' and moduleid='+ IntToStr(GModuleID);
    Open;
    tbQuery.Visible:=FieldByName('s_locate').AsInteger=2;
    tbInsert.Visible:=FieldByName('s_insert').AsInteger=2;
    tbModify.Visible:=FieldByName('s_modify').AsInteger=2;
    tbDelete.Visible:=FieldByName('s_delete').AsInteger=2;
    tbSave.Visible:=tbInsert.Visible or tbModify.Visible;
    tbCancel.Visible:=tbSave.Visible;

    tb_reset_password.Visible:=GUserID=1;  //只有管理员可以重置密码
  finally
    Close;
  end;    // with
end;

procedure TUserPowerfrm.UserPowerStat;
begin
  with CommonDM.qryTemp do
  begin
    if Active then Close;
    SQL.Text := 'select act_id,act_name from act_country where act_status<>''D'' order by act_id ';
    Open;
    First;
    while not Eof do
    begin
      qryTreePower.Append;
      qryTreePower.FieldByName('s_id_aus').Value := qryUsers.FieldByName('aus_id').AsInteger;
      qryTreePower.FieldByName('s_id_act').Value := FieldByName('act_id').AsInteger;
      qryTreePower.FieldByName('s_act_name').Value := FieldByName('act_name').AsString;
      qryTreePower.FieldByName('s_power').Value := 1;
      Next;
    end;
  end;
end;

procedure TUserPowerfrm.qryUsersAfterScroll(DataSet: TDataSet);
begin
  qryTreePower.Close;
  qryTreePower.Parameters.ParamByName('aus_id').Value := qryUsers.FieldByName('aus_id').AsInteger;
  qryTreePower.Open;
end;

end.
