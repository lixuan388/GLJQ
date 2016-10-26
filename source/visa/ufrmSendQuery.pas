unit ufrmSendQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uModuleMDIGridFrm, cxGraphics,cxgridexportlink,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, cxTextEdit, dxBarExtItems, dxBar, cxClasses,
  Data.Win.ADODB, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxImageComboBox, dxdbtrel,
  cxMaskEdit, cxDropDownEdit, cxSSheet, cxCheckBox;

type
  TfrmSendQuery = class(TModuleMDIGirdFrm)
    datebegin: TdxBarDateCombo;
    dateend: TdxBarDateCombo;
    dxBarStatic1: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    edt_name: TcxTextEdit;
    sd_1: TSaveDialog;
    btn_excel: TdxBarButton;
    cxGrid1DBTableView1avg_id: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_enter: TcxGridDBColumn;
    cxGrid1DBTableView1avg_state: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_send: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_rtn: TcxGridDBColumn;
    cxGrid1DBTableView1avg_user_send: TcxGridDBColumn;
    cxGrid1DBTableView1avg_invoiceno: TcxGridDBColumn;
    cxGrid1DBTableView1avg_source: TcxGridDBColumn;
    cxGrid1DBTableView1avg_SourceName: TcxGridDBColumn;
    cxGrid1DBTableView1avg_date_sign: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_act: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_type: TcxGridDBColumn;
    cxGrid1DBTableView1avg_id_avs: TcxGridDBColumn;
    cxGrid1DBTableView1avg_remark: TcxGridDBColumn;
    cxGrid1DBTableView1avg_amount: TcxGridDBColumn;
    cxGrid1DBTableView1_send: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id: TcxGridDBColumn;
    cxGrid1DBTableView1ava_index: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    qry_area: TADOQuery;
    ds_area: TDataSource;
    ltv_area: TdxLookupTreeView;
    dxBarStatic2: TdxBarStatic;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    qry_avs_select: TADOQuery;
    ds_avs_select: TDataSource;
    ltv_avs: TdxLookupTreeView;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarControlContainerItem3: TdxBarControlContainerItem;
    qry_avt_select: TADOQuery;
    ds_avt_select: TDataSource;
    qry_ast: TADOQuery;
    cb_state: TcxComboBox;
    cb_source: TcxComboBox;
    edt_SourceName: TcxTextEdit;
    ltv_type: TdxLookupTreeView;
    dxBarStatic4: TdxBarStatic;
    dxBarControlContainerItem4: TdxBarControlContainerItem;
    dxBarStatic5: TdxBarStatic;
    dxBarControlContainerItem5: TdxBarControlContainerItem;
    dxBarStatic6: TdxBarStatic;
    dxBarControlContainerItem6: TdxBarControlContainerItem;
    dxBarStatic7: TdxBarStatic;
    dxBarControlContainerItem7: TdxBarControlContainerItem;
    cxGrid1DBTableView1ava_idcard: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark1: TcxGridDBColumn;
    cxGrid1DBTableView1ava_remark2: TcxGridDBColumn;
    ssb_sheet: TcxSpreadSheetBook;
    dxBarStatic8: TdxBarStatic;
    cb_show: TcxComboBox;
    dxBarControlContainerItem8: TdxBarControlContainerItem;
    dxBarControlContainerItem9: TdxBarControlContainerItem;
    cb_order_by: TcxCheckBox;
    procedure btn_excelClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qry_areaAfterScroll(DataSet: TDataSet);
    procedure cb_showPropertiesChange(Sender: TObject);
  private
    Farea_all:string;
    { Private declarations }
    procedure refresh_avs(act_id:Integer); //刷新签证种类条件选项
    procedure sheet_show;   //显示excel表
    procedure SetMerged(Left, Top, Right,Bottom: Integer);   //合并单元格
  public
    { Public declarations }
  end;

var
  frmSendQuery: TfrmSendQuery;
  procedure ExecfrmSendQuery;
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit,uVisaSignQueryFrm;
procedure ExecfrmSendQuery;
begin
  if frmSendQuery=nil then
    frmSendQuery:=TfrmSendQuery.Create(Application);
  frmSendQuery.WindowState:=wsMaximized;
  frmSendQuery.Show;
end;

procedure TfrmSendQuery.refresh_avs(act_id:Integer); //刷新签证种类条件选项
begin
  with qry_avs_select do
  begin
    if not Active then Open;
    if not IsEmpty then
    begin
      Filtered:=False;
      Filter:='avs_id_act=-1';
      if (act_id>0) and (act_id<1000000) then
        Filter:='avs_id_act=-1 or avs_id_act='+inttostr(act_id);
      Filtered:=True;
      First;
      ltv_avs.Text:=FieldByName('avs_name').AsString;
    end
  end;
end;

procedure TfrmSendQuery.SetMerged(Left, Top, Right,Bottom: Integer);   //合并单元格
var
  ARect: TRect;
begin
  with ssb_sheet.ActiveSheet do  //当前页
  begin
    ARect.Left:=Left;
    ARect.Top:=Top;
    ARect.Right:=Right;
    ARect.Bottom:=Bottom;
    SetMergedState(ARect, True);
  end;
end;

procedure TfrmSendQuery.sheet_show;   //显示excel表
var
  i:Integer;
  vAvg_id,vrow:Integer;
begin
  with ssb_sheet do
  begin
    try
      BeginUpdate;
      cxGrid1DBTableView1.BeginUpdate;
      ClearAll;
      AddSheetPage('送签记录');
      //显示标题
      with Pages[0] do
      begin
        Cols.Size[0]:=45;
        GetCellObject(0,0).Text:='序号';
        GetCellObject(1,0).Text:='受理编号';
        Cols.Size[2]:=50;
        GetCellObject(2,0).Text:='区域';
        Cols.Size[3]:=60;
        GetCellObject(3,0).Text:='国家';
        GetCellObject(4,0).Text:='客户类别';

        GetCellObject(5,0).Text:='客户名称';
        Cols.Size[6]:=45;
        GetCellObject(6,0).Text:='人数';
        Cols.Size[7]:=60;
        GetCellObject(7,0).Text:='状态';
        GetCellObject(8,0).Text:='中文姓名';
        Cols.Size[9]:=45;
        GetCellObject(9,0).Text:='性别';

        GetCellObject(10,0).Text:='护照号';
        Cols.Size[11]:=120;
        GetCellObject(11,0).Text:='身份证';
        GetCellObject(12,0).Text:='备注';
        GetCellObject(13,0).Text:='备注1';
        GetCellObject(14,0).Text:='备注2';
      end;
      if not Qry_Module.IsEmpty then
      begin
        Qry_Module.First;
        i:=0;
        vAvg_id:=0;
        while not Qry_Module.Eof do
        begin
          i:=i+1;
          Pages[0].GetCellObject(0,i).Text:=IntToStr(i);
          if vAvg_id<>Qry_Module.FieldByName('avg_id').AsInteger then
          begin
            vrow:=i+Qry_Module.FieldByName('avg_num').AsInteger-1;
            Pages[0].GetCellObject(1,i).Style.Format:=35;//文本显示？
            Pages[0].GetCellObject(1,i).Text:=Qry_Module.FieldByName('avg_invoiceno').AsString;//'受理编号';
            SetMerged(1, i, 1,vrow);   //合并单元格
            Pages[0].GetCellObject(2,i).Text:=Qry_Module.FieldByName('avg_name_aar').AsString;//'区域';
            SetMerged(2, i, 2,vrow);   //合并单元格
            Pages[0].GetCellObject(3,i).Text:=Qry_Module.FieldByName('act_name').AsString;//'国家';
            SetMerged(3, i, 3,vrow);   //合并单元格
            Pages[0].GetCellObject(4,i).Text:=Qry_Module.FieldByName('avg_source').AsString;//'客户类别';
            SetMerged(4, i, 4,vrow);   //合并单元格
            Pages[0].GetCellObject(5,i).Text:=Qry_Module.FieldByName('avg_SourceName').AsString;//'客户名称';
            SetMerged(5, i, 5,vrow);   //合并单元格
            Pages[0].GetCellObject(6,i).Text:=inttostr(Qry_Module.FieldByName('avg_num').AsInteger);//'人数';
            SetMerged(6, i, 6,vrow);   //合并单元格
            vAvg_id:=Qry_Module.FieldByName('avg_id').AsInteger;
          end;
          Pages[0].GetCellObject(7,i).Text:=Qry_Module.FieldByName('ava_StatusType').AsString;//'状态';
          Pages[0].GetCellObject(8,i).Text:=Qry_Module.FieldByName('ava_name_c').AsString;//'中文姓名';
          if Qry_Module.FieldByName('ava_sex').AsInteger=1 then
            Pages[0].GetCellObject(9,i).Text:='男';//'性别';
          if Qry_Module.FieldByName('ava_sex').AsInteger=2 then
            Pages[0].GetCellObject(9,i).Text:='女';//'性别';
          Pages[0].GetCellObject(10,i).Text:=Qry_Module.FieldByName('ava_PassPortNo').AsString;//'护照号';
          Pages[0].GetCellObject(11,i).Style.Format:=35;//文本显示？
          Pages[0].GetCellObject(11,i).Text:=Qry_Module.FieldByName('ava_idcard').AsString;//'身份证';
          Pages[0].GetCellObject(12,i).Text:=Qry_Module.FieldByName('ava_remark').AsString;//'备注';
          Pages[0].GetCellObject(13,i).Text:=Qry_Module.FieldByName('ava_remark1').AsString;//'备注1';
          Pages[0].GetCellObject(14,i).Text:=Qry_Module.FieldByName('ava_remark2').AsString; //'备注2';
          Qry_Module.Next;
        end;
      end;
    finally
      EndUpdate;
      cxGrid1DBTableView1.EndUpdate;
    end;
  end;


end;

procedure TfrmSendQuery.btn_excelClick(Sender: TObject);
var
  vfilename:string;
begin
  //inherited;    导出Excel
  if not Qry_Module.Active then Exit;
  if Qry_Module.IsEmpty then Exit;

  if cb_show.ItemIndex=1 then   //树形显示
  begin
    with sd_1 do
    begin
      filename:='送签记录树'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        ExportGridToExcel(FileName,cxGrid1,True,True);
      end;
    end;
  end;
  if cb_show.ItemIndex=0 then   //表格显示
  begin
    with sd_1 do
    begin
      filename:='送签记录表'+FormatDateTime('mmddhhnnss',Now);
      if Execute then
      begin
        vfilename:=FileName;
        ssb_sheet.SaveToFile(vfilename);
      end;
    end;
  end;
end;

{select avg_id,avg_user_enter,avg_date_enter,avg_state,
avg_date_send,avg_date_rtn,avg_user_send,
avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,
avg_id_act,avg_id_type,avg_id_avs,avg_remark,avg_amount,
'['+isnull(avg_invoiceno,'')+':'+isnull(avg_state,'')+'] '+
isnull(act_name,'')+'-'+isnull(avt_Name,'')+'-'+isnull(avs_Name,'')+
' 客户：'+isnull(avg_source,'')+'-'+isnull(avg_SourceName,'')+
' 送签：'+isnull(avg_user_send,'')+' '+CONVERT(varchar(10),avg_date_send,120) as _send,
ava_id,ava_index,ava_StatusType,
ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark
from ava_visa_application with(nolock),avg_visa_group with(nolock)
left join act_country on act_id=avg_id_act
left join avt_visa_type on avt_id=avg_id_type
left join avs_visa_speed on avs_id=avg_id_avs
where avg_id=ava_id_avg
and ava_status<>'D'
and ava_state<>'退团'

and avg_date_send between '2014-11-01' and '2014-11-30'

order by avg_id,ava_index}

procedure TfrmSendQuery.Btn_QueryClick(Sender: TObject);
var
  vname:string;
begin
  inherited;//查询
  if datebegin.Date>dateend.Date then
  begin
    MessageOfInformation('开始日期不能大于结束日期！',False);
    Exit;
  end;

  with Qry_Module do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_user_enter,avg_date_enter,avg_state,'
             +' avg_date_send,avg_date_rtn,avg_user_send, '
             +' avg_invoiceno,avg_source,avg_SourceName,avg_date_sign,'
             +' avg_id_act,avg_id_type,avg_id_avs,avg_remark,avg_amount,'
             +' ''[''+isnull(avg_invoiceno,'''')+'':''+isnull(avg_state,'''')+''] ''+'
             +' isnull(avg_name_aar,'''')+''-''+isnull(act_name,'''')+''-''+isnull(avt_Name,'''')+''-''+isnull(avs_Name,'''')+'
             +' '' 客户：''+isnull(avg_source,'''')+''-''+isnull(avg_SourceName,'''')+'
             +' '' 送签：''+isnull(avg_user_send,'''')+'' ''+CONVERT(varchar(10),avg_date_send,120)+'
             +' '' 人数：''+cast(isnull(avg_num,0) as varchar(9)) as _send,'
             +' avg_name_aar,act_name,avg_num,'
             +' ava_id,ava_index,ava_StatusType,'
             +' ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,ava_Date_Sign,ava_Date_End,ava_Remark,ava_idcard,ava_remark1,ava_remark2'
             +' from ava_visa_application with(nolock),avg_visa_group with(nolock)'
             +' left join act_country on act_id=avg_id_act'
             +' left join avt_visa_type on avt_id=avg_id_type'
             +' left join avs_visa_speed on avs_id=avg_id_avs'
             +' where avg_id=ava_id_avg'
             +' and avg_status<>''D''  '
             +' and ava_status<>''D''  '
             +' and ava_state<>''退团'' ';
    SQL.Text:=SQL.Text+' and avg_date_send between '''+FormatDateTime('yyyy-mm-dd 00:00:00',datebegin.Date)+''' and '''+FormatDateTime('yyyy-mm-dd 23:59:59',dateend.Date)+''' ';

    if qry_area.FieldByName('_id').AsInteger>0 then   //区域
    begin
      if qry_area.FieldByName('_level').AsInteger=1 then   //洲
        SQL.Add(' and avg_id_aar='+inttostr(qry_area.FieldByName('_id').AsInteger));
      if qry_area.FieldByName('_level').AsInteger=2 then   //国家
        SQL.Add(' and avg_id_act='+inttostr(qry_area.FieldByName('_id').AsInteger));
    end;

    vname:=Replace_keyword(edt_name.Text);
    if vname<>'' then  //送签人员
    begin
      SQL.Add(' and avg_user_send like '''+vname+'%'' ');
    end;
    //状态
    if cb_state.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_state.Text);
      SQL.Add(' and avg_state like ''%'+vname+'%''        ' );
    end;
    //客户类别
    if cb_source.ItemIndex>0 then
    begin
      vname:=Replace_keyword(cb_source.Text);
      SQL.Add(' and avg_source ='+QuotedStr(vname) );
    end;
    //客户名称
    vname:=Replace_keyword(edt_SourceName.Text);
    if vname<>'' then
    begin
      SQL.Add(' and avg_sourceName like ''%'+vname+'%''        ' );
    end;
    //办理类型
    if not qry_avt_select.IsEmpty then
    begin
      if qry_avt_select.FieldByName('avt_id').AsInteger>0 then
      begin
        SQL.Add(' and avg_id_type ='+inttostr(qry_avt_select.FieldByName('avt_id').AsInteger) );
      end;
    end;
    //办理种类
    if not qry_avs_select.IsEmpty then
    begin
      if qry_avs_select.FieldByName('avs_id').AsInteger>0 then
      begin
        SQL.Add(' and avg_id_avs ='+inttostr(qry_avs_select.FieldByName('avs_id').AsInteger) );
      end;
    end;
    //排序
    if cb_order_by.Checked then
      SQL.Add(' order by avg_id_act,avg_date_send,avg_id,ava_index   ') //按国家 和 日期排序
    else
      SQL.Add(' order by avg_id,ava_index  ');
    Open;
    sheet_show;   //显示excel表
  end;

end;

procedure TfrmSendQuery.cb_showPropertiesChange(Sender: TObject);
begin
  //inherited;  切换显示方式
  if cb_show.ItemIndex=0 then   //表格显示
  begin
    cxGrid1.Visible:=False;
    ssb_sheet.Visible:=True;
  end;
  if cb_show.ItemIndex=1 then   //树形显示
  begin
    cxGrid1.Visible:=True;
    ssb_sheet.Visible:=False;
  end;
end;

procedure TfrmSendQuery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmSendQuery);
end;

procedure TfrmSendQuery.FormCreate(Sender: TObject);
begin
  inherited;
  ssb_sheet.ClearAll;
  CommonDM.GDB_state_view(cb_state.Properties.Items);
  cb_state.ItemIndex:=0;

  with qry_ast do         //客户类型
  begin
    if Active then Close;
    Open;
    cb_source.Properties.Items.Clear;
    if IsEmpty then
    begin
      cb_source.Properties.Items.Add('-=全部=-');
    end
    else
    begin
      First;
      cb_source.Properties.Items.Add('-=全部=-');
      while not Eof do
      begin
        cb_source.Properties.Items.Add(FieldByName('ast_name').AsString);
        Next;
      end;
    end;
  end;
  cb_source.ItemIndex:=0;
  with qry_avt_select do
  begin
    if Active then Close;
    Open;
    if not IsEmpty then
    begin
      First;
      ltv_type.Text:=FieldByName('avt_Name').AsString;
    end;
  end;

  with qry_area do
  begin
    if Active then Close;
    Open;
    Farea_all:='';
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if Farea_all<>'' then
          Farea_all:=Farea_all+','+inttostr(FieldByName('_id').AsInteger)
        else
          Farea_all:=inttostr(FieldByName('_id').AsInteger);
        Next;
      end;
      First;
      ltv_area.Text:=FieldByName('_name').AsString;
    end;
  end;

  refresh_avs(-1); //刷新签证种类条件选项
end;

procedure TfrmSendQuery.qry_areaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qry_area do
  begin
    if IsEmpty then
      refresh_avs(-1)
    else
      refresh_avs(qry_area.FieldByName('_id').AsInteger); //刷新签证种类条件选项
  end;
end;

end.
