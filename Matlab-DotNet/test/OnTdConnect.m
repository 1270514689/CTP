function OnTdConnect(sender,arg)
% �������ӻر�

% ����״̬��Confirmed�ͱ�ʾ��¼��ȷ�ϳɹ�
if arg.result == QuantBox.Libray.ConnectionStatus.Confirmed
    
end

disp(arg.result);

end
