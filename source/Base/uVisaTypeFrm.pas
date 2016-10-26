unit uVisaTypeFrm;

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
  TVisaTypeFrm = class(TModuleMDIGirdFrm)
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
  VisaTypeFrm: TVisaTypeFrm;

  procedure ExecVisaTypeFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;

procedure ExecVisaTypeFrm;
begin
  if VisaTypeFrm=nil then Application.CreateForm(TVisaTypeFrm,VisaTypeFrm);
  VisaTypeFrm.Show;

end;

procedure TVisaTypeFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('是否确认删除此记录?','删除',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['avt_status']:='D';
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

procedure TVisaTypeFrm.Btn_SaveClick(Sender: TObject);
begin
  //检查下
  if edt_f.CanFocus then edt_f.SetFocus;
  with Qry_Module do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if FieldByName('avt_Name').IsNull then
    begin
      MessageOfInformation('办理类型不能为空！',False);
      Exit;
    end;
    if FieldByName('avt_Name').AsString='' then
    begin
      MessageOfInformation('请输入办理类型！',False);
      Exit;
    end;
  end;

  inherited;

end;

procedure TVisaTypeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  VisaTypeFrm:=nil;
end;

procedure TVisaTypeFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['avt_status']:='E';
    FieldValues['avt_user_lst']:=GUserName;
    FieldValues['avt_date_lst']:=GetDatetime;
  end;
end;

procedure TVisaTypeFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['avt_status']:='I';
    FieldValues['avt_user_ins']:=GUserName;
    FieldValues['avt_date_ins']:=GetDatetime;
    FieldValues['avt_name']:='';

  end;
end;

end.
