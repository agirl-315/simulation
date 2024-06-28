function dy = Model_l( t,y,k)
        
betaa = k(1);
d=k(2);
p=k(3);
c=k(4);

dy = zeros(3, 1);
T=y(1);I=y(2);V=y(3);
dy(1) = 1.72*10^(-5)-betaa * y(1) * y(3)-8.6*10^(-7)*y(1);
dy(2) = betaa * y(1) * y(3) - (8.6*10^(-7)+d) * y(2);
dy(3) = p * y(2)-c*y(3);
end
