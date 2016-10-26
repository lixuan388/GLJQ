unit ufrmSplitOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, dxBar, cxClasses,uVisaAppFrm,
  Data.DB, Data.Win.ADODB, cxPC, dxBarExtItems,uVisaSignFrm;

type
  TfrmSplitOrders = class(TModuleMDIFrm)
    cxTabControl2: TcxTabControl;
    dxBarStatic1: TdxBarStatic;
    Edt_InvoiceNo: TdxBarEdit;
    dxBarButton1: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
  private
    FVisaSign:TVisaSignFrm;
    Favaid:string;
    Favg_id:Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure OpenVisaAppend;
  end;

var
  frmSplitOrders: TfrmSplitOrders;

  procedure ExecfrmSplitOrders(Avaid:string;Avg_id:Integer);

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure ExecfrmSplitOrders(Avaid:string;Avg_id:Integer);
begin
  if frmSplitOrders=nil then
    Application.CreateForm(TfrmSplitOrders,frmSplitOrders);
  with frmSplitOrders do
  begin
    Favaid:=Avaid;
    Favg_id:=Avg_id;
    OpenVisaAppend;
    Show;
  end;
end;


procedure TfrmSplitOrders.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  if MessageOfQuestion('��ȷ��Ҫִ�в�ֲ�����')<>idok then Exit;


  if FVisaSign.SplitOrder_Save_check then     //��ַ���
  begin
    if FVisaSign.SplitOrder_Post then
    begin
      MessageOfInformation('����ɹ���',False);
      dxBarButton1.Enabled:=False;
      //ˢ�¹������Ķ�����ϸ���
      if VisaAppFrm<>nil then
        VisaAppFrm.refresh_avg;
    end;
  end;
end;

procedure TfrmSplitOrders.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FVisaSign);
  inherited;
  Action:=caFree;
  frmSplitOrders:=nil;
end;

procedure TfrmSplitOrders.OpenVisaAppend;
begin
  if FVisaSign<>nil then
    FreeAndNil(FVisaSign);

  FVisaSign:=ExecVisaSignFrm(cxTabControl2);

  FVisaSign.SplitOrder_append(Favg_id,FavaId);     //��ַ���
end;

end.
