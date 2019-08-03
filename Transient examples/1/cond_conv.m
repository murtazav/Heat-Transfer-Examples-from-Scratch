dt = 1;
dx = 0.01;
tf=100000;
t = 0:dt:tf;
x = 0:dx:1;
%copper
g_dot=0;
alpha = 1.11*(10^-4);
T2 = 293;
T1 = 320;
T_inf = 298;
K=401;
h=63;
rho=8960;
Cp=0.385;
for i=1:tf/dt
    for j=1:100
        if j ==1
            T(i,j)=T1;
        else
            T(i,j)=T2;
        end
    end
end
for i=2:tf/dt
    T(i,100) = T(i-1,100)+dt/dx*(alpha*(T(i-1,99)-T(i-1,100))+(h*(T_inf-T(i-1,100))+g_dot)/(rho*Cp));
    for j=2:99
        T(i,j)= T(i-1,j)+dt/dx*(alpha*(T(i-1,j-1)-2*T(i-1,j)+T(i-1,j+1))+g_dot/rho/Cp);
    end
end
