function OnRtnOrder(sender,arg)
% ί�лر�
global orders;

% ��ӡ����
disp(arg)

% ʹ��OrderRef����¼���������ڿ���������
orders{str2num(char(arg.pOrder.OrderRef))} = arg.pOrder;

end
