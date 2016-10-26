unit uVisaAppSelectGuestListFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Data.Win.ADODB, cxLabel, cxPC, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCheckListBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxRadioGroup, cxMemo;

type
  TVisaAppSelectGuestListFrm = class(TForm)
    cxTabControl1: TcxTabControl;
    cxLabel1: TcxLabel;
    qry_ava: TADOQuery;
    DS_ava: TDataSource;
    cxTabControl6: TcxTabControl;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ava_name_c: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_e: TcxGridDBColumn;
    cxGrid1DBTableView1ava_name_p: TcxGridDBColumn;
    cxGrid1DBTableView1ava_PassPortNo: TcxGridDBColumn;
    cxGrid1DBTableView1ava_sex: TcxGridDBColumn;
    cxGrid1DBTableView1ava_date_birth: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_Sign: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Date_End: TcxGridDBColumn;
    cxGrid1DBTableView1ava_StatusType: TcxGridDBColumn;
    cxGrid1DBTableView1ava_Remark: TcxGridDBColumn;
    cxGrid1DBTableView1ava_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxTabControl2: TcxTabControl;
    Btn_Save: TcxButton;
    btn_Close: TcxButton;
    cxTabControl3: TcxTabControl;
    lbl_SendDate: TcxLabel;
    lbl_SendName: TcxLabel;
    DE_SendDate: TcxDateEdit;
    Edt_SendName: TcxTextEdit;
    cxTabControl4: TcxTabControl;
    cxTabControl5: TcxTabControl;
    CB_BuZhiLiao: TcxCheckListBox;
    Qry_avi: TADOQuery;
    lbl_BackDate: TcxLabel;
    DE_BackDate: TcxDateEdit;
    lbl_BookingDateTime: TcxLabel;
    DE_BookingDateTime: TcxDateEdit;
    qry_avg_user_info: TADOQuery;
    qry_avs: TADOQuery;
    qry_ahd: TADOQuery;
    qry_avg: TADOQuery;
    cxGrid1DBTableView1_ava_index: TcxGridDBColumn;
    cxGrid1DBTableView1_ava_state: TcxGridDBColumn;
    rb_sign: TcxRadioButton;
    rb_refund: TcxRadioButton;
    Memo1: TMemo;
    btn_select_all: TcxButton;
    btn_select_none: TcxButton;
    btn_selet_not: TcxButton;
    lbl_select: TcxLabel;
    cb_select: TcxComboBox;
    cxLabel3: TcxLabel;
    edt_name: TcxTextEdit;
    btn_search: TcxButton;
    cxTabControl7: TcxTabControl;
    cxLabel4: TcxLabel;
    memo_remark: TcxMemo;
    procedure btn_CloseClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure DE_SendDatePropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure rb_signClick(Sender: TObject);
    procedure btn_select_allClick(Sender: TObject);
    procedure btn_select_noneClick(Sender: TObject);
    procedure btn_selet_notClick(Sender: TObject);
    procedure cb_selectPropertiesChange(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
  private
    { Private declarations }
    FType:string;
    FAvgID:Integer;
    Fact_id,Favs_id:Integer;

    procedure SetOpen;          //拆件
    procedure SetSend;          //送签
    procedure SetBeforeSend;    //待送
    procedure SetBuZhiLiao;     //补资料
    procedure SetBooking;       //预约
    procedure SetRefund;        //退改
    procedure SplitOrders;      //拆分订单
    procedure setRefuse;        //拒签
    procedure SetLingGuanBuLiao;//领馆补料
    procedure SetSomeMarkOp;    //一些只用于标记的操作 例如 翻译 复印 整理  取回 销签 领馆审核

    function GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;       //获取入单用户ID 和受理编号
    function getBackDate(AsendDate:TDateTime;Act_id,Avs_id:Integer;var AbackDate:TDateTime):Boolean; //获取出签日期
  public
    { Public declarations }
    procedure OpenTable(vAvgID:integer);
  end;

var
  VisaAppSelectGuestListFrm: TVisaAppSelectGuestListFrm;
  procedure ExecVisaAppSelectGuestListFrm(vType:string;vAvgID:Integer);

implementation

{$R *.dfm}

uses uCommonDM, uCommonUnit,ufrmSplitOrders,ufrmBuZiLiao;
procedure ExecVisaAppSelectGuestListFrm(vType:string;vAvgID:Integer);
begin
  if VisaAppSelectGuestListFrm=nil then Application.CreateForm(TVisaAppSelectGuestListFrm,VisaAppSelectGuestListFrm);
  with VisaAppSelectGuestListFrm do
  begin
    FType:=vType;
    FAvgID:=vAvgID;
    cxLabel1.Caption:=vType;
    cxLabel2.Caption:='请选择需做"'+vType+'"的客人!';

    if FType='送签' then
    begin
      SetSend;
    end
    else if FType='补资料' then
    begin
      SetBuZhiLiao;
    end
    else if FType='预约' then
    begin
      SetBooking;
    end
    else if FType='退改' then
    begin
      SetRefund;
    end
    else if FType='待送' then
    begin
      SetBeforeSend;
    end
    else if FType='拆分订单' then
    begin
      SplitOrders;
    end
    else if FType='拆件' then
    begin
      SetOpen;
    end
    else if FType='拒签' then
    begin
      setRefuse;
    end
    else if FType='领馆补料' then
    begin
      SetLingGuanBuLiao;
    end
    else if FType='翻译' then
    begin
      SetSomeMarkOp;
    end
    else if FType='复印' then
    begin
      SetSomeMarkOp;
    end
    else if FType='整理' then
    begin
      SetSomeMarkOp;
    end
    else if FType='取回' then
    begin
      SetSomeMarkOp;
    end
    else if FType='销签' then
    begin
      SetSomeMarkOp;
    end
    else if FType='领馆审核' then
    begin
      SetSomeMarkOp;
    end;

    OpenTable(vAvgID);
    ShowModal;
  end;
  VisaAppSelectGuestListFrm.Free;
  VisaAppSelectGuestListFrm:=nil;
end;

{ TVisaAppSelectGuestListFrm }

procedure TVisaAppSelectGuestListFrm.btn_CloseClick(Sender: TObject);
begin
  Close;
end;

procedure TVisaAppSelectGuestListFrm.Btn_SaveClick(Sender: TObject);
var
  Row:Integer;
  c:Integer;
  AvaID:string;
  SqlStr:string;
  GuestName:string;
  GuestNameList:string;
  TempStr:string;
  vremark:string;

  vavgh_number:string;
  vGaiZiLiao_sql:string;
  vdatetime:string;
  vavi_name:string;
  vavi_id:string;
  i:Integer;

  vuserid:Integer;
  vinvoiceno:string;

  tavaID,taviId:string;
begin
  if FType='送签' then
  begin
    if Replace_keyword(Edt_SendName.Text)='' then
    begin
      MessageOfInformation('请输入送签人员。',False);
      Exit;
    end;
    if DE_SendDate.EditValue=null then
    begin
      MessageOfInformation('请选择送签日期。',False);
      Exit;
    end;
    if DE_BackDate.EditValue=null then
    begin
      MessageOfInformation('请选择出签日期。',False);
      Exit;
    end;
    if DE_SendDate.Date>DE_BackDate.Date then
    begin
      MessageOfInformation('出签日期不能小于送签日期。',False);
      Exit;
    end;
  end;
  if FType='预约' then
  begin
    if DE_BookingDateTime.Date<(GetDatetime-400) then
    begin
      MessageOfInformation('请选择预约日期。',False);
      Exit;
    end;
  end;
  if (FType='补资料')or(FType='预约')or(FType='领馆补料') then
  begin
    vuserid:=GetUserId(FAvgID,vinvoiceno);
  end;

  with cxGrid1DBTableView1.DataController do
  begin
    if GetSelectedCount=0 then
    begin
      ShowMessage('请选择需处理的客人名单!');
      Exit;
    end;

    //拆分订单 处理 不保存数据，转到入单界面
    if FType='拆分订单' then
    begin
      if GetSelectedCount=RecordCount then
      begin
        MessageOfInformation('拆分订单操作不能选所有客人!',False);
        Exit;
      end;
      AvaID:='';
      for c := 0 to GetSelectedCount-1 do
      begin
        Row:=GetSelectedRowIndex(c);
        if GetValue(Row,cxGrid1DBTableView1ava_id.Index)<>null then
        begin
          if AvaID<>'' then
            AvaID:=AvaID+','+inttostr(GetValue(Row,cxGrid1DBTableView1ava_id.Index))
          else
            AvaID:=inttostr(GetValue(Row,cxGrid1DBTableView1ava_id.Index));
        end;
      end;
      if AvaID<>'' then
      begin //打开入单界面
        ExecfrmSplitOrders(AvaID,FAvgID);
      end;
      Self.Close;
      Exit;
    end;

    vavgh_number:=CommonDM.GetMaxID('avgh_number');
    vdatetime:=FormatDateTime('yyyy-mm-dd hh:nn:ss',GetDatetime);
    vGaiZiLiao_sql:='';  //需要循环插入avb_visa_buziliao表
    SqlStr:='';
    GuestName:='';
    TempStr:='';
    GuestNameList:='';
    vremark:='';
    tavaID:='';
    taviId:='';
    for c := 0 to GetSelectedCount-1 do
    begin
      Row:=GetSelectedRowIndex(c);
      AvaID:=GetValue(Row,cxGrid1DBTableView1ava_id.Index);
      GuestName:=GetValue(row,cxGrid1DBTableView1ava_name_c.Index);
      GuestNameList:=GuestNameList+TempStr+GuestName;
      TempStr:=',';
      if FType<>'退改' then
      begin
        SqlStr:=SqlStr+' update ava_visa_application set ava_StatusType='+QuotedStr(FType)+' where ava_id='+AvaID+#13#10;
      end
      else
      begin
        if rb_sign.Checked then
          SqlStr:=SqlStr+' update ava_visa_application set ava_State=''退团'' where ava_id='+AvaID+#13#10
        else
          SqlStr:=SqlStr+' update ava_visa_application set ava_State=''报名'' where ava_id='+AvaID+#13#10;
      end;
      if FType='补资料' then
      begin
        for I := 0 to CB_BuZhiLiao.Items.Count-1 do
        begin
          if CB_BuZhiLiao.Items[i].Checked then
          begin
            vavi_id:=IntToStr(CB_BuZhiLiao.Items[i].Tag);
            vavi_name:=QuotedStr(Replace_keyword(CB_BuZhiLiao.Items[i].Text));

            if vGaiZiLiao_sql='' then//需要循环插入avb_visa_buziliao表
            begin
              vGaiZiLiao_sql:=' insert into avb_visa_buziliao (avb_user_ins,avb_date_ins,avb_status,avb_number_avgh,avb_id_ava,avb_name_ava,avb_id_avi,avb_name_avi)'
                             +' select '+QuotedStr(Replace_keyword(GUserName))+','+QuotedStr(vdatetime)+',''I'','+vavgh_number+','+AvaID+','+QuotedStr(Replace_keyword(GuestName))+','+vavi_id+','+vavi_name;
            end
            else
            begin
              vGaiZiLiao_sql:=vGaiZiLiao_sql
                             +' union all select '+QuotedStr(Replace_keyword(GUserName))+','+QuotedStr(vdatetime)+',''I'','+vavgh_number+','+AvaID+','+QuotedStr(Replace_keyword(GuestName))+','+vavi_id+','+vavi_name;
            end;
            if c=0 then  //构建历史记录备注 补资料的备注只在第一个客人的时候循环一次补资料的项目
            begin
              if vremark='' then
              begin
                vremark:=vavi_name;
              end
              else
              begin
                vremark:=vremark+','+vavi_name;
              end;
              if taviId='' then
              begin
                taviId:=vavi_id;
              end
              else
              begin
                taviId:=taviId+','+vavi_id;
              end;
            end;
          end;
        end;
        if tavaID='' then
        begin
          tavaID:=AvaID;
        end
        else
        begin
          tavaID:=tavaID+','+AvaID;
        end;
      end;
    end;
    if FType='送签' then
    begin
      vremark:='送签人员：'+Replace_keyword(Edt_SendName.Text)+';送签日期'+FormatDateTime('yyyy-mm-dd',DE_SendDate.Date)+'出签日期'+FormatDateTime('yyyy-mm-dd',DE_BackDate.Date);
    end;
    if FType='预约' then
    begin
      vremark:='预约日期 '+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date);
    end;
    if FType='领馆补料' then
    begin
      vremark:=Replace_keyword(Trim(memo_remark.Text));
    end;
    if FType<>'退改' then
    begin
      if FType='预约' then
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_meet,avgh_id_aus_op)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','''+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date)+''','+inttostr(GUserID)+')'+#13#10;
      end
      else if FType='送签' then
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_date_send,avgh_date_rtn,avgh_id_aus_op,avgh_user_send)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','''+FormatDateTime('yyyy-mm-dd',DE_SendDate.Date)+''','''+FormatDateTime('yyyy-mm-dd',DE_BackDate.Date)+''','+inttostr(GUserID)+','+QuotedStr(Replace_keyword(Edt_SendName.Text))+')'+#13#10;
      end
      else
      begin
        SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                       'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op)'+#13#10+
                  'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                  ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(Replace_keyword(vremark))+','+vavgh_number+','+inttostr(GetSelectedCount)+
                  ','+inttostr(GUserID)+')'+#13#10;
      end;
    end
    else
    begin
      if rb_sign.Checked then
        vremark:='执行退团操作'
      else
        vremark:='恢复报名状态';

      SqlStr:=SqlStr+' insert into avgh_visa_group_history (avgh_status,avgh_Date_Ins,avgh_User_Ins,avgh_id_avg,avgh_Date_op,avgh_User_op,avgh_GuestName,'+
                     'avgh_type,avgh_remark,avgh_number,avgh_num,avgh_id_aus_op)'+#13#10+
                'values (''I'',getdate(),'+QuotedStr(Replace_keyword(GUserName))+','+IntToStr(FAvgID)+',getdate(),'+QuotedStr(Replace_keyword(GUserName))+
                ','+QuotedStr(Replace_keyword(GuestNameList))+','+QuotedStr(FType)+','+QuotedStr(vremark)+','+vavgh_number+','+inttostr(GetSelectedCount)+
                ','+inttostr(GUserID)+')'+#13#10;
    end;

    if FType='送签' then
    begin
      SqlStr:=SqlStr+' update avg_visa_group set avg_date_send='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_SendDate.Date))+
        ',avg_date_rtn='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BackDate.Date))+',avg_user_send='+QuotedStr(Replace_keyword(Edt_SendName.Text))+' where avg_id='+IntToStr(FAvgID)+#13#10;
    end
    else if FType='预约' then
    begin
      SqlStr:=SqlStr+' update avg_visa_group set avg_date_Meet='+QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date))+
                     ' where avg_id='+IntToStr(FAvgID)+#13#10;
      //通知记录
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',1,'+inttostr(FAvgID)+','''+StringReplace('订单：'+vinvoiceno+ ';预约：'+GuestNameList+'；时间：'+FormatDateTime('yyyy-mm-dd hh:nn:ss',DE_BookingDateTime.Date),'''','',[rfReplaceAll])+'''  ';
    end
    else if FType='补资料' then
    begin
      SqlStr:=SqlStr+#13#10+vGaiZiLiao_sql +#13#10;
      //通知记录
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',2,'+inttostr(FAvgID)+','''+StringReplace('订单：'+vinvoiceno+ ';名单：'+GuestNameList+';补资料：'+vremark,'''','',[rfReplaceAll])+'''  ';
    end
    else if FType='领馆补料' then
    begin
      //通知记录
      SqlStr:=SqlStr+' exec usp_set_notice '+inttostr(GUserID)+','+inttostr(vuserid)+',5,'+inttostr(FAvgID)+','''+StringReplace('订单：'+vinvoiceno+ ';名单：'+GuestNameList+';领馆补料：'+vremark,'''','',[rfReplaceAll])+'''  ';
    end;

//    if FType<>'退改' then
//    begin
//      SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupState '+IntToStr(FAvgID)+#13#10; //更新状态
//    end
//    else
//    begin
//      SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupNum '+IntToStr(FAvgID)+#13#10;   //更新人数
//    end;
    SqlStr:=SqlStr+' exec PAV_UpdateVisaGroupState '+IntToStr(FAvgID)+#13#10; //更新状态+更新人数

    if FType<>'补资料' then   //非补资料的直接执行
    begin
      TempStr:='是否确认处理共'+inttostr(GetSelectedCount)+'个客人的操作?';
      if Application.MessageBox(pwidechar(TempStr),'签证管理',MB_YESNO)=idno then Exit;
      with CommonDM.ADOCommand do
      begin
        CommandText:=SqlStr;
        //Memo1.Text:= SqlStr;
        try
          Execute;
        except
          ShowMessage('保存失败,请重试!');
          Exit;
        end;
      end;
      ShowMessage('处理成功!');
      Close;
    end
    else   //补资料的弹窗录备注
    begin
      if taviId='' then
      begin
        MessageOfInformation('请选择补资料项目。',False);
        Exit;
      end;
      if ExecfrmBuZiLiaoNew(FAvgID,tavaID,taviId) then
        ShowMessage('处理成功!');
      Close;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.btn_searchClick(Sender: TObject);
var
  vname:string;
  vid,vno:Integer;
begin
  //根据姓名搜索（定位）客人信息
  with qry_ava do
  begin
    if not Active then Exit;
    if IsEmpty then Exit;
    vname:=Trim(edt_name.Text);
    if vname='' then
    begin
      MessageOfInformation('请输入搜索条件.',False);
      Exit;
    end;

    vid:=FieldByName('ava_id').AsInteger;
    try
      cxGrid1DBTableView1.BeginUpdate;
      vno:=RecNo;
      //ShowMessage(IntToStr(vno));
      if vno>1 then  //不是从第一条开始的
      begin
        Next;
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
        First;
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
      end
      else    //从第一条开始
      begin
        while not Eof do
        begin
          if Pos(vname,FieldByName('ava_name_c').AsString)>0 then
            Exit;
          Next;
        end;
      end;
      Locate('ava_id',vid,[]);
      if Pos(vname,FieldByName('ava_name_c').AsString)=0 then
        MessageOfInformation('没有找到匹配的记录。',False);
    finally
      cxGrid1DBTableView1.EndUpdate;
    end;
  end;

end;

procedure TVisaAppSelectGuestListFrm.btn_select_allClick(Sender: TObject);
begin
  //全选
  if cxGrid1DBTableView1.OptionsSelection.MultiSelect then
    cxGrid1DBTableView1.Controller.SelectAll;
end;

procedure TVisaAppSelectGuestListFrm.btn_select_noneClick(Sender: TObject);
var
  i:Integer;
begin
  //全不选
  for i := 0 to cxGrid1DBTableView1.DataController.RecordCount-1 do
    if cxGrid1DBTableView1.ViewData.Records[i].Selected then
      cxGrid1DBTableView1.ViewData.Records[i].Selected:=False;
end;

procedure TVisaAppSelectGuestListFrm.btn_selet_notClick(Sender: TObject);
var
  i:Integer;
begin
  //反选
  if cxGrid1DBTableView1.OptionsSelection.MultiSelect then
  begin
    for i := 0 to cxGrid1DBTableView1.DataController.RecordCount-1 do
    begin
      if cxGrid1DBTableView1.ViewData.Records[i].Selected then
      begin
        cxGrid1DBTableView1.ViewData.Records[i].Selected:=False;
      end
      else
      begin
        cxGrid1DBTableView1.ViewData.Records[i].Selected:=True;
      end;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.cb_selectPropertiesChange(Sender: TObject);
begin
  //筛选条件，送签操作专用
  if FType='送签' then
  begin
    with qry_ava do
    begin
      if not Active then Exit;
      //if IsEmpty then Exit;
      Filtered:=cb_select.ItemIndex=1;
      //Filter:='ava_StatusType<>''送签''';
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.cxGrid1DBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetIndicatorCellOfIndex(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TVisaAppSelectGuestListFrm.DE_SendDatePropertiesEditValueChanged(
  Sender: TObject);
var
  vdate:TDateTime;
begin    //当送签日期更改的时候
  if FType='送签' then
  begin
    if getBackDate(DE_SendDate.EditValue,Fact_id,Favs_id,vdate) then
    begin
      DE_BackDate.Date:=vdate;
    end
    else
    begin
      DE_BackDate.EditValue:=null;
    end;
  end;
end;

procedure TVisaAppSelectGuestListFrm.OpenTable(vAvgID: integer);
begin
  with qry_ava do
  begin
    Close;
    Parameters.ParamByName('ava_id_avg').Value:=vAvgID;
    Open;
  end;
end;

procedure TVisaAppSelectGuestListFrm.rb_signClick(Sender: TObject);
var
  vsql:string;
begin
  if rb_sign.Checked then
  begin
    vsql:='select ava_id, ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,'
         +' ava_Date_Sign,ava_Date_End,ava_StatusType,ava_Remark,ava_state,ava_index '
         +' from ava_visa_application'
         +' where ava_id_avg=:ava_id_avg'
         +' and ava_status<>''D'' '
         +' and ava_state<>''退团'' '
         +' order by ava_index      ';
    Btn_Save.Caption:='退团操作';
  end
  else
  begin
    vsql:='select ava_id, ava_name_c,ava_name_e,ava_name_p,ava_PassPortNo,ava_sex,ava_date_birth,'
         +' ava_Date_Sign,ava_Date_End,ava_StatusType,ava_Remark,ava_state,ava_index '
         +' from ava_visa_application'
         +' where ava_id_avg=:ava_id_avg'
         +' and ava_status<>''D'' '
         +' and ava_state=''退团'' '
         +' order by ava_index      ';
    Btn_Save.Caption:='恢复报名';
  end;

  with qry_ava do
  begin
    if Active then Close;
    SQL.Text:=vsql;
    Parameters.ParamByName('ava_id_avg').Value:=FAvgID;
    Open;
  end;


end;

procedure TVisaAppSelectGuestListFrm.SetBuZhiLiao;
var
  c:TcxCheckListBoxItem;
begin
  cxTabControl5.Visible:=True;
  with qry_avi do
  begin
    Close;
    Open;
    First;
    while not eof  do
    begin
      c:=CB_BuZhiLiao.Items.Add;
      c.Text:=FieldValues['avi_name'];
      c.Tag:=FieldValues['avi_id'];
      c.Checked:=False;
      Next;
    end;
  end;
  Btn_Save.Caption:='下一步';
end;

procedure TVisaAppSelectGuestListFrm.SetLingGuanBuLiao;//领馆补料
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
  cxTabControl7.Visible:=True; //备注框 默认不显示
end;

//一些只用于标记的操作 例如 翻译 复印 整理  取回 销签 领馆审核
procedure TVisaAppSelectGuestListFrm.SetSomeMarkOp;
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.setRefuse;        //拒签
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.SetOpen;          //拆件
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;

procedure TVisaAppSelectGuestListFrm.SetSend;
var
  vdate:TDateTime;
begin
  cxTabControl3.Visible:=True;
  with qry_avg do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_id_act,avg_id_avs,avg_date_send,avg_date_rtn from avg_visa_group with(nolock) where avg_id='+inttostr(FAvgID);
    Open;
    if IsEmpty then
    begin
      Fact_id:=0;
      Favs_id:=0;
      DE_SendDate.EditValue:=null;
      DE_BackDate.EditValue:=null;
    end
    else
    begin
      Fact_id:=FieldByName('avg_id_act').AsInteger;
      Favs_id:=FieldByName('avg_id_avs').AsInteger;
      if FieldByName('avg_date_send').IsNull then
      begin
        DE_SendDate.EditValue:=null;
        DE_BackDate.EditValue:=null;
      end
      else
      begin
        DE_SendDate.Date:=FieldByName('avg_date_send').AsDateTime;
        //计算出签日期
        if getBackDate(DE_SendDate.Date,Fact_id,Favs_id,vdate) then //获取出签日期
          DE_BackDate.Date:=vdate;
      end;
//      if FieldByName('avg_date_rtn').IsNull then
//      begin
//        DE_BackDate.EditValue:=null;
//      end
//      else
//      begin
//        DE_BackDate.Date:=FieldByName('avg_date_rtn').AsDateTime;
//      end;
    end;
  end;

//  DE_SendDate.Date:=Now;
//  if getBackDate(DE_SendDate.Date,Fact_id,Favs_id,vdate) then
//  begin
//    DE_BackDate.Date:=vdate;
//  end
//  else
//  begin
//    DE_BackDate.EditValue:=null;
//  end;

  Edt_SendName.Text:=GUserName;

  lbl_BookingDateTime.Visible:=False;
  DE_BookingDateTime.Visible:=False;

  qry_ava.Filtered:=cb_select.ItemIndex=1;
  qry_ava.Filter:='ava_StatusType<>''送签''';
  lbl_select.Visible:=True;
  cb_select.Visible:=True;
end;

procedure TVisaAppSelectGuestListFrm.SetBeforeSend;    //待送签
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;
end;


procedure TVisaAppSelectGuestListFrm.SetBooking;
begin
  cxTabControl3.Tabs.Text:='预约';
  cxTabControl3.Visible:=True;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  lbl_BookingDateTime.Left:=32;
  DE_BookingDateTime.Left:=135;

end;

procedure TVisaAppSelectGuestListFrm.SetRefund;
begin
  cxGrid1DBTableView1_ava_state.Visible:=True;

  cxTabControl3.Tabs.Text:='退改';
  cxTabControl3.Visible:=True;

  rb_sign.Visible:=True;
  rb_refund.Visible:=True;

  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  lbl_BookingDateTime.Visible:=False;
  DE_BookingDateTime.Visible:=False;

  Btn_Save.Caption:='退团操作';
end;

procedure TVisaAppSelectGuestListFrm.SplitOrders;       //拆分订单
begin
  cxTabControl3.Visible:=False;
  lbl_SendDate.Visible:=False;
  DE_SendDate.Visible:=False;
  lbl_BackDate.Visible:=False;
  DE_BackDate.Visible:=False;
  lbl_SendName.Visible:=False;
  Edt_SendName.Visible:=False;

  Btn_Save.Caption:='录入新订单';
end;

function TVisaAppSelectGuestListFrm.GetUserId(Avg_id:Integer;var Ainvoiceno:string):Integer;
begin
  Result:=0;
  Ainvoiceno:='';
  with qry_avg_user_info do
  begin
    if Active then Close;
    SQL.Text:='select avg_id,avg_invoiceno,avg_user_enter,aus_id'
             +' from avg_visa_group with(nolock),aus_users with(nolock)'
             +' where avg_id='+inttostr(Avg_id)
             +' and aus_status<>''D'' '
             +' and aus_username=avg_user_enter';
    Open;
    if not IsEmpty then
    begin
      Ainvoiceno:=fieldbyname('avg_invoiceno').asstring;
      Result:=fieldbyname('aus_id').AsInteger;
    end;
  end;
end;

function TVisaAppSelectGuestListFrm.getBackDate(AsendDate:TDateTime;Act_id,Avs_id:Integer;var AbackDate:TDateTime):Boolean;
var
  vday:Integer;
  vname:string;
begin   //获取出签日期
  Result:=False;
  with qry_avs do
  begin
    if Active then Close;
    SQL.Text:='select * '
             +' from avs_visa_speed with(nolock),act_country with(nolock)'
             +' where avs_id_act=act_id '
             +' and avs_id='+inttostr(Avs_id)
             +' and avs_id_act='+inttostr(Act_id);
    Open;
    if IsEmpty then
    begin
      vday:=0;
      vname:='';
    end
    else
    begin
      vday:=FieldByName('avs_day').AsInteger;
      vname:='('+FieldByName('act_name').AsString+'--'+FieldByName('avs_name').AsString+'--'+inttostr(vday)+'天)';
    end;
    Self.Caption:='签证操作'+vname;
  end;
  if vday>0 then
  begin
    with qry_ahd do
    begin
      if Active then Close;
      SQL.Text:='select top '+inttostr(vday)+' * '
               +' from ahd_hoilday with(nolock)'
               +' where ahd_status<>''D'' '
               +' and ahd_date>='''+FormatDateTime('yyyy-mm-dd',AsendDate)+'''   ' //大于等于即计算出签当日
               +' and ahd_IsHoilday=0 '
               +' and ahd_id_act='+inttostr(Act_id)
               +' order by ahd_date ';
      Open;
      if not IsEmpty then
      begin
        Last;
        AbackDate:=FieldByName('ahd_date').AsDateTime;
        Result:=True;
      end;
    end;
  end;

end;


end.
