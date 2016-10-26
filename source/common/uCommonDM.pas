unit uCommonDM;

interface

uses
  SysUtils, Classes, DB, ADODB, bsSkinData, ImgList, Controls, frxClass,
  frxDBSet, cxLookAndFeels, cxClasses, cxStyles, cxGridTableView,variants;

type
  TCommonDM = class(TDataModule)
    ConVisa: TADOConnection;
    qryTemp: TADOQuery;
    ImageList_Title_2: TImageList;
    ImageList_Title_1: TImageList;
    spGetMaxId: TADOStoredProc;
    ADOCommand: TADOCommand;
    spGetAcceptNo: TADOStoredProc;
    frxPrintTemp: TfrxDBDataset;
    QryPrintTemp: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ImageList1: TImageList;
    cxStyle1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxStyleMoneyGreen: TcxStyle;
    cxStyleSkyBlue: TcxStyle;
    DSSelCountry: TDataSource;
    Qry_asi: TADOQuery;
    DS_asi: TDataSource;
    Qry_Avt: TADOQuery;
    DS_Avt: TDataSource;
    Qry_Act: TADOQuery;
    DS_Act: TDataSource;
    Qry_Module: TADOQuery;
    qrySelCountry: TADOQuery;
    qry_power: TADOQuery;
    qry_datetime: TADOQuery;
    qry_op_view: TADOQuery;
    qry_state_view: TADOQuery;
    qry_app_limit: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    function GetMaxID(KeyType: String): String;
    procedure DataModuleDestroy(Sender: TObject);             //获取ID最大号
  private
    { Private declarations }
  public
    { Public declarations }
    function GDB_datetime:TDateTime;  //获取数据库日期时间
    procedure GDB_op_view(Alist:TStrings); //获取操作类型列表
    procedure GDB_state_view(Alist:TStrings); //获取订单状态列表

    function G_app_limit(alm_name,ald_name:string):Boolean;  //允许操作
  end;

var
  CommonDM: TCommonDM;
  GUserID, GModuleID :Integer;                 //用户ID
  GUserName, GImeName :String;                //用户姓名
  Gver:string;  //系统版本 只在 DataModuleCreate 的时候赋值一次

implementation

uses uCommonUnit, uLoginfrm;

{$R *.dfm}

procedure TCommonDM.DataModuleCreate(Sender: TObject);
begin
  Gver:='1.13';
  try
    if ConVisa.Connected then ConVisa.Connected:=False;
    if ConVisa.ConnectionString<>'' then ConVisa.ConnectionString:='';
{self}
    //ConVisa.ConnectionString:='Provider=SQLOLEDB.1;Password=visadb;Persist Security Info=True;'+
    //                           'User ID=visadb;Initial Catalog=visadb;Data Source='+LoadINI('SERVER','SERVERNAME');
      //本地环境
    ConVisa.ConnectionString:='Provider=SQLOLEDB.1;Password=Smartit;Persist Security Info=True;'+
                               'User ID=sa;Initial Catalog=visadb;Data Source=192.168.222.238';
      //2000测试
//      ConVisa.ConnectionString:='Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;'+
//                               'User ID=visa;Initial Catalog=visadb_dev;Data Source=192.168.16.238';
      //正式环境
//    ConVisa.ConnectionString:='Provider=SQLOLEDB.1;Password=visadb;Persist Security Info=True;'+
//                               'User ID=visadb;Initial Catalog=visadb_dev;Data Source=192.168.0.25';
    ConVisa.Connected:=True;
  except
    MessageOfStop('不能连接数据库，请检查网络情况或系统设置!', False);
    Halt;
  end;
  GImeName := LoadINI('IME','IMENAME');

  ExecLoginInfo //检查口令
end;

function TCommonDM.GetMaxID(KeyType: String): String;
begin
  with spGetMaxId do
  begin
    Parameters.ParamByName('@iKeyType').Value:=KeyType;
    ExecProc;
    Result:=Parameters.ParamByName('@oMaxID').Value;
  end;    // with
end;

procedure TCommonDM.DataModuleDestroy(Sender: TObject);
begin
  ConVisa.Close;
end;

function TCommonDM.GDB_datetime:TDateTime;  //获取数据库日期时间
begin
  with qry_datetime do
  begin
    if Active then Close;
    Open;
    Result:=FieldByName('_datetime').AsDateTime;
  end;
end;

procedure TCommonDM.GDB_op_view(Alist:TStrings); //获取操作类型列表
begin
  with qry_op_view do
  begin
    if not Active then Open;
    Alist.Clear;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        Alist.Add(FieldByName('_op_name').AsString);
        Next;
      end;
    end;
  end;
end;

procedure TCommonDM.GDB_state_view(Alist:TStrings); //获取订单状态列表
begin
  with qry_state_view do
  begin
    if not Active then Open;
    Alist.Clear;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        Alist.Add(FieldByName('_state_name').AsString);
        Next;
      end;
    end;
  end;
end;

function TCommonDM.G_app_limit(alm_name,ald_name:string):Boolean;  //允许操作
begin
  Result:=False;
  with qry_app_limit do
  begin
    if not IsEmpty then
    begin
      if Locate('alm_name;ald_name',varArrayof([alm_name,ald_name]),[]) then
      begin
        Result:=True;
      end;
    end;
  end;
end;

end.
