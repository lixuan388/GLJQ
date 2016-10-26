program GLJQ2014;

uses
  Vcl.Forms,
  uCommonUnit in 'common\uCommonUnit.pas',
  uCallModule in 'common\uCallModule.pas',
  uMainFrm in 'common\uMainFrm.pas' {MainFrm},
  IMCode in 'visa\IMCode.pas',
  uLoginfrm in 'common\uLoginfrm.pas' {Loginfrm},
  uBeginPicturefrm in 'common\uBeginPicturefrm.pas' {BegPicturefrm},
  uModuleFrm in 'common\uModuleFrm.pas' {ModuleFrm},
  uModuleMDIFrm in 'common\uModuleMDIFrm.pas' {ModuleMDIFrm},
  uModuleMDIGridFrm in 'common\uModuleMDIGridFrm.pas' {ModuleMDIGirdFrm},
  uCountryHoildayFrm in 'Base\uCountryHoildayFrm.pas' {CountryHoildayFrm},
  uPaymentFrm in 'Base\uPaymentFrm.pas' {PaymentFrm},
  uUserPowerfrm in 'Base\uUserPowerfrm.pas' {UserPowerfrm},
  uCountryVisaFrm in 'Base\uCountryVisaFrm.pas' {CountryVisaFrm},
  uSourceInfoFrm in 'Base\uSourceInfoFrm.pas' {SourceInfoFrm},
  uVisaTypeFrm in 'Base\uVisaTypeFrm.pas' {VisaTypeFrm},
  uVisaInfoFrm in 'Base\uVisaInfoFrm.pas' {VisaInfoFrm},
  uCountryFrm in 'Base\uCountryFrm.pas' {CountryFrm},
  uVisaSignFrm in 'visa\uVisaSignFrm.pas' {VisaSignFrm},
  uVisaSignInsertFrm in 'visa\uVisaSignInsertFrm.pas' {VisaSignInsertFrm},
  uSelectVisaSignFrm in 'visa\uSelectVisaSignFrm.pas' {SelectVisaSignFrm},
  uVisaAppFrm in 'visa\uVisaAppFrm.pas' {VisaAppFrm},
  uVisaAppSelectGuestListFrm in 'visa\uVisaAppSelectGuestListFrm.pas' {VisaAppSelectGuestListFrm},
  uVisaSignQueryFrm in 'visa\uVisaSignQueryFrm.pas' {VisaSignQueryFrm},
  uCommonDM in 'common\uCommonDM.pas' {CommonDM: TDataModule},
  ufrmNotice in 'Base\ufrmNotice.pas' {frmNotice},
  ufrmNoticePop in 'Base\ufrmNoticePop.pas' {frmNoticePop},
  ufrmSourceQuery in 'visa\ufrmSourceQuery.pas' {frmSourceQuery},
  ufrmChangePassword in 'Base\ufrmChangePassword.pas' {frmChangePassword},
  ufrmBuZiLiao in 'visa\ufrmBuZiLiao.pas' {frmBuZiLiao},
  ufrmOrderQuery in 'visa\ufrmOrderQuery.pas' {frmOrderQuery},
  uFrmArea in 'Base\uFrmArea.pas' {FrmArea},
  uFrmSourceType in 'Base\uFrmSourceType.pas' {FrmSourceType},
  ufrmNoticeNew in 'Base\ufrmNoticeNew.pas' {frmNoticeNew},
  ufrmGroupEdit in 'visa\ufrmGroupEdit.pas' {frmGroupEdit},
  ufrmApplicationEdit in 'visa\ufrmApplicationEdit.pas' {frmApplicationEdit},
  ufrmVisaAppList in 'visa\ufrmVisaAppList.pas' {frmVisaAppList},
  ufrmExcelInput in 'visa\ufrmExcelInput.pas' {frmExcelInput},
  ufrmOrderQueryArea in 'visa\ufrmOrderQueryArea.pas' {frmOrderQueryArea},
  ufrmOrderQueryCountry in 'visa\ufrmOrderQueryCountry.pas' {frmOrderQueryCountry},
  ufrmSplitOrders in 'visa\ufrmSplitOrders.pas' {frmSplitOrders},
  ufrmSendQuery in 'visa\ufrmSendQuery.pas' {frmSendQuery},
  ufrmOrderHistoryQuery in 'visa\ufrmOrderHistoryQuery.pas' {frmOrderHistoryQuery},
  ufrmAddGuest in 'visa\ufrmAddGuest.pas' {frmAddGuest},
  ufrmOrderQuery_ava in 'visa\ufrmOrderQuery_ava.pas' {frmOrderQuery_ava},
  ufrmOrderQuery_avgh in 'visa\ufrmOrderQuery_avgh.pas' {frmOrderQuery_avgh},
  ufrmOrderQuery_anh in 'visa\ufrmOrderQuery_anh.pas' {frmOrderQuery_anh},
  ufrmBuZiLiaoQuery in 'visa\ufrmBuZiLiaoQuery.pas' {frmBuZiLiaoQuery},
  ufrmBuZiLiao_remark in 'visa\ufrmBuZiLiao_remark.pas' {frmBuZiLiao_remark},
  ufrmAppLimitSetting in 'Base\ufrmAppLimitSetting.pas' {frmAppLimitSetting};

{$R *.res}

begin
  Application.Initialize;
  BegPicturefrm := TBegPicturefrm.create(Application);
  BegPicturefrm.Show;
  BegPicturefrm.Update;
  //Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCommonDM, CommonDM);
  Application.CreateForm(TMainfrm, Mainfrm);
  //Application.CreateForm(TCommonDM, CommonDM);
  BegPicturefrm.hide;
  BegPicturefrm.free;
  Application.Run;
end.
