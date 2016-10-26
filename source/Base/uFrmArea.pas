unit uFrmArea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Data.Win.ADODB, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxDBLookupComboBox, Vcl.StdCtrls;

type
  TFrmArea = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1avt_Date_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1avt_User_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1avt_Date_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1avt_User_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1avt_Name: TcxGridDBColumn;
    edt_f: TEdit;
    procedure Qry_ModuleAfterInsert(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArea: TFrmArea;

  procedure ExecFrmArea;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure ExecFrmArea;
begin
  if FrmArea=nil then Application.CreateForm(TFrmArea,FrmArea);
  FrmArea.Show;

end;

procedure TFrmArea.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('是否确认删除此记录?','删除',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['aar_status']:='D';
    Post;
    try
      UpdateBatch(arAll);
      Close;
      Open;
      ShowMessage('删除成功!');
    Except
      ShowMessage('删除失败,请重试!');
    end;
  end;
end;

procedure TFrmArea.Btn_SaveClick(Sender: TObject);
begin
  //检查下
  if edt_f.CanFocus then edt_f.SetFocus;
  with Qry_Module do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if FieldByName('aar_Name').IsNull then
    begin
      MessageOfInformation('区域不能为空！',False);
      Exit;
    end;
    if FieldByName('aar_Name').AsString='' then
    begin
      MessageOfInformation('请输入区域！',False);
      Exit;
    end;
  end;

  inherited;

end;

procedure TFrmArea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  FrmArea:=nil;
end;

procedure TFrmArea.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['aar_status']:='E';
    FieldValues['aar_user_lst']:=GUserName;
    FieldValues['aar_date_lst']:=GetDatetime;
  end;
end;

procedure TFrmArea.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['aar_status']:='I';
    FieldValues['aar_user_ins']:=GUserName;
    FieldValues['aar_date_ins']:=GetDatetime;
    FieldValues['aar_name']:='';

  end;
end;

end.
