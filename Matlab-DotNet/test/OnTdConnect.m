function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��Confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
if arg.result == QuantBox.Libray.ConnectionStatus.Confirmed
    global td;
    % �µ�
    ret = td.SendOrder(...
        -1,... %ǿ��ָ����������,-1��ʾ�ɵײ�����
        'IF1406',... %��Լ
        QuantBox.CSharp2CTP.TThostFtdcDirectionType.Buy,... %����
        '0',... %��ƽ���
        '1',... %Ͷ���ױ����
        1,... %����
        2250,... %�۸�
        QuantBox.CSharp2CTP.TThostFtdcOrderPriceTypeType.LimitPrice,... %�۸�����
        QuantBox.CSharp2CTP.TThostFtdcTimeConditionType.GFD,... %ʱ������
        QuantBox.CSharp2CTP.TThostFtdcContingentConditionType.Immediately,... %��������
        0,... % ֹ���
        QuantBox.CSharp2CTP.TThostFtdcVolumeConditionType.AV); %�ɽ�������
    
    disp(ret);
end

disp(arg.result);

end
