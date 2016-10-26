unit uSourceInfoFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Data.Win.ADODB, dxBar, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxDBLookupComboBox, cxContainer, cxTextEdit, dxBarExtItems;

type
  TSourceInfoFrm = class(TModuleMDIGirdFrm)
    cxGrid1DBTableView1asi_Date_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1asi_User_Ins: TcxGridDBColumn;
    cxGrid1DBTableView1asi_Date_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1asi_User_Lst: TcxGridDBColumn;
    cxGrid1DBTableView1asi_Name: TcxGridDBColumn;
    cxGrid1DBTableView1asi_Link: TcxGridDBColumn;
    cxGrid1DBTableView1asi_Tel: TcxGridDBColumn;
    cxGrid1DBTableView1asi_Addr: TcxGridDBColumn;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    edt_name: TcxTextEdit;
    qry_asi_chk: TADOQuery;
    procedure Qry_ModuleAfterInsert(DataSet: TDataSet);
    procedure Qry_ModuleAfterEdit(DataSet: TDataSet);
    procedure Btn_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_QueryClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SourceInfoFrm: TSourceInfoFrm;

  procedure ExecSourceInfoFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;


procedure ExecSourceInfoFrm;
begin
  if SourceInfoFrm=nil then Application.CreateForm(TSourceInfoFrm,SourceInfoFrm);
  SourceInfoFrm.Show;

end;

procedure TSourceInfoFrm.Btn_DeleteClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('�Ƿ�ȷ��ɾ���˼�¼?','ɾ��',MB_YESNO)=idno then Exit;
  with Qry_Module do
  begin
    Edit;
    FieldValues['asi_status']:='D';
    Post;
    try
      UpdateBatch(arAll);
      Close;
      Open;
      ShowMessage('ɾ���ɹ�!');
    Except
      ShowMessage('ɾ��ʧ��,������!');
    end;
  end;
end;

procedure TSourceInfoFrm.Btn_QueryClick(Sender: TObject);
var
  vid,vno:Integer;
  vname:string;
begin
  //inherited;

  vname:=edt_name.Text;
  if Trim(vname)='' then
  begin
    MessageOfInformation('�������ѯ����.',false);
    Exit;
  end;

  with Qry_Module do
  begin
    if IsEmpty then
      vid:=0
    else
      vid:=FieldByName('asi_id').AsInteger;
    Close;
    Open;
    Locate('asi_id',vid,[]);
    if vname<>'' then
    begin
      try
        cxGrid1DBTableView1.BeginUpdate;
        vno:=RecNo;
        //ShowMessage(IntToStr(vno));
        if vno>1 then  //���Ǵӵ�һ����ʼ��
        begin
          Next;
          while not Eof do
          begin
            if Pos(vname,FieldByName('asi_name').AsString)>0 then
              Exit;
            Next;
          end;
          First;
          while not Eof do
          begin
            if Pos(vname,FieldByName('asi_name').AsString)>0 then
              Exit;
            Next;
          end;
        end
        else    //�ӵ�һ����ʼ
        begin
          while not Eof do
          begin
            if Pos(vname,FieldByName('asi_name').AsString)>0 then
              Exit;
            Next;
          end;
        end;
        Locate('asi_id',vid,[]);
        if Pos(vname,FieldByName('asi_name').AsString)=0 then
          MessageOfInformation('û���ҵ�ƥ��ļ�¼��',False);
      finally
        cxGrid1DBTableView1.EndUpdate;
      end;
    end;
  end;
end;

procedure TSourceInfoFrm.Btn_SaveClick(Sender: TObject);
begin
  cxTabControl1.SetFocus;
  with Qry_Module do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('û�пɱ�������ݡ�',False);
      Exit;
    end;
    if FieldByName('asi_name').AsString='' then
    begin
      MessageOfInformation('������[ͬ������]��',False);
      Exit;
    end;
    if qry_asi_chk.Active then qry_asi_chk.Close;
    qry_asi_chk.Parameters.ParamByName('asi_name').Value:=FieldByName('asi_name').AsString;
    qry_asi_chk.Open;
    if not qry_asi_chk.IsEmpty then
    begin
      MessageOfInformation('ϵͳ�Ѿ�����['+FieldByName('asi_name').AsString+']��ͬ����Ϣ��',False);
      Exit;
    end;
  end;
  inherited;
end;

procedure TSourceInfoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  SourceInfoFrm:=nil;
end;

procedure TSourceInfoFrm.Qry_ModuleAfterEdit(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['asi_status']:='E';
    FieldValues['asi_user_lst']:=GUserName;
    FieldValues['asi_date_lst']:=GetDatetime;
  end;
end;

procedure TSourceInfoFrm.Qry_ModuleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Module do
  begin
    FieldValues['asi_status']:='I';
    FieldValues['asi_user_ins']:=GUserName;
    FieldValues['asi_date_ins']:=GetDatetime;
    FieldValues['asi_name']:='';
    FieldValues['asi_Link']:='';
    FieldValues['asi_Tel']:='';
    FieldValues['asi_Addr']:='';


  end;
end;

end.
