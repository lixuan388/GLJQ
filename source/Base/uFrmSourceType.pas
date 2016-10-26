unit uFrmSourceType;

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
  TFrmSourceType = class(TModuleMDIGirdFrm)
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
  FrmSourceType: TFrmSourceType;

  procedure ExecFrmSourceType;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure ExecFrmSourceType;
begin
  if FrmSourceType=nil then Application.CreateForm(TFrmSourceType,FrmSourceType);
  FrmSourceType.Show;

end;

procedure TFrmSourceType.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('是否确认删除此记录?','删除',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['ast_status']:='D';
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

procedure TFrmSourceType.Btn_SaveClick(Sender: TObject);
begin
  //检查下
  if edt_f.CanFocus then edt_f.SetFocus;
  with Qry_Module do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if FieldByName('ast_Name').IsNull then
    begin
      MessageOfInformation('客户类别不能为空！',False);
      Exit;
    end;
    if FieldByName('ast_Name').AsString='' then
    begin
      MessageOfInformation('请输入客户类别！',False);
      Exit;
    end;
  end;

  inherited;

end;

procedure TFrmSourceType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  FrmSourceType:=nil;
end;

procedure TFrmSourceType.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['ast_status']:='E';
    FieldValues['ast_user_lst']:=GUserName;
    FieldValues['ast_date_lst']:=GetDatetime;
  end;
end;

procedure TFrmSourceType.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['ast_status']:='I';
    FieldValues['ast_user_ins']:=GUserName;
    FieldValues['ast_date_ins']:=GetDatetime;
    FieldValues['ast_name']:='';

  end;
end;

end.
