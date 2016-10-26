unit ufrmExcelInput;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uVisaSignFrm,ufrmAddGuest, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, Data.DB, Data.Win.ADODB;

type
  TfrmExcelInput = class(TForm)
    open_excel: TOpenDialog;
    ADOConnection_excel: TADOConnection;
    qry_sheet: TADOQuery;
    cxLabel1: TcxLabel;
    edt_excel_file: TcxTextEdit;
    btn_open: TcxButton;
    btn_input: TcxButton;
    btn_close: TcxButton;
    lbl_info: TcxLabel;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_openClick(Sender: TObject);
    procedure btn_inputClick(Sender: TObject);
  private
    FVisaSignFrm:TVisaSignFrm;
    FfrmAddGuest: TfrmAddGuest;

    Ftype:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExcelInput: TfrmExcelInput;
  procedure ExecfrmExcelInput(AVisaSignFrm:TVisaSignFrm);
  procedure ExecfrmExcelInput2(AfrmAddGuest: TfrmAddGuest);
implementation

{$R *.dfm}
uses uCommonDM, uCommonUnit;

procedure ExecfrmExcelInput(AVisaSignFrm:TVisaSignFrm);
begin
  if frmExcelInput=nil then
    frmExcelInput:=TfrmExcelInput.Create(Application);
  try
    with frmExcelInput do
    begin
      Ftype:=1;
      FVisaSignFrm:= AVisaSignFrm;
      ShowModal;
    end;
  finally
    frmExcelInput.qry_sheet.Close;
    frmExcelInput.ADOConnection_excel.Close;
    FreeAndNil(frmExcelInput);
  end;
end;

procedure ExecfrmExcelInput2(AfrmAddGuest:TfrmAddGuest);
begin
  if frmExcelInput=nil then
    frmExcelInput:=TfrmExcelInput.Create(Application);
  try
    with frmExcelInput do
    begin
      Ftype:=2;
      FfrmAddGuest:= AfrmAddGuest;
      ShowModal;
    end;
  finally
    frmExcelInput.qry_sheet.Close;
    frmExcelInput.ADOConnection_excel.Close;
    FreeAndNil(frmExcelInput);
  end;
end;


procedure TfrmExcelInput.btn_closeClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmExcelInput.btn_inputClick(Sender: TObject);
var
  vtemp_int,vno:Integer;
  vtemp_str:string;
  vdatetime:Tdatetime;
begin
  if MessageOfQuestion('准备导入数据，本过程完成后请注意复查客人各项资料的准确性。您确定要继续进行吗?')<>idok then Exit;
  //导入...
  if Ftype=1 then    //订单录入
  begin
    with FVisaSignFrm do
    begin
      if not DS_ava.AutoEdit then
      begin
        MessageOfInformation('订单不在录入状态。',False);
        Exit;
      end;
      with qry_ava do
      begin
        if not IsEmpty then
        begin
          if MessageOfQuestion('本操作将覆盖原来的客人信息，您确定要继续吗？')<>idok then exit;
          //删除原来的数据
          First;
          while not Eof do
          begin
            Delete;
          end;
        end;
        //循环excel逐个插入
        if not qry_sheet.IsEmpty then
        begin
          qry_sheet.First;
          vno:=0;
          while not qry_sheet.Eof do
          begin
            vtemp_str:=qry_sheet.FieldByName('F1').AsString;
            if TryStrToInt(vtemp_str,vtemp_int) then
            begin
              if vtemp_int=(vno+1) then
              begin
                if qry_sheet.FieldByName('F2').AsString<>'' then
                begin
                  vno:=vno+1;
                  Append;
                  FieldByName('ava_name_c').AsString:=qry_sheet.FieldByName('F2').AsString;
                  FieldByName('ava_name_e').AsString:=qry_sheet.FieldByName('F3').AsString;
                  FieldByName('ava_idcard').AsString:=qry_sheet.FieldByName('F4').AsString;
                  FieldByName('ava_PassPortNo').AsString:=qry_sheet.FieldByName('F5').AsString;
                  FieldByName('ava_sex').AsVariant:=null;
                  if qry_sheet.FieldByName('F6').AsString='男' then
                    FieldByName('ava_sex').AsInteger:=1;
                  if qry_sheet.FieldByName('F6').AsString='女' then
                    FieldByName('ava_sex').AsInteger:=2;
                  vtemp_str:=qry_sheet.FieldByName('F7').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_date_birth').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_date_birth').AsVariant:=null;
                  end;
                  vtemp_str:=qry_sheet.FieldByName('F8').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_Date_Sign').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_Date_Sign').AsVariant:=null;
                  end;
                  vtemp_str:=qry_sheet.FieldByName('F9').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_Date_End').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_Date_End').AsVariant:=null;
                  end;

                  FieldByName('ava_home_addr').AsString:=qry_sheet.FieldByName('F10').AsString;
                  FieldByName('ava_mobile').AsString:=qry_sheet.FieldByName('F11').AsString;
                  vtemp_str:=qry_sheet.FieldByName('F12').AsString;
                  if TryStrToInt(vtemp_str,vtemp_int) then
                  begin
                    FieldByName('ava_age').AsInteger:=vtemp_int;
                  end
                  else
                  begin
                    FieldByName('ava_age').AsVariant:=null;
                  end;

                  FieldByName('ava_remark').AsString:=qry_sheet.FieldByName('F13').AsString;
                  FieldByName('ava_remark1').AsString:=qry_sheet.FieldByName('F14').AsString;
                  FieldByName('ava_remark2').AsString:=qry_sheet.FieldByName('F15').AsString;
                  Post;
                end;
              end;
            end;
            qry_sheet.Next;
          end;
          if vno>0 then
          begin
            btn_open.Enabled:=False;
            btn_input.Enabled:=False;
            lbl_info.Caption:='成功导入'+inttostr(vno)+'条客人信息。';
            frmExcelInput.btn_close.Caption:='完成';
          end
          else
          begin
            lbl_info.Caption:='导入'+inttostr(vno)+'条客人信息。';
          end;
        end;
      end;
    end;
  end;

  if Ftype=2 then   //追加客人
  begin
    with FfrmAddGuest do
    begin
      if not DS_ava.AutoEdit then
      begin
        MessageOfInformation('订单不在录入状态。',False);
        Exit;
      end;
      with qry_ava do
      begin
        if not IsEmpty then
        begin
          if MessageOfQuestion('本操作将覆盖原来的客人信息，您确定要继续吗？')<>idok then exit;
          //删除原来的数据
          First;
          while not Eof do
          begin
            Delete;
          end;
        end;
        //循环excel逐个插入
        if not qry_sheet.IsEmpty then
        begin
          qry_sheet.First;
          vno:=0;
          while not qry_sheet.Eof do
          begin
            vtemp_str:=qry_sheet.FieldByName('F1').AsString;
            if TryStrToInt(vtemp_str,vtemp_int) then
            begin
              if vtemp_int=(vno+1) then
              begin
                if qry_sheet.FieldByName('F2').AsString<>'' then
                begin
                  vno:=vno+1;
                  Append;
                  FieldByName('ava_name_c').AsString:=qry_sheet.FieldByName('F2').AsString;
                  FieldByName('ava_name_e').AsString:=qry_sheet.FieldByName('F3').AsString;
                  FieldByName('ava_idcard').AsString:=qry_sheet.FieldByName('F4').AsString;
                  FieldByName('ava_PassPortNo').AsString:=qry_sheet.FieldByName('F5').AsString;
                  FieldByName('ava_sex').AsVariant:=null;
                  if qry_sheet.FieldByName('F6').AsString='男' then
                    FieldByName('ava_sex').AsInteger:=1;
                  if qry_sheet.FieldByName('F6').AsString='女' then
                    FieldByName('ava_sex').AsInteger:=2;
                  vtemp_str:=qry_sheet.FieldByName('F7').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_date_birth').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_date_birth').AsVariant:=null;
                  end;
                  vtemp_str:=qry_sheet.FieldByName('F8').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_Date_Sign').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_Date_Sign').AsVariant:=null;
                  end;
                  vtemp_str:=qry_sheet.FieldByName('F9').AsString;
                  if TryStrToDate(vtemp_str,vdatetime) then
                  begin
                    FieldByName('ava_Date_End').AsDateTime:=vdatetime;
                  end
                  else
                  begin
                    FieldByName('ava_Date_End').AsVariant:=null;
                  end;

                  FieldByName('ava_home_addr').AsString:=qry_sheet.FieldByName('F10').AsString;
                  FieldByName('ava_mobile').AsString:=qry_sheet.FieldByName('F11').AsString;
                  vtemp_str:=qry_sheet.FieldByName('F12').AsString;
                  if TryStrToInt(vtemp_str,vtemp_int) then
                  begin
                    FieldByName('ava_age').AsInteger:=vtemp_int;
                  end
                  else
                  begin
                    FieldByName('ava_age').AsVariant:=null;
                  end;

                  FieldByName('ava_remark').AsString:=qry_sheet.FieldByName('F13').AsString;
                  FieldByName('ava_remark1').AsString:=qry_sheet.FieldByName('F14').AsString;
                  FieldByName('ava_remark2').AsString:=qry_sheet.FieldByName('F15').AsString;
                  Post;
                end;
              end;
            end;
            qry_sheet.Next;
          end;
          if vno>0 then
          begin
            btn_open.Enabled:=False;
            btn_input.Enabled:=False;
            lbl_info.Caption:='成功导入'+inttostr(vno)+'条客人信息。';
            frmExcelInput.btn_close.Caption:='完成';
          end
          else
          begin
            lbl_info.Caption:='导入'+inttostr(vno)+'条客人信息。';
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmExcelInput.btn_openClick(Sender: TObject);
var
  i:Integer;
  vtemp_str:string;
  vtemp_int:Integer;
begin
  //打开Excel 文件
  if Open_excel.Execute then
  begin
    btn_input.Enabled:=False;
    edt_excel_file.Text:= Open_excel.FileName;
    try
    qry_sheet.Close;
    with ADOConnection_excel do
    begin
      Close;
//      ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+
//                        Open_excel.FileName +
//                        ';Extended Properties=Excel 8.0;Persist Security Info=False';
      ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+Open_excel.FileName+';'+
      'Mode=Share Deny None;Extended Properties=Excel 8.0;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";'+
      'Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=35;Jet OLEDB:Database Locking Mode=0;'+
      'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
      'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
      'Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;'+
      'Jet OLEDB:SFP=False;HDR=NO';
      Open;
    end;
    with qry_sheet do
    begin
      SQL.Text:='select * from [客人信息$] ';

      Open;
      lbl_info.Caption:='';
    end;
    except
      MessageOfWarning('打开Excel文件出错!可能是不符合规格的导入文件.',false);
      qry_sheet.Close;
      ADOConnection_excel.Close;
    end;
  end
  else
  begin
    btn_input.Enabled:=False;
    lbl_info.Caption:='';
    Exit;
  end;

  with qry_sheet do
  begin
    if IsEmpty then
    begin
      btn_input.Enabled:=False;
      lbl_info.Caption:='无数据';
    end
    else
    begin
      First;
      i:=0;
      while not Eof do
      begin
        vtemp_str:=FieldByName('F1').AsString;
        if TryStrToInt(vtemp_str,vtemp_int) then
        begin
          if vtemp_int=(i+1) then
          begin
            if FieldByName('F2').AsString<>'' then
            begin
              i:=i+1;
            end;
          end;
        end;
        Next;
      end;
      if i>0 then
      begin
        btn_input.Enabled:=True;
        lbl_info.Caption:='名单已经加载';
      end
      else
      begin
        btn_input.Enabled:=False;
        lbl_info.Caption:='没有名单数据';
      end;
    end;
  end;
end;

end.
