function OnMdConnect(sender,arg)
% �������ӻر�

% ����״̬��Logined�ͱ�ʾ��¼�ɹ�
if arg.result == QuantBox.Libray.ConnectionStatus.Logined
    %global md;
	% �������飬֧��","��";"�ָ�
    %md.Subscribe('IF1406;IF1409,IF1412','');
end

disp(arg.result);

end
