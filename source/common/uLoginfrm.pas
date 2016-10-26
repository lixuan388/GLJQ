unit uLoginfrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxLabel, cxTextEdit, Data.DB, Data.Win.ADODB;

type
  TLoginfrm = class(TForm)
    Btn_OK: TcxButton;
    Btn_Cancel: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Edt_PassWord: TcxTextEdit;
    Edt_Code: TcxTextEdit;
    Edt_Name: TcxTextEdit;
    qryLogin: TADOQuery;
    procedure Btn_CancelClick(Sender: TObject);
    procedure Edt_CodeExit(Sender: TObject);
    procedure Btn_OKClick(Sender: TObject);
    procedure Edt_CodeKeyPress(Sender: TObject; var Key: Char);
    procedure Edt_PassWordKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loginfrm: TLoginfrm;

  procedure  ExecLoginInfo;
implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure  ExecLoginInfo;
begin
  Loginfrm:=TLoginfrm.Create(Application);
  with Loginfrm do
  begin
    ShowModal;
  end;
end;
procedure TLoginfrm.Btn_CancelClick(Sender: TObject);
begin
  Application.Terminate;
  try
    ExitProcess(Application.Handle);
  except
  end;
end;

procedure TLoginfrm.Btn_OKClick(Sender: TObject);
begin
  with qryLogin do
  try
    SQL.Text:=Format('select aus_id from aus_users where aus_status<>''D'''+
                     ' and aus_usercode=''%s'' and aus_password=''%s''',
                     [edt_Code.Text,GetEncryptPassword(edt_Password.Text)]);
    Prepared :=True;
    Open;
    if IsEmpty then
      begin
        if edt_Password.CanFocus then edt_Password.SetFocus;
        MessageOfStop('无此用户或用户密码输入不正确!', True);
      end
    else
      begin
        GUserId   := FieldValues['aus_id'];
        GUserName := Edt_Name.Text;
        SaveINI('USER', 'CODE', Edt_Code.Text);
        SaveINI('USER', 'NAME', Edt_Name.Text);
        Loginfrm.Close;
      end;
  finally
    Prepared :=False;
    Close;
  end;
end;

procedure TLoginfrm.Edt_CodeExit(Sender: TObject);
begin
  with qryLogin do
  try
    SQL.Text :='select aus_username from aus_users where aus_status<>''D'''+
               ' and aus_usercode='''+Edt_Code.Text+'''';
    Prepared :=True;
    Open;
    if IsEmpty then
      begin
        MessageOfWarning('系统不存在该用户编号！', False);
        Edt_Code.SetFocus;
      end
    else
      Edt_Name.Text :=FieldValues['aus_username'];
  finally
    Prepared :=False;
    Close;
  end;    // with
end;

procedure TLoginfrm.Edt_CodeKeyPress(Sender: TObject; var Key: Char);
begin

  if Key=#13 then Edt_PassWord.SetFocus;
end;

procedure TLoginfrm.Edt_PassWordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Btn_OKClick(nil) ;
end;

procedure TLoginfrm.FormShow(Sender: TObject);
var
  vUserCode, vUserName :String;
begin
  vUserCode :=LoadINI('USER', 'CODE');
  if vUserCode<>'' then
    begin
      Edt_Code.Text :=vUserCode;
      Edt_Name.Text :=LoadINI('USER', 'NAME');
      Edt_PassWord.SetFocus;
    end
  else
    Edt_PassWord.SetFocus;
end;

end.
