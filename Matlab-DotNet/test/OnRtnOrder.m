function OnRtnOrder(sender,arg)
% ί�лر�
global orders;

% ��ӡ����
disp(arg)

% ʹ��OrderRef����¼���������ڿ���������
orders{str2num(char(arg.pOrder.OrderRef))} = arg.pOrder;


% ��ĳ������³������Լ����Ǹ�����
%if arg.pOrder.VolumeTotal>2
    %global td;
    % ����
    %td.CancelOrder(arg.pOrder);
%end

end
