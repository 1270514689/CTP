function OnMdConnect(sender,arg)
% �������ӻر�

% ����״̬��E_logined�ͱ�ʾ��¼�ɹ�
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined
    global md;
	% �������飬֧��","��";"�ָ�
    md.Subscribe('IF1401;IF1403,IF1409;IF1312');
else
    disp(arg.result);
end

end
