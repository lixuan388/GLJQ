unit ufrmChangePassword;

interface

uses
  //Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  //Dialogs,  Menus, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, StdCtrls, cxButtons,  ActnList,
  //cxPropertiesStore, cxLookAndFeels, dxBar, Data.DB, Data.Win.ADODB;
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxPC, Data.DB, Data.Win.ADODB,
  Vcl.Menus, cxContainer, cxEdit;
type
  TfrmChangePassword = class(Tform)
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    btnOK: TcxButton;
    btnClose: TcxButton;
    edtPasswordOld: TcxTextEdit;
    edtPasswordNew: TcxTextEdit;
    edtPasswordConfirm: TcxTextEdit;
    qryGetUserPassword: TADOQuery;
    //qryGetUserPassword: TkbmMWClientQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FUserPassword: String;
  public
    { Public declarations }
  end;

var
  frmChangePassword: TfrmChangePassword;
  procedure ExecfrmChangePassword;

implementation

uses  uCommonUnit, uCommonDM;

{$R *.dfm}
procedure ExecfrmChangePassword;
begin
  frmChangePassword := TfrmChangePassword.Create(Application);
  try
    frmChangePassword.ShowModal;
  finally
    frmChangePassword.Free;
    frmChangePassword :=nil;
  end;
end;

procedure TfrmChangePassword.btnCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmChangePassword.btnOKClick(Sender: TObject);
begin
  inherited;
  if FUserPassword <> GetEncryptPassword( Trim(edtPasswordOld.Text)) then
  begin
    edtPasswordOld.SetFocus;
    MessageOfWarning('输入的原密码不对，请重新输入!',False);
    Exit;
  end;

  if Trim(edtPasswordNew.Text) <> Trim(edtPasswordConfirm.Text) then
  begin
    edtPasswordNew.SetFocus;
    MessageOfWarning('输入的新密码不一致，请重新输入!',False);
    Exit;
  end;

  with qryGetUserPassword do
  begin
    Edit;
    FieldValues['aus_password'] := GetEncryptPassword( Trim(edtPasswordNew.Text));
    Post;
    UpdateBatch(arAll);
  end;
  MessageOfInformation('密码修改成功!',False);
  Close;
end;

procedure TfrmChangePassword.FormShow(Sender: TObject);
begin
  inherited;
  with qryGetUserPassword do
  begin
    if Active then Close;
    Parameters.ParamByName('aus_id').Value := GUserID;
    Open;
    FUserPassword := FieldValues['aus_password'];
  end;
  if edtPasswordOld.CanFocus then edtPasswordOld.SetFocus;
end;

end.
