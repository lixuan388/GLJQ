unit uPaymentFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Data.Win.ADODB, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxDBLookupComboBox;

type
  TPaymentFrm = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1apmDate_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1apm_User_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1apm_date_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1apm_User_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1apm_Name: TcxGridDBColumn;
    procedure Qry_ModuleAfterInsert(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentFrm: TPaymentFrm;

  procedure ExecPaymentFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;
procedure ExecPaymentFrm;
begin
  if PaymentFrm=nil then Application.CreateForm(TPaymentFrm,PaymentFrm);
  PaymentFrm.Show;

end;

procedure TPaymentFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('ÊÇ·ñÈ·ÈÏÉ¾³ý´Ë¼ÇÂ¼?','É¾³ý',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['apm_status']:='D';
    Post;
    try
      UpdateBatch(arAll);
      Close;
      Open;
      ShowMessage('É¾³ý³É¹¦!');
    Except
      ShowMessage('É¾³ýÊ§°Ü,ÇëÖØÊÔ!');
    end;
  end;
end;

procedure TPaymentFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  PaymentFrm:=nil;
end;

procedure TPaymentFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['apm_status']:='E';
    FieldValues['apm_user_lst']:=GUserName;
    FieldValues['apm_date_lst']:=GetDatetime;
  end;
end;

procedure TPaymentFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['apm_status']:='I';
    FieldValues['apm_user_ins']:=GUserName;
    FieldValues['apmDate_Ins']:=GetDatetime;
    FieldValues['apm_name']:='';

  end;
end;

end.
