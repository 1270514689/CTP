function OnMdConnect(sender,arg)
% �������ӻر�

% ����״̬��Logined�ͱ�ʾ��¼�ɹ�
if arg.result == QuantBox.Libray.ConnectionStatus.Logined
    global md;
	% �������飬֧��","��";"�ָ�
    md.Subscribe('IF1406;IF1409,IF1412','');
else
    disp(arg.result);
end

end
