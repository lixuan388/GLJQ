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
//  if ModuleId = 11 then        //'�û�Ȩ��'
//    ExecUserPowerfrm
//  else if ModuleId = 12  then  //'��������'
//    ExecChangePassfrm
//  else if ModuleId = 13 then   //'ǩ֤����'
//    ExecCountryfrm
//  else if ModuleId = 14 then   //'��˾����'
//    ExecCompanyfrm
//  else if ModuleId = 21 then   //'ǩ֤����'
//    ExecVisaAppfrm
//  else if ModuleId = 22 then   //'ǩ֤��¼'
//    ExecVisaReturnfrm
//  else if ModuleId = 31 then   //'��֧����'
//    ExecBorrowFrm
//  else if ModuleId = 32 then   //'Ӧ���ʿ�'
//    ExecGaterFrm
//  else if ModuleId = 41 then   //'ǩ֤����'
//    ExecGroupFluxFrm
//  else if ModuleId = 42 then   //'ҵ��ͳ��'
//    ExecDataCountFrm
  case ModuleId of
    11:ExecUserPowerfrm;       //'�û�Ȩ��'
    12:ExecfrmChangePassword;  //�޸�����
    13:ExecCountryfrm;         //'ǩ֤����'
    21:ExecVisaAppfrm;         //ǩ֤����
    1001:ExecCountryHoildayFrm;  //ǩ֤���Ҽ�������
    1002:ExecVisaTypeFrm;        //�������� ǩ֤���ͣ�
    1003:ExecSourceInfoFrm;      //ͬ����Ϣ
    1004:ExecVisaInfoFrm;        //ǩ֤��������
    1005:ExecPaymentFrm;         //�տʽ
    2000:ExecVisaSignInsertFrm;  //����¼��
    2001:ExecVisaSignQueryFrm;   //������ѯ
    3001:ExecfrmNotice;  //֪ͨ����    ufrmNotice
    //3002:ExecfrmOrderQuery;  //��������
    3002:ExecfrmOrderQuery_anh;  //�������� ��
    3003:ExecFrmArea;  //�����ޣ�
    3004:ExecFrmSourceType;  //�ͻ����
    3005:ExecfrmOrderQueryArea;  //��������-����ͳ��
    3006: ExecfrmOrderQueryCountry; // ��������-����ͳ��
    3007: ExecfrmSendQuery;  //��ǩ��ѯ
    3008: ExecfrmOrderHistoryQuery;  //��������ͳ��
    3009: ExecfrmOrderQuery_ava;  //��������-������Ϣ
    3010: ExecfrmOrderQuery_avgh; //��������-������¼
    3011: ExecfrmBuZiLiaoQuery;  //�����ϲ�ѯ
    3012: ExecfrmAppLimitSetting; //����״̬����
    else
      MessageOfWarning('û�д˹���ģ��!', True);
  end;
end;

end.
