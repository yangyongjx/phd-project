counter_max = 1;
N_service_min = 3;
N_service_max = 63;
N_service_step = 10;
lenfinder = N_service_min:N_service_step:N_service_max;
len1 = length(lenfinder);
N_server = 3;
Dmax = [1000, 10, 100];
Rmax = [7000, 70, 700];
N_resource = 3; % cpu, ram, storage
NumServerEnd = zeros(len1,counter_max);
NumService = zeros(len1,counter_max);
sum_sumVec = zeros(N_resource,len1,counter_max);
sum_ConsResource = zeros(N_resource,len1,counter_max);
sum_ResResource = zeros(N_resource,len1,counter_max);
%%
NumServerEnd1 = zeros(len1,counter_max);
NumService1 = zeros(len1,counter_max);
sum_sumVec1 = zeros(N_resource,len1,counter_max);
sum_ConsResource1 = zeros(N_resource,len1,counter_max);
sum_ResResource1 = zeros(N_resource,len1,counter_max);