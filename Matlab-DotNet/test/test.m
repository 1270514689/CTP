%% ����C#�⣬�밴�Լ�Ŀ¼���е���
cd 'D:\wukan\Documents\GitHub\CTP\Matlab-DotNet\test\'
NET.addAssembly(fullfile(cd,'QuantBox.CSharp2CTP.dll'));
import QuantBox.CSharp2CTP.*;

%% ����
global md;
md =  MdApiWrapper();
addlistener(md,'OnConnect',@OnMdConnect);
addlistener(md,'OnDisconnect',@OnMdDisconnect);
addlistener(md,'OnRtnDepthMarketData',@OnRtnDepthMarketData);
md.Connect('D:\',... %�������ļ�·��
    'tcp://asp-sim2-md1.financial-trading-platform.com:26213',... %�����������ַ
    '2030',... %���͹�˾����
    '123456',... %�û�����
    '888888'); %����

%% ����
global td;
td = TraderApiWrapper();
addlistener(td,'OnConnect',@OnTdConnect);
addlistener(td,'OnDisconnect',@OnTdDisconnect);
addlistener(td,'OnRtnOrder',@OnRtnOrder);

td.Connect('D:\',... %�������ļ�·��
    'tcp://asp-sim2-front1.financial-trading-platform.com:26205',... %���׷�������ַ
    '2030',... %���͹�˾����
    '123456',... %�û�����
    '888888',... %����
    THOST_TE_RESUME_TYPE.THOST_TERT_QUICK,... %���ش���ʽ
    '',... %�û��˲�Ʒ��Ϣ
    ''); %��֤��

%% �˳�
% md.Disconnect() %�����˳�
% td.Disconnect() %�����˳�