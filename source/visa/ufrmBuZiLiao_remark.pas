unit ufrmBuZiLiao_remark;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMemo, Data.DB, Data.Win.ADODB;

type
  TfrmBuZiLiao_remark = class(TForm)
    memo_remark: TcxMemo;
    cxLabel1: TcxLabel;
    btn_cancel: TcxButton;
    btn_ok: TcxButton;
    sp_avgh_remark_edit: TADOStoredProc;
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  private
    Fres:Boolean;
    Favgh_id:Integer;
    Favgh_remark:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuZiLiao_remark: TfrmBuZiLiao_remark;
  function ExecfrmBuZiLiao_remark(Avgh_id:Integer;Avgh_remark:string):Boolean;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;
function ExecfrmBuZiLiao_remark(Avgh_id:Integer;Avgh_remark:string):Boolean;
begin
  if frmBuZiLiao_remark=nil then
    frmBuZiLiao_remark:=TfrmBuZiLiao_remark.Create(Application);
  try
    with frmBuZiLiao_remark do
    begin
      Fres:=False;
      Favgh_id:=Avgh_id;
      Favgh_remark:=Avgh_remark;
      memo_remark.Text:=Favgh_remark;
      ShowModal;
    end;
  finally
    Result:=frmBuZiLiao_remark.Fres;
    FreeAndNil(frmBuZiLiao_remark);
  end;
end;




procedure TfrmBuZiLiao_remark.btn_cancelClick(Sender: TObject);
begin
  frmBuZiLiao_remark.Close;
end;



procedure TfrmBuZiLiao_remark.btn_okClick(Sender: TObject);
begin
  if memo_remark.Text=Favgh_remark then
  begin
    MessageOfInformation('备注内容没有变更，请取消保存。',False);
    Exit;
  end
  else
  begin
    if MessageOfQuestion('您确定要保存修改吗？')<>idok then
      Exit;
  end;

  with sp_avgh_remark_edit do
  begin
    if Active then Close;
    Parameters.ParamByName('@avgh_id').Value:=Favgh_id;
    Parameters.ParamByName('@username').Value:=GUserName;
    Parameters.ParamByName('@remark').Value:=memo_remark.Text;

    ExecProc;
    if Parameters.ParamByName('@RETURN_VALUE').Value=1 then
    begin
      MessageOfInformation('保存成功。',False);
      Fres:=True;
      frmBuZiLiao_remark.Close;
    end
    else
    begin
      MessageOfWarning('保存失败。',False);
    end;
  end;
end;

end.
