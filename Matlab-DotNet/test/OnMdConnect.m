%% �������ӻر�
function OnMdConnect(sender,arg)

%����״̬��E_logined�ͱ�ʾ��¼�ɹ�
if arg.result == ConnectionStatus.E_logined
    global md;
	% �������飬֧��","�ָ�
    md.Subscribe('IF1305,IF1306,IF1309,IF1312');
end

end
