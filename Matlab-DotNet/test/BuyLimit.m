function OrderRef = BuyLimit(Instrument,Qty,Price)
    global td;
    % �µ�
    OrderRef = td.SendOrder(...
        -1,... %ǿ��ָ����������,-1��ʾ�ɵײ�����
        Instrument,... %��Լ
        QuantBox.CSharp2CTP.TThostFtdcDirectionType.Buy,... %����
        '0',... %��ƽ���
        '1',... %Ͷ���ױ����
        Qty,... %����
        Price,... %�۸�
        QuantBox.CSharp2CTP.TThostFtdcOrderPriceTypeType.LimitPrice,... %�۸�����
        QuantBox.CSharp2CTP.TThostFtdcTimeConditionType.GFD,... %ʱ������
        QuantBox.CSharp2CTP.TThostFtdcContingentConditionType.Immediately,... %��������
        0,... % ֹ���
        QuantBox.CSharp2CTP.TThostFtdcVolumeConditionType.AV); %�ɽ�������
    
end
