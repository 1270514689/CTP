function OnRtnOrder(sender,arg)
disp(arg)

if arg.pOrder.VolumeTotal>2
    global td;
    % ����
    td.CancelOrder(arg.pOrder);
end

end
