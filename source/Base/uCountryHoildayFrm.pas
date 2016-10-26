unit uCountryHoildayFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIFrm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxClasses, dxBar,
  cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxGridCustomView, cxGrid,
  cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxScrollBox,DateUtils,
  cxCheckBox, Vcl.ExtCtrls;

type
  TCountryHoildayFrm = class(TModuleMDIFrm)
    cxTabControl2: TcxTabControl;
    cxTabControl3: TcxTabControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Qry_Country: TADOQuery;
    Qry_Hoilday: TADOQuery;
    DS_Country: TDataSource;
    DS_Hoilday: TDataSource;
    cxGrid1DBTableView1act_name: TcxGridDBColumn;
    cxTabControl4: TcxTabControl;
    cxScrollBox1: TcxScrollBox;
    CB_Year: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    Panel1: TPanel;
    procedure Qry_HoildayAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormResize(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure CB_YearPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    CBDate:array [1..12,1..31] of TcxCheckBox;
    LBMouth:array [1..12] of TcxLabel;

    procedure CreateCheck;
    procedure CreateYear(vYear:Integer);

    procedure OpenHoilday();
    procedure AppendHoilday();
  public
    { Public declarations }

  end;

var
  CountryHoildayFrm: TCountryHoildayFrm;
  procedure ExecCountryHoildayFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit;


procedure ExecCountryHoildayFrm;
begin
  if CountryHoildayFrm=nil then Application.CreateForm(TCountryHoildayFrm,CountryHoildayFrm);
  CountryHoildayFrm.Show;

end;
{ TCountryHoildayFrm }
procedure TCountryHoildayFrm.AppendHoilday;
var
  DateFr:TDate;
  DateTo:TDate;
  Days:integer;
begin
  try
    Qry_Hoilday.DisableControls;
    with Qry_Hoilday do
    begin
      dateFr:=StrToDate('2010-01-01');
      DateTo:=DateFr+365*30;
      while DateFr<dateto do
      begin
        Append;
        FieldValues['ahd_date']:=DateFr;
        Days:=DayOfWeek(DateFr);
        case Days of
          1,7:FieldValues['ahd_IsHoilday']:=true;
          else FieldValues['ahd_IsHoilday']:=false;
        end;
        Post;
        DateFr:=DateFr+1;
      end;
    end;
  finally
    Qry_Hoilday.EnableControls;
  end;
end;

procedure TCountryHoildayFrm.CB_YearPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  try
    Panel1.Visible:=True;
    Application.ProcessMessages;
    CreateYear(StrToInt(CB_Year.Text));
    OpenHoilday;
  finally
    Panel1.Visible:=False;
  end;
end;

procedure TCountryHoildayFrm.CreateCheck;
const
  weekStr:array [0..6] of string=('日','一','二','三','四','五','六');
var
  i,j:Integer;
  x,y:Integer;
  LB:TcxLabel;
  CB:TcxCheckBox;
begin
  x:=50;
  y:=0;
  for I := 0 to 6 do
  begin
    lb:=TcxLabel.Create(cxScrollBox1);
    LB.Parent:=cxScrollBox1;
    LB.Left:=x;
    LB.Top:=y;
    LB.Width:=50;
    LB.Caption:='星期'+weekStr[i];
    LB.Transparent:=True;

    lb:=TcxLabel.Create(cxScrollBox1);
    LB.Parent:=cxScrollBox1;
    LB.Left:=x+50*7;
    LB.Top:=y;
    LB.Width:=50;
    LB.Caption:='星期'+weekStr[i];
    LB.Transparent:=True;
    x:=x+50;
  end;

  for I := 1 to 12 do
  begin
      LBMouth[i]:=TcxLabel.Create(cxScrollBox1);
      LBMouth[i].Parent:=cxScrollBox1;
      LBMouth[i].Left:=0;
      LBMouth[i].Top:=0;
      LBMouth[i].Width:=50;
      LBMouth[i].Caption:=inttostr(i)+'月';
      LBMouth[i].Transparent:=True;
    for j := 1 to 31 do
    begin
      CBDate[i][j]:=TcxCheckBox.Create(cxScrollBox1);
      cbdate[i][j].Parent:=cxScrollBox1;
      cbdate[i][j].Caption:=FormatFloat('00',j);
      cbdate[i][j].Left:=0;
      cbdate[i][j].Top:=0;
      cbdate[i][j].Width:=50;
      CBDate[i][j].Style.Assign(cxCheckBox1.Style);
      case i of
        1,3,5,7,9,11:cbdate[i][j].Style.Color:=clMoneyGreen;
        2,4,6,8,10,12:cbdate[i][j].Style.Color:=clSkyBlue;
      end;
      cbdate[i][j].Transparent:=false;
      cbdate[i][j].Visible:=False;
      cbdate[i][j].OnClick:=cxCheckBox1Click;
    end;
  end;

end;

procedure TCountryHoildayFrm.CreateYear(vYear: Integer);
var
  i,j:Integer;
  c:Integer;
  DateFr:TDate;
  DateTo:TDate;
  x,y:Integer;
  m:Integer;
begin
  for I := 1 to 12 do
  begin
    for j := 1 to 31 do
    begin
      CBDate[i][j].Visible:=False;
    end;
  end;

  DateFr:=StrToDate(IntToStr(vYear)+'-01-01');
  DateTo:=StrToDate(IntToStr(vYear+1)+'-01-01');
  c:=DayOfWeek(DateFr)-1;
  m:=0;
//  ShowMessage(inttostr(i));
  x:=c*50+50;
  y:=20;

  while DateFr<dateto do
  begin
    if m<>MonthOf(DateFr) then
    begin
      m:=MonthOf(DateFr);
      LBMouth[m].Top:=y;
      LBMouth[m].Left:=0;
    end;
    i:=MonthOf(DateFr);
    j:=DayOf(DateFr);

    CBDate[i][j].Left:=x;
    CBDate[i][j].Top:=y;
    CBDate[i][j].Visible:=True;
    CBDate[i][j].Tag:=Round(DateFr);

    x:=x+50;
    c:=c+1;
    if c>=14 then
    begin
      x:=50;
      y:=y+20;
      c:=0;
    end;
    DateFr:=DateFr+1;
  end;

end;

procedure TCountryHoildayFrm.cxCheckBox1Click(Sender: TObject);
var
  cb:TcxCheckBox;
  date:TDate;
begin
  inherited;
  cb:=sender as TcxCheckBox;
  date:=cb.Tag;
  with Qry_Hoilday do
  begin
    if not IsEmpty then
    begin
      if Locate('ahd_date',FormatDateTime('yyyy-mm-dd',date),[]) then
      begin
        Edit;
        FieldValues['ahd_IsHoilday']:=cb.Checked;
        FieldValues['ahd_date_Lst']:=GetDatetime;
        FieldValues['ahd_User_Lst']:=GUserName;
        Post;
      end;
    end;
  end;
end;

procedure TCountryHoildayFrm.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  OpenHoilday;
end;

procedure TCountryHoildayFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CountryHoildayFrm:=nil;
end;

procedure TCountryHoildayFrm.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  Qry_Country.Close;
  Qry_Country.Open;
  CreateCheck;
  for i := 2010 to 2030 do
  begin
    CB_Year.Properties.Items.Add(IntToStr(i));
  end;
  CB_Year.Text:=IntToStr(YearOf(Date));

    CreateYear(StrToInt(CB_Year.Text));


end;

procedure TCountryHoildayFrm.FormResize(Sender: TObject);
begin
  inherited;
  Panel1.left:=(Self.Width-Panel1.Width) div 2 ;
  Panel1.Top:=(Self.Height-Panel1.Height) div 2 ;
end;

procedure TCountryHoildayFrm.OpenHoilday;
var
  DateFr:TDate;
  DateTo:TDate;
  m,d:Integer;
begin
  try
    Qry_Country.DisableControls;
    Qry_Hoilday.DisableControls;
    Panel1.Visible:=True;
    Application.ProcessMessages;
    with Qry_Hoilday do
    begin
      Close;
      if not Qry_Country.IsEmpty then
      begin
        Parameters.ParamByName('ahd_id_act').Value:=Qry_Country.FieldValues['act_id'];
        Parameters.ParamByName('ahd_date').Value:=StrToInt(CB_Year.Text);
        Open;
        if IsEmpty then
        begin
          AppendHoilday;
        end;
        DateFr:=StrToDate(CB_Year.Text+'-01-01');
        DateTo:=StrToDate(CB_Year.Text+'-12-31');
        Locate('ahd_date',FormatDateTime('yyyy-mm-dd',DateFr),[]);
        DateFr:=FieldValues['ahd_date'];

        while ((datefr<=dateto) and (not eof)) do
        begin
          m:=MonthOf(FieldValues['ahd_date']) ;
          d:=DayOf(FieldValues['ahd_date']);
          CBDate[m][d].Checked:=FieldValues['ahd_IsHoilday'];
          Next;
          DateFr:=FieldValues['ahd_date'];
        end;

      end;
    end;
  finally
    Qry_Country.EnableControls;
    Qry_Hoilday.EnableControls;
    Panel1.Visible:=False;
  end;
end;

procedure TCountryHoildayFrm.Qry_HoildayAfterInsert(DataSet: TDataSet);
begin
  inherited;
  with Qry_Hoilday do
  begin
    FieldValues['ahd_status']:='I';
    FieldValues['ahd_Date_Ins']:=GetDatetime;
    FieldValues['ahd_User_Ins']:=GUserName;
    FieldValues['ahd_id_act']:=Qry_Country.FieldValues['act_id'];
  end;
end;

end.


