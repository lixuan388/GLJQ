unit uVisaInfoFrm;

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
  TVisaInfoFrm = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1avi_Date_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1avi_User_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1avi_date_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1avi_User_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1avi_Name: TcxGridDBColumn;
    cxGrid1DBTableView1avi_Remark: TcxGridDBColumn;
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
  VisaInfoFrm: TVisaInfoFrm;

  procedure ExecVisaInfoFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;


procedure ExecVisaInfoFrm;
begin
  if VisaInfoFrm=nil then Application.CreateForm(TVisaInfoFrm,VisaInfoFrm);
  VisaInfoFrm.Show;

end;

procedure TVisaInfoFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('ÊÇ·ñÈ·ÈÏÉ¾³ý´Ë¼ÇÂ¼?','É¾³ý',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['avi_status']:='D';
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

procedure TVisaInfoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  VisaInfoFrm:=nil;
end;

procedure TVisaInfoFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['avi_status']:='E';
    FieldValues['avi_user_lst']:=GUserName;
    FieldValues['avi_date_lst']:=GetDatetime;
  end;
end;

procedure TVisaInfoFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['avi_status']:='I';
    FieldValues['avi_user_ins']:=GUserName;
    FieldValues['avi_date_ins']:=GetDatetime;
    FieldValues['avi_name']:='';
    FieldValues['avi_remark']:='';
  end;
end;

end.
