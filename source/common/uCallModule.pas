unit uCallModule;

interface
uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  StdCtrls;

procedure ExecModule(ModuleId: Integer);

implementation

uses uCommonUnit,
//,uChangePassfrm, uCompanyfrm,
//  uVisaReturnfrm, uVisaAppfrm, uDataCountFrm, uGroupFluxFrm, uGatherFrm,
//  uBorrowFrm
 uUserPowerfrm, uCountryHoildayFrm, uCountryfrm,uVisaTypeFrm,uSourceInfoFrm,
 uVisaInfoFrm ,uPaymentFrm,ufrmChangePassword

 ,uVisaSignQueryFrm,uVisaAppFrm
  , uVisaSignInsertFrm,
  ufrmNotice,ufrmOrderQuery,uFrmArea,uFrmSourceType,
  ufrmOrderQueryArea,ufrmOrderQueryCountry,ufrmSendQuery,ufrmOrderHistoryQuery,
  ufrmOrderQuery_ava,ufrmOrderQuery_avgh,ufrmOrderQuery_anh,ufrmBuZiLiaoQuery,
  ufrmAppLimitSetting;

//type TSetCallMoudleProc = Procedure(ModuleId: Integer); stdcall;

procedure ExecModule(ModuleId: Integer);
begin
//  if ModuleId = 11 then        //'用户权限'
//    ExecUserPowerfrm
//  else if ModuleId = 12  then  //'更改密码'
//    ExecChangePassfrm
//  else if ModuleId = 13 then   //'签证国家'
//    ExecCountryfrm
//  else if ModuleId = 14 then   //'公司资料'
//    ExecCompanyfrm
//  else if ModuleId = 21 then   //'签证申请'
//    ExecVisaAppfrm
//  else if ModuleId = 22 then   //'签证补录'
//    ExecVisaReturnfrm
//  else if ModuleId = 31 then   //'借支管理'
//    ExecBorrowFrm
//  else if ModuleId = 32 then   //'应收帐款'
//    ExecGaterFrm
//  else if ModuleId = 41 then   //'签证流量'
//    ExecGroupFluxFrm
//  else if ModuleId = 42 then   //'业务统计'
//    ExecDataCountFrm
  case ModuleId of
    11:ExecUserPowerfrm;       //'用户权限'
    12:ExecfrmChangePassword;  //修改密码
    13:ExecCountryfrm;         //'签证国家'
    21:ExecVisaAppfrm;         //签证管理
    1001:ExecCountryHoildayFrm;  //签证国家假期设置
    1002:ExecVisaTypeFrm;        //办理类型 签证类型？
    1003:ExecSourceInfoFrm;      //同行信息
    1004:ExecVisaInfoFrm;        //签证基本资料
    1005:ExecPaymentFrm;         //收款方式
    2000:ExecVisaSignInsertFrm;  //订单录入
    2001:ExecVisaSignQueryFrm;   //订单查询
    3001:ExecfrmNotice;  //通知中心    ufrmNotice
    //3002:ExecfrmOrderQuery;  //订单报表
    3002:ExecfrmOrderQuery_anh;  //订单报表 新
    3003:ExecFrmArea;  //区域（洲）
    3004:ExecFrmSourceType;  //客户类别
    3005:ExecfrmOrderQueryArea;  //订单报表-区域统计
    3006: ExecfrmOrderQueryCountry; // 订单报表-国家统计
    3007: ExecfrmSendQuery;  //送签查询
    3008: ExecfrmOrderHistoryQuery;  //订单操作统计
    3009: ExecfrmOrderQuery_ava;  //订单报表-客人信息
    3010: ExecfrmOrderQuery_avgh; //订单报表-操作记录
    3011: ExecfrmBuZiLiaoQuery;  //补资料查询
    3012: ExecfrmAppLimitSetting; //操作状态设置
    else
      MessageOfWarning('没有此功能模块!', True);
  end;
end;

end.
