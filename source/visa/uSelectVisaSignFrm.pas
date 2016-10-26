unit uSelectVisaSignFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TSelectVisaSignFrm = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qry_SelectVisaSign: TADOQuery;
    DS_SelectVisaSign: TDataSource;
    cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn;
    cxGrid1DBTableView1avg_source: TcxGridDBColumn;
    cxGrid1DBTableView1avg_sourceName: TcxGridDBColumn;
    cxGrid1DBTableView1act_name: TcxGridDBColumn;
    cxGrid1DBTableView1avt_Name: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id: TcxGridDBColumn;
    cxGrid1DBTableView1avg_state: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ResultID:Integer;
  end;

var
  SelectVisaSignFrm: TSelectVisaSignFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure TSelectVisaSignFrm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if Qry_SelectVisaSign.IsEmpty then Exit;
  ResultID:=Qry_SelectVisaSign.FieldValues['avg_id'];
  Close;

end;
procedure TSelectVisaSignFrm.FormCreate(Sender: TObject);
begin
  ResultID:=-1;

end;


end.
