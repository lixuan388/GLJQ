unit uModuleFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxPC, Data.DB, Data.Win.ADODB,uCommonDM, uCommonUnit;

type
  TModuleFrm = class(TForm)
    cxTabControl1: TcxTabControl;
    Qry_Module: TADOQuery;
    DS_Module: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleFrm: TModuleFrm;

implementation

{$R *.dfm}

end.
