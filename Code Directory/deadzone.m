function y = deadzone(u)

if (u(1)<-0.01)
    fr = u(4)*u(3);
    y = u(2)+fr;
elseif (u(1)>0.01)
    fr = -u(4)*u(3);
    y = u(2)+fr;
else
    if abs(u(2))<= u(4)*u(3)
        y=0;
    else
        if u(2) == 0
            y=0;
        else
            if u(2)> u(4)*u(3)
                y = u(2) - u(4)*u(3);
            else
                y = u(2) + u(4)*u(3);
            end
        end
    end
end
