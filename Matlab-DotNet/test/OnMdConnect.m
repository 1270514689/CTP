function OnMdConnect(sender,arg)

% �����¼�ɹ���������
if arg.result == QuantBox.CSharp2CTP.ConnectionStatus.E_logined
    global md;
    md.Subscribe('IF1212,IF1301,IF1303,IF1306');
end

end
