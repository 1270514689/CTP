%% ����C#�⣬�밴�Լ�Ŀ¼���е���
cd 'D:\Kan\Documents\GitHub\CTP\Matlab-DotNet\test\'
NET.addAssembly(fullfile(cd,'QuantBox.CSharp2CTP.dll'));
NET.addAssembly(fullfile(cd,'QuantBox.Libray.dll'));
import QuantBox.CSharp2CTP.*;
import QuantBox.CSharp2CTP.Event.*;
import QuantBox.Libray.*;

%% ����
global md;
md =  MdApiWrapper();
addlistener(md,'OnConnect',@OnMdConnect);
addlistener(md,'OnDisconnect',@OnMdDisconnect);
addlistener(md,'OnRtnDepthMarketData',@OnRtnDepthMarketData);
md.Connect('D:\',... %�������ļ�·��
    'tcp://ctpmn1-front1.citicsf.com:51213',... %�����������ַ
    '1017',... %���͹�˾����
    '123456',... %�û�����
    '888888'); %����

%% ����
global td;
td = TraderApiWrapper();
addlistener(td,'OnConnect',@OnTdConnect);
addlistener(td,'OnDisconnect',@OnTdDisconnect);
addlistener(td,'OnRtnOrder',@OnRtnOrder);

td.Connect('D:\',... %�������ļ�·��
    'tcp://ctpmn1-front1.citicsf.com:51205',... %���׷�������ַ
    '1017',... %���͹�˾����
    '00000015',... %�û�����
    '123456',... %����
    THOST_TE_RESUME_TYPE.THOST_TERT_QUICK,... %���ش���ʽ
    '',... %�û��˲�Ʒ��Ϣ
    ''); %��֤��

%% �˳�
% md.Disconnect() %�����˳�
% td.Disconnect() %�����˳�