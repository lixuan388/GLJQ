unit uVisaSignInsertFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,
  Data.DB, Data.Win.ADODB, cxPC, dxBarExtItems,uVisaSignFrm;

type
  TVisaSignInsertFrm = class(TModuleMDIFrm)
    cxTabControl2: TcxTabControl;
    dxBarStatic1: TdxBarStatic;
    Edt_InvoiceNo: TdxBarEdit;
    dxBarButton1: TdxBarButton;
    btn_excel_input: TdxBarButton;
    btn_add: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_excel_inputClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
  private
    FVisaSign:TVisaSignFrm;
    { Private declarations }
  public
    { Public declarations }
    procedure OpenVisaAppend;
  end;

var
  VisaSignInsertFrm: TVisaSignInsertFrm;

  procedure ExecVisaSignInsertFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,  uSelectVisaSignFrm,ufrmExcelInput;

procedure ExecVisaSignInsertFrm;
begin
  if VisaSignInsertFrm=nil then
    Application.CreateForm(TVisaSignInsertFrm,VisaSignInsertFrm);
  VisaSignInsertFrm.Show;
end;


procedure TVisaSignInsertFrm.btn_addClick(Sender: TObject);
begin
  //inherited; ������ť
  if FVisaSign.DS_ava.AutoEdit then
  begin
    btn_add.Enabled:=False;
    Exit;
  end;
  btn_add.Enabled:=False;
  OpenVisaAppend;
  dxBarButton1.Enabled:=true;
  btn_excel_input.Enabled:=true;
end;

procedure TVisaSignInsertFrm.btn_excel_inputClick(Sender: TObject);
begin
  //inherited;  ���������Ϣ
  if FVisaSign.DS_ava.AutoEdit then
    ExecfrmExcelInput(FVisaSign)
  else
    MessageOfInformation('��������¼��״̬�����ܵ��������Ϣ',False);
end;

procedure TVisaSignInsertFrm.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  if FVisaSign.Save_check then
  begin
    if FVisaSign.Post then
    begin
      MessageOfInformation('����ɹ���',False);
      dxBarButton1.Enabled:=False;
      btn_excel_input.Enabled:=False;
      btn_add.Enabled:=True;
    end;
  end;
end;

procedure TVisaSignInsertFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FVisaSign);
  inherited;
  Action:=caFree;
  VisaSignInsertFrm:=nil;
end;

procedure TVisaSignInsertFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FVisaSign:=ExecVisaSignFrm(cxTabControl2);
  btn_add.Enabled:=False;
  OpenVisaAppend;

end;

procedure TVisaSignInsertFrm.OpenVisaAppend;
begin
  FVisaSign.Append;
end;

end.
