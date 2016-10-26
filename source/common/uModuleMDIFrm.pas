unit uModuleMDIFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxPC, cxClasses,
  dxBar, Data.DB, Data.Win.ADODB;

type
  TModuleMDIFrm = class(TModuleFrm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    Btn_Query: TdxBarButton;
    Btn_Insert: TdxBarButton;
    Btn_Edit: TdxBarButton;
    Btn_Save: TdxBarButton;
    Btn_Cancel: TdxBarButton;
    Btn_Delete: TdxBarButton;
    Btn_Approve: TdxBarButton;
    Btn_Close: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    procedure Btn_CloseClick(Sender: TObject);
    procedure DS_ModuleStateChange(Sender: TObject);
    procedure Qry_ModuleAfterOpen(DataSet: TDataSet);
    procedure Btn_InsertClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetButtonVisable;
    procedure SetButtonEnable;
  end;

var
  ModuleMDIFrm: TModuleMDIFrm;

implementation

{$R *.dfm}

uses uCommonDM,uMainFrm;

procedure TModuleMDIFrm.Btn_CancelClick(Sender: TObject);
begin
  inherited;
  Qry_Module.Cancel;
end;

procedure TModuleMDIFrm.Btn_CloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TModuleMDIFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
//  Qry_Module.Delete;
end;

procedure TModuleMDIFrm.Btn_EditClick(Sender: TObject);
begin
  inherited;
  Qry_Module.Edit;
end;

procedure TModuleMDIFrm.Btn_InsertClick(Sender: TObject);
begin
  inherited;
  Qry_Module.Append;
end;

procedure TModuleMDIFrm.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  Qry_Module.Close;
  Qry_Module.Open;
end;

procedure TModuleMDIFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  Qry_Module.Post;
  Qry_Module.UpdateBatch(arAll);
end;

procedure TModuleMDIFrm.DS_ModuleStateChange(Sender: TObject);
var
  vEnabled:Boolean;
begin
  inherited;
  vEnabled:=(DS_Module.State in [dsinsert,dsedit]);
  Btn_Save.Enabled:=vEnabled;
  Btn_Cancel.Enabled:=vEnabled;
  Btn_Insert.Enabled:=not vEnabled;
  Btn_Query.Enabled:=not vEnabled;
  Btn_Edit.Enabled:=not vEnabled;
  Btn_Delete.Enabled:=not vEnabled;
  Btn_Approve.Enabled:=not vEnabled;
end;

procedure TModuleMDIFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //子窗口数量
  Inc(MainFrm.FMDIcount);
  MainFrm.dxBarListItem1.Items.AddObject(Caption,Self);

  SetButtonVisable;
end;

procedure TModuleMDIFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  with MainFrm.dxBarListItem1.Items do
  begin
    if IndexOfObject(Self)<>-1 then
    Delete(IndexOfObject(Self));
  end;
end;

procedure TModuleMDIFrm.FormShow(Sender: TObject);
begin
  inherited;
  Qry_Module.Close;
  Qry_Module.Open;
end;

procedure TModuleMDIFrm.Qry_ModuleAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Btn_Edit.Enabled:=not Qry_Module.IsEmpty;
  Btn_Delete.Enabled:=not Qry_Module.IsEmpty;
  Btn_Approve.Enabled:=not Qry_Module.IsEmpty;
end;


procedure TModuleMDIFrm.SetButtonEnable;
begin

end;

procedure TModuleMDIFrm.SetButtonVisable;
begin
  Btn_Query.Visible:=ivNever;
  Btn_Insert.Visible:=ivNever;
  Btn_Edit.Visible:=ivNever;
  Btn_Save.Visible:=ivNever;
  Btn_Cancel.Visible:=ivNever;
  Btn_Delete.Visible:=ivNever;
  Btn_Approve.Visible:=ivNever;


  with CommonDM.Qry_Module do
  begin
    Close;
    Parameters.ParamByName('moduleid').Value:=GModuleID;
    Parameters.ParamByName('userid').Value:=GUserID;
    Open;
    if IsEmpty then Exit;
    if FieldValues['s_insert']=2 then Btn_Insert.Visible:=ivAlways;
    if FieldValues['s_modify']=2 then Btn_Edit.Visible:=ivAlways;
    if FieldValues['s_delete']=2 then Btn_Delete.Visible:=ivAlways;
//    if FieldValues['s_print']=2 then Btn_Insert.Visible:=ivAlways;
    if FieldValues['s_approve']=2 then Btn_Approve.Visible:=ivAlways;
    if FieldValues['s_locate']=2 then Btn_Query.Visible:=ivAlways;

  end;

  if (Btn_Insert.Visible=ivAlways)or(Btn_Edit.Visible=ivAlways) then
  begin
    Btn_Save.Visible:=ivAlways;
    Btn_Cancel.Visible:=ivAlways;
  end;

end;

end.
