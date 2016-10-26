unit ufrmApplicationEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxPC, Data.DB, Data.Win.ADODB, cxContainer, cxEdit, cxLabel, cxMemo, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxImageComboBox, cxTextEdit,System.DateUtils,
  cxSpinEdit;

type
  TfrmApplicationEdit = class(TForm)
    cxTabControl1: TcxTabControl;
    cxTabControl2: TcxTabControl;
    btn_close: TcxButton;
    btn_save: TcxButton;
    qry_ava_old: TADOQuery;
    qry_ava: TADOQuery;
    DS_Ava: TDataSource;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    qry_avgh: TADOQuery;
    cxLabel10: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxLabel11: TcxLabel;
    cxDBMemo3: TcxDBMemo;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    Fava_id,Favg_id:Integer;
    Fres:Boolean;
    { Private declarations }
    procedure getdata;
    function Save_check:Boolean;  //新增时的保存检查 自带提示
  public
    { Public declarations }
  end;

var
  frmApplicationEdit: TfrmApplicationEdit;
  function ExecfrmApplicationEdit(Ava_id:Integer):Boolean;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

function ExecfrmApplicationEdit(Ava_id:Integer):Boolean;
begin
  if frmApplicationEdit=nil then
    frmApplicationEdit:=TfrmApplicationEdit.Create(Application);
  try
    with frmApplicationEdit do
    begin
      Fres:=False;
      Fava_id:=Ava_id;
      getdata;
      ShowModal;
    end;
  finally
    Result:=frmApplicationEdit.Fres;
    FreeAndNil(frmApplicationEdit);
  end;
end;

procedure TfrmApplicationEdit.btn_closeClick(Sender: TObject);
begin
  Self.Close;
end;

{select ava_id,ava_status,ava_user_lst,ava_date_lst,ava_id_avg,
ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark
from ava_visa_application
where ava_id=217803}

procedure TfrmApplicationEdit.btn_saveClick(Sender: TObject);
begin
  //保存
  if Save_check then
  begin
    try
      Qry_Ava.UpdateBatch(arAll);
      qry_avgh.UpdateBatch(arAll);
      DS_Ava.AutoEdit:=False;
      Fres:=True;
      MessageOfInformation('保存成功。',False);
      Self.Close;
    except
      on E:Exception do
      begin
        ShowMessage(e.Message);
      end;
    end
  end;
end;

procedure TfrmApplicationEdit.getdata;
begin
  with Qry_Ava do
  begin
    if Active then Close;
    Parameters.ParamByName('ava_id').Value:=Fava_id;
    Open;
  end;
  with qry_ava_old do
  begin
    if Active then Close;
    Parameters.ParamByName('ava_id').Value:=Fava_id;
    Open;
    if IsEmpty then
      Favg_id:=0
    else
      Favg_id:=FieldByName('ava_id_avg').AsInteger;
  end;
end;

function TfrmApplicationEdit.Save_check:Boolean;  //新增时的保存检查 自带提示
var
  vremark,vtemp:string;
  vage:Integer;
  vdatetime:TDateTime;
begin
  Result:=False;
  cxDBTextEdit1.SetFocus;
  cxDBMemo1.SetFocus;

  //当前日期
  vdatetime:=GetDate;

  with qry_ava do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('没有可保存的数据！',False);
      Exit;
    end;
    if FieldByName('ava_name_c').IsNull then
    begin
      MessageOfInformation('客人姓名不能为空！',False);
      Exit;
    end;
    if FieldByName('ava_name_c').AsString='' then
    begin
      MessageOfInformation('请填写客人的姓名！',False);
      Exit;
    end;

    //写入修改人和修改日期 2014-11-24
    if (State<>dsInsert) and (State<>dsedit) then
      Edit;
    FieldByName('ava_status').AsString:='E';
    FieldByName('ava_user_lst').AsString:=GUserName;
    FieldByName('ava_date_lst').AsDateTime:=GetDatetime;

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
  end;

  //对比修改的内容
  with qry_ava_old do
  begin
    vremark:='';
    if not IsEmpty then
    begin

      if FieldValues['ava_name_c']<>Qry_Ava.FieldValues['ava_name_c'] then
      begin
        vremark:=vremark+'中文姓名：'+fieldbyname('ava_name_c').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_name_c').AsString+'；';
      end;
      if FieldValues['ava_name_e']<>Qry_Ava.FieldValues['ava_name_e'] then
      begin
        vremark:=vremark+'英文姓名：'+fieldbyname('ava_name_e').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_name_e').AsString+'；';
      end;
      if FieldValues['ava_idcard']<>Qry_Ava.FieldValues['ava_idcard'] then
      begin
        vremark:=vremark+'身份证：'+fieldbyname('ava_idcard').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_idcard').AsString+'；';
      end;
      if FieldValues['ava_PassPortNo']<>Qry_Ava.FieldValues['ava_PassPortNo'] then
      begin
        vremark:=vremark+'护照号码：'+fieldbyname('ava_PassPortNo').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_PassPortNo').AsString+'；';
      end;
      if FieldValues['ava_sex']<>Qry_Ava.FieldValues['ava_sex'] then
      begin
        vtemp:='';
        if FieldByName('ava_sex').AsInteger=1 then
          vtemp:='男';
        if FieldByName('ava_sex').AsInteger=2 then
          vtemp:='女';
        if Qry_Ava.FieldByName('ava_sex').AsInteger=1 then
          vtemp:=vtemp+' -> 男';
        if Qry_Ava.FieldByName('ava_sex').AsInteger=2 then
          vtemp:=vtemp+' -> 女';
        vremark:=vremark+'性别：'+vtemp+'；';
      end;
      if FieldValues['ava_date_birth']<>Qry_Ava.FieldValues['ava_date_birth'] then
      begin
        vremark:=vremark+'出生年月：'+fieldbyname('ava_date_birth').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_date_birth').AsString+'；';
      end;
      if FieldValues['ava_Date_Sign']<>Qry_Ava.FieldValues['ava_Date_Sign'] then
      begin
        vremark:=vremark+'签发日期：'+fieldbyname('ava_Date_Sign').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Date_Sign').AsString+'；';
      end;
      if FieldValues['ava_Date_End']<>Qry_Ava.FieldValues['ava_Date_End'] then
      begin
        vremark:=vremark+'有效期至：'+fieldbyname('ava_Date_End').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Date_End').AsString+'；';
      end;
      if FieldValues['ava_Remark']<>Qry_Ava.FieldValues['ava_Remark'] then
      begin
        vremark:=vremark+'备注：'+fieldbyname('ava_Remark').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_Remark').AsString+'；';
      end;
      if FieldValues['ava_remark1']<>Qry_Ava.FieldValues['ava_remark1'] then
      begin
        vremark:=vremark+'备注1：'+fieldbyname('ava_remark1').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_remark1').AsString+'；';
      end;
      if FieldValues['ava_remark2']<>Qry_Ava.FieldValues['ava_remark2'] then
      begin
        vremark:=vremark+'备注2：'+fieldbyname('ava_remark2').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_remark2').AsString+'；';
      end;
      if FieldValues['ava_home_addr']<>Qry_Ava.FieldValues['ava_home_addr'] then
      begin
        vremark:=vremark+'常住地址：'+fieldbyname('ava_home_addr').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_home_addr').AsString+'；';
      end;
      if FieldValues['ava_mobile']<>Qry_Ava.FieldValues['ava_mobile'] then
      begin
        vremark:=vremark+'电话号码：'+fieldbyname('ava_mobile').AsString+
                               ' -> '+Qry_Ava.fieldbyname('ava_mobile').AsString+'；';
      end;
      if FieldValues['ava_age']<>Qry_Ava.FieldValues['ava_age'] then
      begin
        vremark:=vremark+'年龄：'+inttostr(fieldbyname('ava_age').AsInteger)+
                               ' -> '+inttostr(Qry_Ava.fieldbyname('ava_age').AsInteger)+'；';
      end;
    end;
  end;

  //历史记录
  with qry_avgh do
  begin
    if Active then Close;
    Open;
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=Favg_id;
    FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=qry_ava.FieldByName('ava_name_c').AsString;
    FieldByName('avgh_type').AsString:='修改客人信息';
    FieldByName('avgh_remark').AsString:=vremark;
    FieldByName('avgh_number').AsInteger:=StrToInt(GetMaxID('avgh_number'));
    Post;
  end;
  Result:=True;
end;


end.
