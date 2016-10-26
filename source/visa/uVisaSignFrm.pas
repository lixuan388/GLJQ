unit uVisaSignFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxContainer, cxEdit, Data.DB,
  Data.Win.ADODB, cxLabel, cxPC, cxScrollBox, cxMemo, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit,
  cxMaskEdit, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,System.DateUtils,
  cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGroupBox, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxCurrencyEdit;

type
  TVisaSignFrm = class(TForm)
    cxScrollBox1: TcxScrollBox;
    cxTabControl1: TcxTabControl;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    Qry_Avg: TADOQuery;
    DS_Avg: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cb_sourcetype: TcxDBComboBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    cxTabControl2: TcxTabControl;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxTabControl3: TcxTabControl;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxTabControl4: TcxTabControl;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxTabControl5: TcxTabControl;
    cxTabControl6: TcxTabControl;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    qry_ava: TADOQuery;
    DS_ava: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ava_id: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id_avg: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_app: TcxGridDBColumn;
    cxGrid1DBTableView1ava_no_app: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_lastname_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_firstname_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_alias: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_ever: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_no_iden: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_now: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_pvc_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_cty_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fathername: TcxGridDBColumn;
    cxGrid1DBTableView1ava_mothername: TcxGridDBColumn;
    cxGrid1DBTableView1ava_marriage: TcxGridDBColumn;
    cxGrid1DBTableView1ava_home_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_tel_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fax_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_tel_work: TcxGridDBColumn;
    cxGrid1DBTableView1ava_fax_work: TcxGridDBColumn;
    cxGrid1DBTableView1ava_mobile: TcxGridDBColumn;
    cxGrid1DBTableView1ava_bbc: TcxGridDBColumn;
    cxGrid1DBTableView1ava_email: TcxGridDBColumn;
    cxGrid1DBTableView1ava_status: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_province: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_city: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_county: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_address: TcxGridDBColumn;
    cxGrid1DBTableView1ava_ntn_before: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_province: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_city: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_county: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_address: TcxGridDBColumn;
    cxGrid1DBTableView1ava_home_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_now_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_addr: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_mobile: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_tel: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_fax: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_post: TcxGridDBColumn;
    cxGrid1DBTableView1ava_liaison_email: TcxGridDBColumn;
    cxGrid1DBTableView1ava_citizenship: TcxGridDBColumn;
    cxGrid1DBTableView1ava_commercial: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1ava_code: TcxGridDBColumn;
    cxGrid1DBTableView1ava_update1: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxTabControl7: TcxTabControl;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Qry_avgh: TADOQuery;
    DS_avgh: TDataSource;
    cxGrid2DBTableView1avgh_Date_op: TcxGridDBColumn;
    cxGrid2DBTableView1avgh_User_op: TcxGridDBColumn;
    cxGrid2DBTableView1avgh_GuestName: TcxGridDBColumn;
    cxGrid2DBTableView1avgh_type: TcxGridDBColumn;
    cxGrid2DBTableView1avgh_remark: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxDBDateEdit7: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Qry_avs: TADOQuery;
    DS_avs: TDataSource;
    cxGrid1DBTableView1_ava_index: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_state: TcxGridDBColumn;
    tc_up_down: TcxTabControl;
    btn_up: TcxButton;
    btn_down: TcxButton;
    sp_ava_up_down: TADOStoredProc;
    sp_get_invoiceno: TADOStoredProc;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    qry_act: TADOQuery;
    ds_act: TDataSource;
    qry_ast: TADOQuery;
    qry_avg_old: TADOQuery;
    qry_avgh_split_orders: TADOQuery;
    qry_avb_old: TADOQuery;
    qry_avb_new: TADOQuery;
    cxLabel24: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel25: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    sp_app_limit: TADOStoredProc;
    cxGrid1DBTableView1_ava_idcard: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_remark1: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_remark2: TcxGridDBColumn;
    cxDBCheckBox5: TcxDBCheckBox;
    cxGrid1DBTableView1_ava_age: TcxGridDBColumn;
    cxLabel26: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure Qry_AvgAfterInsert(DataSet: TDataSet);
    procedure DS_AvgStateChange(Sender: TObject);
    procedure qry_avaAfterInsert(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure cxDBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure btn_upClick(Sender: TObject);
    procedure btn_downClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    Favg_id:Integer;       //����Id  ��ֶ�����
    FavaId:string;         //Ҫ��ֵ�����ID ����
    FGuestNameList:string;  //Ҫ��ֵ��������û���
    Fava_count:Integer;  //�����������
    Favg_invoiceno_old:string;  //ԭ������������
    { Private declarations }
    procedure set_avg_invoiceno;//��������� ����ʱ��󱣴�׶�
  public
    { Public declarations }
    procedure RefreshGuestList;
    procedure Open(vID:Integer);
    procedure Open_BuZiLiao(vID,vNumber:Integer);//�򿪲��ҵ�ָ���Ĳ����ϼ�¼ ����
    procedure Append;
    function Post:Boolean;  //��������
    procedure refresh_avs(Act_id:Integer);

    function Save_check:Boolean;  //����ʱ�ı����飨���������� �Դ���ʾ ���������ڱ���ǰ����

    procedure SplitOrder_append(Avg_id:Integer;AvaId:string); //��ֶ��������� 2014-11-27
    function SplitOrder_Save_check:Boolean;  //��ֶ����ı����飨���������� �Դ���ʾ �ڲ�ֶ������ڱ���ǰ����
    function SplitOrder_Post:Boolean;  //��ֶ����ı�������

    function need_op_order:Boolean;  //�Ƿ�˳�����  ������������
    procedure op_button_active(var Acj:Boolean; //���
                               var Abzl:Boolean; //������
                               var Afy:Boolean; //����
                               var Acopy:Boolean; //��ӡ
                               var Ayy:Boolean; //ԤԼ
                               var Azl:Boolean; //����
                               var Ads:Boolean; //����
                               var Asq:Boolean; //��ǩ
                               var Algbl:Boolean; //��ݲ���
                               var Algsh:Boolean; //������
                               var Aqh:Boolean; //ȡ��
                               var Ajq:Boolean; //��ǩ
                               var Aff:Boolean; //����
                               var Axq:Boolean  //��ǩ
                                );  //������Щ ����ʹ��  ������������
  end;

var
  VisaSignFrm: TVisaSignFrm;

  function ExecVisaSignFrm(P:TWinControl):TVisaSignFrm;

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit, ufrmSourceQuery,ufrmBuZiLiao;


function ExecVisaSignFrm(P:TWinControl):TVisaSignFrm;
var
  VisaSign: TVisaSignFrm;
begin
  VisaSign:=TVisaSignFrm.Create(P);
  VisaSign.Parent:=P;
  VisaSign.Align:=alClient;
  VisaSign.Show;
  Result:=VisaSign;

end;


procedure TVisaSignFrm.Append;
begin
  cxGroupBox6.Visible:=False;
  cxGrid1DBTableView1ava_StatusType.Visible:=False;
  with Qry_Avg do
  begin
    Close;
    Parameters.ParamByName('avg_id').Value:=-1;
    Open;
    Append;
  end;
  with qry_ava do
  begin
    Close;
    Parameters.ParamByName('ava_id_avg').Value:=-1;
    Open;
    Append;
  end;

end;

procedure TVisaSignFrm.SplitOrder_append(Avg_id:Integer;AvaId:string); //��ֶ��������� 2014-11-27
begin
  Favg_id:=Avg_id;
  FavaId:=AvaId;

  cxGroupBox6.Visible:=False;
  cxGrid1DBTableView1ava_StatusType.Visible:=False;

  with Qry_Avg_old do
  begin
    Close;
    Parameters.ParamByName('avg_id').Value:=Favg_id;
    Open;
    Favg_invoiceno_old:=FieldByName('avg_invoiceno').AsString;
  end;
  with Qry_Avg do
  begin
    Close;
    Parameters.ParamByName('avg_id').Value:=-1;
    Open;
    Append;
    FieldValues['avg_source']:=Qry_Avg_old.FieldValues['avg_source'];
    FieldValues['avg_SourceName']:=Qry_Avg_old.FieldValues['avg_SourceName'];
    //FieldValues['avg_date_sign']:=Qry_Avg_old.FieldValues['avg_date_sign'];
    FieldValues['avg_id_act']:=Qry_Avg_old.FieldValues['avg_id_act'];
    FieldValues['avg_id_type']:=Qry_Avg_old.FieldValues['avg_id_type'];
    FieldValues['avg_id_avs']:=Qry_Avg_old.FieldValues['avg_id_avs'];
    FieldValues['avg_name_aar']:=Qry_Avg_old.FieldValues['avg_name_aar'];
    FieldValues['avg_id_aar']:=Qry_Avg_old.FieldValues['avg_id_aar'];
    //FieldValues['avg_remark']:=Qry_Avg_old.FieldValues['avg_remark'];
    FieldByName('avg_remark').AsString:='��ֶ���_ԭ�����ţ�'+Favg_invoiceno_old+';'+Qry_Avg_old.FieldByName('avg_remark').AsString;
    FieldValues['avg_date_st']:=Qry_Avg_old.FieldValues['avg_date_st'];
    FieldValues['avg_date_re']:=Qry_Avg_old.FieldValues['avg_date_re'];
    FieldValues['avg_date_cancel']:=Qry_Avg_old.FieldValues['avg_date_cancel'];
    FieldValues['avg_need1']:=Qry_Avg_old.FieldValues['avg_need1'];
    FieldValues['avg_need2']:=Qry_Avg_old.FieldValues['avg_need2'];
    FieldValues['avg_need3']:=Qry_Avg_old.FieldValues['avg_need3'];
    FieldValues['avg_need4']:=Qry_Avg_old.FieldValues['avg_need4'];
    FieldValues['avg_Source_link']:=Qry_Avg_old.FieldValues['avg_Source_link'];
    FieldValues['avg_Source_tel']:=Qry_Avg_old.FieldValues['avg_Source_tel'];
    FieldValues['avg_Source_addr']:=Qry_Avg_old.FieldValues['avg_Source_addr'];
  end;
  with qry_ava do
  begin
    Close;
    SQL.Text:='select * from ava_visa_application where ava_id in '
             +' ('+FavaId+')'
             +' and ava_status<>''D'' '
             +' and ava_state<>''����'' '
             +' order by ava_index  ';
    Open;
    if not IsEmpty then
    begin
      FGuestNameList:='';
      Fava_count:=0;
      First;
      while not Eof do
      begin
        if FGuestNameList='' then
        begin
          FGuestNameList:=FieldByName('ava_name_c').AsString;
        end
        else
        begin
          FGuestNameList:=FGuestNameList+','+FieldByName('ava_name_c').AsString;
        end;
        Edit;
        FieldByName('ava_id_avg').AsInteger:=Qry_Avg.FieldByName('avg_id').AsInteger;
        Post;
        Fava_count:=Fava_count+1;
        Next;
      end;
    end;
  end;
  DS_ava.AutoEdit:=False;
  with  cxGrid1DBTableView1 do
  begin
    Navigator.Visible:=False;
    OptionsData.Appending:=False;
    OptionsData.Deleting:=False;
    OptionsData.Editing:=False;
    OptionsData.Inserting:=False;
  end;
end;

procedure TVisaSignFrm.btn_downClick(Sender: TObject);
var
  vselect_index,vcount:Integer;
  v1_id,v1_index:Integer;
  v2_id,v2_index:Integer;
begin   //���ƶ�
  with cxGrid1DBTableView1 do
  begin
    if Controller.SelectedRowCount=0 then Exit;
    vcount:=DataController.RecordCount;
    if vcount=0 then Exit;
    vselect_index:=Controller.SelectedRows[0].RecordIndex;
    if vselect_index>=(vcount-1) then Exit;
    with DataController do
    begin
      v1_id:=GetValue(vselect_index,cxGrid1DBTableView1ava_id.Index);
      v1_index:=GetValue(vselect_index,cxGrid1DBTableView1_ava_index.Index);
      v2_id:=GetValue(vselect_index+1,cxGrid1DBTableView1ava_id.Index);
      v2_index:=GetValue(vselect_index+1,cxGrid1DBTableView1_ava_index.Index);
    end;
  end;

  with sp_ava_up_down do
  begin
    if Active then Close;
    Parameters.ParamByName('@ava1_id').Value:=v1_id;
    Parameters.ParamByName('@ava1_index').Value:=v1_index;
    Parameters.ParamByName('@ava2_id').Value:=v2_id;
    Parameters.ParamByName('@ava2_index').Value:=v2_index;
    ExecProc;
    if Parameters.ParamByName('@RETURN_VALUE').Value=1 then
    begin
      qry_ava.Close;
      qry_ava.Open;
      qry_ava.Locate('ava_id',v1_id,[]);
    end;
  end;
end;

procedure TVisaSignFrm.btn_upClick(Sender: TObject);
var
  vselect_index:Integer;
  v1_id,v1_index:Integer;
  v2_id,v2_index:Integer;
begin //���ƶ�
  with cxGrid1DBTableView1 do
  begin
    if Controller.SelectedRowCount=0 then Exit;
    vselect_index:=Controller.SelectedRows[0].RecordIndex;
    if vselect_index=0 then Exit;
    with DataController do
    begin
      v1_id:=GetValue(vselect_index,cxGrid1DBTableView1ava_id.Index);
      v1_index:=GetValue(vselect_index,cxGrid1DBTableView1_ava_index.Index);
      v2_id:=GetValue(vselect_index-1,cxGrid1DBTableView1ava_id.Index);
      v2_index:=GetValue(vselect_index-1,cxGrid1DBTableView1_ava_index.Index);
    end;
  end;

  with sp_ava_up_down do
  begin
    if Active then Close;
    Parameters.ParamByName('@ava1_id').Value:=v1_id;
    Parameters.ParamByName('@ava1_index').Value:=v1_index;
    Parameters.ParamByName('@ava2_id').Value:=v2_id;
    Parameters.ParamByName('@ava2_index').Value:=v2_index;
    ExecProc;
    if Parameters.ParamByName('@RETURN_VALUE').Value=1 then
    begin
      qry_ava.Close;
      qry_ava.Open;
      qry_ava.Locate('ava_id',v1_id,[]);
    end;
  end;
end;

procedure TVisaSignFrm.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  //����ʱ���ѡ��ͻ�
  with Qry_Avg do
  begin
    if state=dsInsert then
      ExecfrmSourceQuery_ins(Self);
  end;
end;

procedure TVisaSignFrm.cxDBLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  with Qry_Avg do
  begin
    if State=dsInsert then
    begin
      refresh_avs(cxDBLookupComboBox1.EditValue);
    end;
  end;
end;

procedure TVisaSignFrm.cxGrid1DBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TVisaSignFrm.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //˫����ʷ��¼ ����ǲ����ϵļ�¼����ʾ�����ϵĶԻ���
  with Qry_avgh do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    if FieldByName('avgh_type').AsString='������' then
    begin
      //��ʾ�����ϵĶԻ���
      ExecfrmBuZiLiao( FieldByName('avgh_number').AsInteger );
    end;
  end;
end;

procedure TVisaSignFrm.cxGrid2DBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TVisaSignFrm.DS_AvgStateChange(Sender: TObject);
begin
  DS_ava.AutoEdit:=(Qry_Avg.State in [dsedit,dsinsert]);
  cxGrid1DBTableView1.Navigator.Visible:=(Qry_Avg.State in [dsedit,dsinsert]);
end;

procedure TVisaSignFrm.FormCreate(Sender: TObject);
begin
  with CommonDM do
  begin
    Qry_asi.Close;
    Qry_asi.Open;
    Qry_Act.Close;
    Qry_Act.Open;
    Qry_Avt.Close;
    Qry_Avt.Open;
  end;
  with qry_act do   //����
  begin
    if Active then Close;
    Open;
  end;
  with qry_ast do         //�ͻ�����
  begin
    if Active then Close;
    Open;
    if IsEmpty then
    begin
      cb_sourcetype.Properties.Items.Clear;
    end
    else
    begin
      First;
      cb_sourcetype.Properties.Items.Clear;
      while not Eof do
      begin
        cb_sourcetype.Properties.Items.Add(FieldByName('ast_name').AsString);
        Next;
      end;
    end;
  end;

end;

procedure TVisaSignFrm.Open(vID: Integer);
begin
  with Qry_Avg do
  begin
    Close;
    Parameters.ParamByName('avg_id').Value:=vID;
    Open;
    if IsEmpty then
    begin
      refresh_avs(0);
    end
    else
    begin
      refresh_avs(FieldByName('avg_id_act').AsInteger);
    end;
  end;
  with qry_ava do
  begin
    Close;
    Parameters.ParamByName('ava_id_avg').Value:=vID;
    Open;
  end;
  with qry_avgh do
  begin
    Close;
    Parameters.ParamByName('avgh_id_avg').Value:=vID;
    Open;
  end;
  //ֻ��״̬��ֹ����
  with cxGrid1DBTableView1.OptionsData do
  begin
    Appending:=False;
    Deleting:=False;
    Editing:=True;
    Inserting:=False;
  end;
end;

procedure TVisaSignFrm.Open_BuZiLiao(vID,vNumber:Integer);  //�򿪲��ҵ�ָ���Ĳ����ϼ�¼ ����
begin
  with Qry_Avg do
  begin
    Close;
    Parameters.ParamByName('avg_id').Value:=vID;
    Open;
    if IsEmpty then
    begin
      refresh_avs(0);
    end
    else
    begin
      refresh_avs(FieldByName('avg_id_act').AsInteger);
    end;
  end;
  with qry_ava do
  begin
    Close;
    Parameters.ParamByName('ava_id_avg').Value:=vID;
    Open;
  end;
  with qry_avgh do
  begin
    Close;
    Parameters.ParamByName('avgh_id_avg').Value:=vID;
    Open;
  end;
  //ֻ��״̬��ֹ����
  with cxGrid1DBTableView1.OptionsData do
  begin
    Appending:=False;
    Deleting:=False;
    Editing:=True;
    Inserting:=False;
  end;
  if vNumber>0 then
  begin
    with qry_avgh do
    begin
      if not Active then Exit;
      if IsEmpty then Exit;
      if Locate('avgh_number',vNumber,[]) then
      begin
        if fieldbyname('avgh_type').asstring='������' then
          ExecfrmBuZiLiao( FieldByName('avgh_number').AsInteger ); //��ʾ�����ϵĶԻ���
      end;
    end;
  end;
end;

procedure TVisaSignFrm.set_avg_invoiceno;//��������� ����ʱ��󱣴�׶�
var
  vinvoiceno:string;
  vact:Integer;
begin
  with Qry_Avg do
  begin
    if FieldByName('avg_invoiceno').AsString<>'' then Exit;
    if FieldByName('avg_id_act').IsNull then Exit;
    vact:=FieldByName('avg_id_act').AsInteger;

    if sp_get_invoiceno.Active then sp_get_invoiceno.Close;
    sp_get_invoiceno.Parameters.ParamByName('@act_id').Value:=vact;
    sp_get_invoiceno.Open;
    if sp_get_invoiceno.IsEmpty then
    begin
      vinvoiceno:='';
    end
    else
    begin
      vinvoiceno:=sp_get_invoiceno.FieldByName('_invoiceno').AsString;
    end;

    if (State=dsInsert) or (State=dsEdit) then
      FieldByName('avg_invoiceno').AsString:=vinvoiceno;
  end;

end;


function TVisaSignFrm.Save_check:Boolean;  //����ʱ�ı����� �Դ���ʾ
var
  i:Integer;
  vage:Integer;
  vdatetime:TDateTime;
begin
  Result:=False;
  cxDBMemo1.SetFocus;
  cxDBTextEdit1.SetFocus;
  with Qry_Avg do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('û�пɱ�������ݣ�',False);
      Exit;
    end;
    if FieldByName('avg_id_act').IsNull then
    begin
      MessageOfInformation('��ѡ�������ң�',False);
      Exit;
    end;
    if FieldByName('avg_id_type').IsNull then
    begin
      MessageOfInformation('��ѡ��������ͣ�',False);
      Exit;
    end;
//    if FieldByName('avg_num').IsNull then
//    begin
//      MessageOfInformation('����д����������',False);
//      Exit;
//    end;
//    if FieldByName('avg_num').AsInteger<=0 then
//    begin
//      MessageOfInformation('������������Ϊ�㣡',False);
//      Exit;
//    end;
    if FieldByName('avg_price').IsNull then
    begin
      MessageOfInformation('�����뵥�ۣ�',False);
      Exit;
    end;
    if FieldByName('avg_date_send').IsNull then
    begin
      MessageOfInformation('����ѡ����ǩ���ڣ�',False);
      Exit;
    end;
    if FieldByName('avg_source').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����',False);
      Exit;
    end;
    if FieldByName('avg_SourceName').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����ƣ�',False);
      Exit;
    end;
  end;

  //��ǰ����
  vdatetime:=GetDate;

  with qry_ava do
  begin
    First;
    i:=0;
    while not Eof do
    begin
      i:=i+1;
      if FieldByName('ava_name_c').IsNull then
      begin
        MessageOfInformation('��'+inttostr(i)+'��������������Ϊ�գ�',False);
        Exit;
      end;
      if FieldByName('ava_name_c').AsString='' then
      begin
        MessageOfInformation('����д��'+inttostr(i)+'�����˵�������',False);
        Exit;
      end;
      //�������д�������ڵĻ� �Զ���������  2015-04-24
      if not FieldByName('ava_date_birth').IsNull then
      begin
        vage:=YearsBetween(vdatetime,FieldByName('ava_date_birth').AsDateTime)+1;
        if FieldByName('ava_age').AsInteger<>vage then
        begin
          if (State<>dsInsert) and (State<>dsedit) then
            Edit;
          FieldByName('ava_age').AsInteger:=vage;
          Post;
        end;
      end;
      Next;
    end;
    //�Զ��������������� 2014-11-17
    with Qry_Avg do
    begin
      if (State<>dsInsert) and (State<>dsedit) then
        Edit;
      if i<>FieldByName('avg_num').AsInteger then  //��������
      begin
        FieldByName('avg_num').AsInteger:=i;
      end;
      //����Ӧ��
      FieldByName('avg_amount').AsCurrency:=FieldByName('avg_num').AsInteger*FieldByName('avg_price').AsCurrency;
      if qry_act.Locate('act_id',FieldByName('avg_id_act').AsInteger,[]) then
      begin
        FieldByName('avg_name_aar').AsString:=qry_act.FieldByName('act_name_aar').AsString;
        FieldByName('avg_id_aar').AsInteger:=qry_act.FieldByName('act_id_aar').AsInteger;
      end
      else
      begin
        FieldByName('avg_name_aar').AsString:='';
        FieldByName('avg_id_aar').AsInteger:=0;
      end;
    end;
  end;

  Result:=True;
end;

function TVisaSignFrm.SplitOrder_Save_check:Boolean;  //��ֶ����ı����� �Դ���ʾ �ڲ�ֶ������ڱ���ǰ����
var
  i,vnumber,vcount:Integer;
  vGuestNameList,vremark:string;

  vnew_invoiceno:string;
  vnew_id:Integer;
begin
  Result:=False;
  cxDBMemo1.SetFocus;
  cxDBTextEdit1.SetFocus;
  with Qry_Avg do
  begin
    if IsEmpty then
    begin
      MessageOfInformation('û�пɱ�������ݣ�',False);
      Exit;
    end;
    if FieldByName('avg_id_act').IsNull then
    begin
      MessageOfInformation('��ѡ�������ң�',False);
      Exit;
    end;
    if FieldByName('avg_id_type').IsNull then
    begin
      MessageOfInformation('��ѡ��������ͣ�',False);
      Exit;
    end;
//    if FieldByName('avg_num').IsNull then
//    begin
//      MessageOfInformation('����д����������',False);
//      Exit;
//    end;
//    if FieldByName('avg_num').AsInteger<=0 then
//    begin
//      MessageOfInformation('������������Ϊ�㣡',False);
//      Exit;
//    end;
    if FieldByName('avg_price').IsNull then
    begin
      MessageOfInformation('�����뵥�ۣ�',False);
      Exit;
    end;
    if FieldByName('avg_date_send').IsNull then
    begin
      MessageOfInformation('����ѡ����ǩ���ڣ�',False);
      Exit;
    end;
    if FieldByName('avg_source').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����',False);
      Exit;
    end;
    if FieldByName('avg_SourceName').IsNull then
    begin
      MessageOfInformation('����ѡ��ͻ����ƣ�',False);
      Exit;
    end;

    //�Զ���������������  ��ְ汾
    if (State<>dsInsert) and (State<>dsedit) then
      Edit;
    if Fava_count<>FieldByName('avg_num').AsInteger then  //��������
    begin
      FieldByName('avg_num').AsInteger:=Fava_count;
    end;
    FieldByName('avg_amount').AsCurrency:=FieldByName('avg_num').AsInteger*FieldByName('avg_price').AsCurrency;
    if qry_act.Locate('act_id',FieldByName('avg_id_act').AsInteger,[]) then
    begin
      FieldByName('avg_name_aar').AsString:=qry_act.FieldByName('act_name_aar').AsString;
      FieldByName('avg_id_aar').AsInteger:=qry_act.FieldByName('act_id_aar').AsInteger;
    end
    else
    begin
      FieldByName('avg_name_aar').AsString:='';
      FieldByName('avg_id_aar').AsInteger:=0;
    end;
    //������
    set_avg_invoiceno;//��������� ����ʱ��󱣴�׶�
    vnew_invoiceno:=FieldByName('avg_invoiceno').AsString;
    vnew_id:=FieldByName('avg_id').AsInteger;
  end;
  //������ʷ��¼ �����¾ɶ����������𵥼�¼�ͣ������Ĳ����ϼ�¼�Ĳ��
  with qry_avgh_split_orders do
  begin
    if Active then Close;
    Open;
    //��ֶ���
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=Favg_id;
    FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=FGuestNameList;
    FieldByName('avgh_type').AsString:='��ֶ���';
    FieldByName('avgh_remark').AsString:='ԭ������'+Favg_invoiceno_old+';�¶�����'+vnew_invoiceno+';';
    FieldByName('avgh_number').AsInteger:=strtoint(GetMaxID('avgh_number'));
    FieldByName('avgh_num').AsInteger:=Fava_count;
    FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
    Post;
    //���¼��
    Append;
    FieldByName('avgh_status').AsString:='I';
    FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_Ins').AsString:=GUserName;
    FieldByName('avgh_id_avg').AsInteger:=vnew_id;
    FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
    FieldByName('avgh_User_op').AsString:=GUserName;
    FieldByName('avgh_GuestName').AsString:=FGuestNameList;
    FieldByName('avgh_type').AsString:='���¼��';
    FieldByName('avgh_remark').AsString:='ԭ������'+Favg_invoiceno_old+';�¶�����'+vnew_invoiceno+';';
    FieldByName('avgh_number').AsInteger:=strtoint(GetMaxID('avgh_number'));
    FieldByName('avgh_num').AsInteger:=Fava_count;
    FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
    Post;
    //�����ϼ�¼
    qry_avb_new.Close;
    qry_avb_new.Open;
    qry_avb_old.Close;
    qry_avb_old.SQL.Text:='select * '
                         +' from avb_visa_buziliao '
                         +' where avb_id_ava in ('+FavaId+')'
                         +' order by avb_number_avgh  ';
    qry_avb_old.Open;
    if not qry_avb_old.IsEmpty then
    begin
      qry_avb_old.First;
      //��������ʷ��¼��ʼ
      vnumber:=strtoint(GetMaxID('avgh_number'));
      vGuestNameList:='';
      vremark:='';
      i:=qry_avb_old.FieldByName('avb_number_avgh').AsInteger;
      vcount:=0;
      while not qry_avb_old.Eof do
      begin
        if i<>qry_avb_old.FieldByName('avb_number_avgh').AsInteger then //����ʷ��¼
        begin
          //������������ʷ��¼
          Append;
          FieldByName('avgh_status').AsString:='I';
          FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
          FieldByName('avgh_User_Ins').AsString:=GUserName;
          FieldByName('avgh_id_avg').AsInteger:=vnew_id;
          FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
          FieldByName('avgh_User_op').AsString:=GUserName;
          FieldByName('avgh_GuestName').AsString:=vGuestNameList;
          FieldByName('avgh_type').AsString:='������';
          FieldByName('avgh_remark').AsString:='ԭ������'+Favg_invoiceno_old+';�¶�����'+vnew_invoiceno+';�����ϼ�¼��'+vremark;
          FieldByName('avgh_number').AsInteger:=vnumber;
          FieldByName('avgh_num').AsInteger:=vcount;
          FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
          Post;
          //׼���µĲ�������ʷ��¼
          vnumber:=strtoint(GetMaxID('avgh_number'));
          vGuestNameList:='';
          vremark:='';
          i:=qry_avb_old.FieldByName('avb_number_avgh').AsInteger;
          vcount:=0;
        end;
        qry_avb_new.Append;
        qry_avb_new.FieldByName('avb_user_ins').AsString:=qry_avb_old.FieldByName('avb_user_ins').AsString;
        qry_avb_new.FieldByName('avb_date_ins').AsDateTime:=qry_avb_old.FieldByName('avb_date_ins').AsDateTime;
        qry_avb_new.FieldByName('avb_user_lst').AsString:=qry_avb_old.FieldByName('avb_user_lst').AsString;
        qry_avb_new.FieldByName('avb_date_lst').AsDateTime:=qry_avb_old.FieldByName('avb_date_lst').AsDateTime;
        qry_avb_new.FieldByName('avb_status').AsString:=qry_avb_old.FieldByName('avb_status').AsString;
        qry_avb_new.FieldByName('avb_number_avgh').AsInteger:=vnumber;
        qry_avb_new.FieldByName('avb_id_ava').AsInteger:=qry_avb_old.FieldByName('avb_id_ava').AsInteger;
        qry_avb_new.FieldByName('avb_name_ava').AsString:=qry_avb_old.FieldByName('avb_name_ava').Asstring;
        qry_avb_new.FieldByName('avb_id_avi').AsInteger:=qry_avb_old.FieldByName('avb_id_avi').AsInteger;
        qry_avb_new.FieldByName('avb_name_avi').AsString:=qry_avb_old.FieldByName('avb_name_avi').Asstring;
        qry_avb_new.FieldByName('avb_remark').AsString:='�𵥵����¼_ԭ������'+Favg_invoiceno_old+';�¶�����'+vnew_invoiceno+';'+qry_avb_old.FieldByName('avb_remark').AsString;
        qry_avb_new.FieldByName('avb_state').AsInteger:=qry_avb_old.FieldByName('avb_state').AsInteger;
        qry_avb_new.FieldByName('avb_note').AsString:=qry_avb_old.FieldByName('avb_note').Asstring;
        qry_avb_new.Post;
        if Pos(qry_avb_new.FieldByName('avb_name_ava').AsString,vGuestNameList)=0 then
          vGuestNameList:=vGuestNameList+qry_avb_new.FieldByName('avb_name_ava').AsString+';';
        if Pos(qry_avb_new.FieldByName('avb_name_avi').AsString,vremark)=0 then
          vremark:=vremark+qry_avb_new.FieldByName('avb_name_avi').AsString+';';
        vcount:=vcount+1;
        qry_avb_old.Next;
      end;
      if vcount>0 then
      begin
        //�������һ����������ʷ��¼
        Append;
        FieldByName('avgh_status').AsString:='I';
        FieldByName('avgh_Date_Ins').AsDateTime:=GetDatetime;
        FieldByName('avgh_User_Ins').AsString:=GUserName;
        FieldByName('avgh_id_avg').AsInteger:=vnew_id;
        FieldByName('avgh_Date_op').AsDateTime:=GetDatetime;
        FieldByName('avgh_User_op').AsString:=GUserName;
        FieldByName('avgh_GuestName').AsString:=vGuestNameList;
        FieldByName('avgh_type').AsString:='������';
        FieldByName('avgh_remark').AsString:='ԭ������'+Favg_invoiceno_old+';�¶�����'+vnew_invoiceno+';�����ϼ�¼��'+vremark;
        FieldByName('avgh_number').AsInteger:=vnumber;
        FieldByName('avgh_num').AsInteger:=vcount;
        FieldByName('avgh_id_aus_op').AsInteger:=GUserID;
        Post;
      end;
    end;
  end;


  Result:=True;
end;


function TVisaSignFrm.Post:Boolean;
begin
  try
    set_avg_invoiceno;//��������� ����ʱ��󱣴�׶�
    Qry_Avg.Post;
    //qry_ava.Post;
    Qry_Avg.UpdateBatch(arAll);
    qry_ava.UpdateBatch(arAll);
    DS_Avg.AutoEdit:=False;
    DS_ava.AutoEdit:=False;
    cxGrid1DBTableView1.Navigator.Buttons.Append.Visible:=False;
    cxGrid1DBTableView1.Navigator.Buttons.Delete.Visible:=False;
    Result:=True;
  except
    on E:Exception do
    begin
      ShowMessage(e.Message);
      Result:=False;
    end;
  end;
end;

function TVisaSignFrm.SplitOrder_Post:Boolean;  //��ֶ����ı�������
begin
  try
    Qry_Avg.UpdateBatch(arAll);
    qry_ava.UpdateBatch(arAll);
    qry_avgh_split_orders.UpdateBatch(arAll);
    qry_avb_new.UpdateBatch(arAll);
    DS_Avg.AutoEdit:=False;
    DS_ava.AutoEdit:=False;

    with CommonDM.ADOCommand do
    begin
      CommandText:='exec PAV_UpdateVisaGroupState '+inttostr(Favg_id)+' '+#13#10
                  +' exec PAV_UpdateVisaGroupState '+inttostr(Qry_Avg.FieldByName('avg_id').AsInteger);
      Execute;
    end;

    Result:=True;
  except
    on E:Exception do
    begin
      ShowMessage(e.Message);
      Result:=False;
    end;
  end;
end;

function TVisaSignFrm.need_op_order:Boolean;  //�Ƿ�˳�����
var
  vavg_id:Integer;
begin
  Result:=True;  //��˳�����
  with Qry_Avg do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vavg_id:=FieldByName('avg_id').AsInteger;
  end;
  with sp_app_limit do
  begin
    if Active then Close;
    Parameters.ParamByName('@avg_id').Value:=vavg_id;
    ExecProc;
    if Parameters.ParamByName('@RETURN_VALUE').Value=1 then
      Result:=False;   //����˳�����
  end;
end;

procedure TVisaSignFrm.op_button_active(var Acj:Boolean; //���
                                       var Abzl:Boolean; //������
                                       var Afy:Boolean; //����
                                       var Acopy:Boolean; //��ӡ
                                       var Ayy:Boolean; //ԤԼ
                                       var Azl:Boolean; //����
                                       var Ads:Boolean; //����
                                       var Asq:Boolean; //��ǩ
                                       var Algbl:Boolean; //��ݲ���
                                       var Algsh:Boolean; //������
                                       var Aqh:Boolean; //ȡ��
                                       var Ajq:Boolean; //��ǩ
                                       var Aff:Boolean; //����
                                       var Axq:Boolean  //��ǩ
                                       );  //������Щ ����ʹ��
var
  vava_StatusType:string;
  vava_id:Integer;
begin
//���ڵĹ����ǿ�����ǰ�����ܻ�ͷ����������״̬Ϊ���ݻ���
  Acj:=false; //���
  Abzl:=false; //������
  Afy:=false; //����
  Acopy:=false; //��ӡ
  Ayy:=false; //ԤԼ
  Azl:=false; //����
  Ads:=false; //����
  Asq:=false; //��ǩ
  Algbl:=false; //��ݲ���
  Algsh:=false; //������
  Aqh:=false; //ȡ��
  Ajq:=false; //��ǩ
  Aff:=false; //����
  Axq:=false; //��ǩ

  with CommonDM.qry_app_limit do
  begin
    if not Active then
      Open;
    if IsEmpty then
      Exit;
  end;

  cxGrid1DBTableView1.BeginUpdate;
  try
    with Qry_ava do
    begin
      if not IsEmpty then
      begin
        vava_id:=FieldByName('ava_id').AsInteger;
        First;
        while not Eof do
        begin
          vava_StatusType:=FieldByName('ava_StatusType').AsString;
          if not Acj then
            Acj:=CommonDM.G_app_limit('���',vava_StatusType); //���
          if not Abzl then
            Abzl:=CommonDM.G_app_limit('������',vava_StatusType); //������
          if not Afy then
            Afy:=CommonDM.G_app_limit('����',vava_StatusType); //����
          if not Acopy then
            Acopy:=CommonDM.G_app_limit('��ӡ',vava_StatusType); //��ӡ
          if not Ayy then
            Ayy:=CommonDM.G_app_limit('ԤԼ',vava_StatusType); //ԤԼ
          if not Azl then
            Azl:=CommonDM.G_app_limit('����',vava_StatusType); //����
          if not Ads then
            Ads:=CommonDM.G_app_limit('����',vava_StatusType); //����
          if not Asq then
            Asq:=CommonDM.G_app_limit('��ǩ',vava_StatusType); //��ǩ
          if not Algbl then
            Algbl:=CommonDM.G_app_limit('��ݲ���',vava_StatusType); //��ݲ���
          if not Algsh then
            Algsh:=CommonDM.G_app_limit('������',vava_StatusType); //������
          if not Aqh then
            Aqh:=CommonDM.G_app_limit('ȡ��',vava_StatusType); //ȡ��
          if not Ajq then
            Ajq:=CommonDM.G_app_limit('��ǩ',vava_StatusType); //��ǩ
          if not Aff then
            Aff:=CommonDM.G_app_limit('����',vava_StatusType); //����
          if not Axq then
            Axq:=CommonDM.G_app_limit('��ǩ',vava_StatusType); //��ǩ
          Next;
        end;
        Locate('ava_id',vava_id,[]);
      end;
    end;
  finally
    cxGrid1DBTableView1.EndUpdate;
  end;

end;

procedure TVisaSignFrm.qry_avaAfterInsert(DataSet: TDataSet);
begin
  with qry_ava do
  begin
    FieldValues['ava_id']:=GetMaxID('ava_id');
    FieldValues['ava_id_avg']:=Qry_Avg.FieldValues['avg_id'];
    FieldValues['ava_name_c']:='';
    FieldValues['ava_name_e']:='';
    FieldValues['ava_name_p']:='';
    FieldValues['ava_PassPortNo']:='';
    FieldValues['ava_sex']:=1;
    FieldValues['ava_StatusType']:='¼��';
    FieldValues['ava_Remark']:='';
    FieldValues['ava_State']:='����';

    FieldByName('ava_index').AsInteger:= cxGrid1DBTableView1.DataController.RecordCount;
  end;
end;

procedure TVisaSignFrm.Qry_AvgAfterInsert(DataSet: TDataSet);
begin
  with Qry_Avg do
  begin
    FieldValues['avg_id']:=GetMaxID('avg_id');
    FieldValues['avg_invoiceno']:='';
    FieldValues['avg_source']:='ͬ��';
    FieldValues['avg_state']:='¼��';
    FieldValues['avg_date_sign']:=GetDate;
    FieldValues['avg_date_start']:=GetDatetime;
    FieldValues['avg_num']:=1;
    FieldValues['avg_user_enter']:=GUserName;
    FieldValues['avg_date_enter']:=GetDatetime;
    FieldValues['avg_need1']:=0;
    FieldValues['avg_need2']:=0;
    FieldValues['avg_need3']:=0;
    FieldValues['avg_need4']:=0;

    FieldByName('avg_op_order_flg').AsBoolean:=False;
  end;
end;

procedure TVisaSignFrm.RefreshGuestList;
begin
  qry_ava.Close;
  qry_ava.Open;
end;

procedure TVisaSignFrm.refresh_avs(Act_id:Integer);
var
  vact_id:Integer;
begin
  with Qry_avs do
  begin
    vact_id:=0;
    if Active then
    begin
      if Parameters.ParamByName('avs_id_act').Value<>Null then
        vact_id:=Parameters.ParamByName('avs_id_act').Value;
      Close;
    end;
    Parameters.ParamByName('avs_id_act').Value:=Act_id;
    Open;
  end;
  with Qry_Avg do
  begin
    if (State=dsInsert)and(vact_id<>Act_id)and(FieldByName('avg_id_type').AsVariant<>null) then
    begin
      FieldByName('avg_id_type').AsVariant:=null;
    end;
  end;
end;




end.
