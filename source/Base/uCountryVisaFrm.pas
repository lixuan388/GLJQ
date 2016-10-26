unit uCountryVisaFrm;

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
  TCountryVisaFrm = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1act_id: TcxGridDBColumn;
    cxGrid1DBTableView1act_status: TcxGridDBColumn;
    cxGrid1DBTableView1act_user_ins: TcxGridDBColumn;
    cxGrid1DBTableView1act_date_ins: TcxGridDBColumn;
    cxGrid1DBTableView1act_user_lst: TcxGridDBColumn;
    cxGrid1DBTableView1act_date_lst: TcxGridDBColumn;
    cxGrid1DBTableView1act_name: TcxGridDBColumn;
    cxGrid1DBTableView1act_code: TcxGridDBColumn;
    cxGrid1DBTableView1act_no: TcxGridDBColumn;
    Qry_Aus: TADOQuery;
    DS_Aus: TDataSource;
    procedure Qry_ModuleAfterInsert(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CountryVisaFrm: TCountryVisaFrm;

  procedure ExecCountryVisaFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;
procedure ExecCountryVisaFrm;
begin
  if CountryVisaFrm=nil then Application.CreateForm(TCountryVisaFrm,CountryVisaFrm);
  CountryVisaFrm.Show;

end;

procedure TCountryVisaFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('ÊÇ·ñÈ·ÈÏÉ¾³ý´Ë¼ÇÂ¼?','É¾³ý',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['act_status']:='D';
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

procedure TCountryVisaFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CountryVisaFrm:=nil;
end;

procedure TCountryVisaFrm.FormShow(Sender: TObject);
begin
  inherited;
  Qry_Aus.Close;
  Qry_Aus.Open;
end;

procedure TCountryVisaFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['act_status']:='E';
    FieldValues['act_user_lst']:=GUserID;
    FieldValues['act_date_lst']:=GetDatetime;
  end;
end;

procedure TCountryVisaFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['act_status']:='I';
    FieldValues['act_user_ins']:=GUserID;
    FieldValues['act_date_ins']:=GetDatetime;
    FieldValues['act_name']:='';
    FieldValues['act_code']:='';
    FieldValues['act_no']:=1;

  end;
end;

end.
