%% �������ӻر�
function OnTdConnect(sender,arg)

%����״̬��E_confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
if arg.result == ConnectionStatus.E_confirmed
    global td;
    % �µ�
    td.SendOrder('IF1309',... %��Լ
        TThostFtdcDirectionType.Buy,... %����
        '0',... %��ƽ���
        '1',... %Ͷ���ױ����
        1,... %����
		2250,... %�۸�
        TThostFtdcOrderPriceTypeType.LimitPrice,... %�۸�����
        TThostFtdcTimeConditionType.GFD,... %ʱ������
        TThostFtdcContingentConditionType.Immediately,... %��������
        0);
end

end
