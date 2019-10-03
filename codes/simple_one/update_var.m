mu_step = 0.01*Pmax/sqrt(count_power);
kr_step = .1*(2^C_thresh * var_q)/sqrt(count_power);
lambdar_step = 0.01*Rt/sqrt(count_power);
tr_step = 0.01*(1/(delay_max-mean(Delay_Slice))+lamda)/sqrt(count_power);
Ut2Slice = Ut2Service*service2slice;
for ki=1:N_Ut
    lambda_r(ki)= max(0,lambda_r(ki) - lambdar_step* (rate_UE(ki) - Rt));
    mu(ki)= max(0,mu(ki)-mu_step*((Pmax -Popt(ki))));
    for si = 1:N_Slice
        if Ut2Slice(ki,si) == 1
            tr(ki) = max(0,tr(ki)-tr_step*(rate_UE(ki)-1/(delay_max-(Delay_Slice(si)))+lamda));
        end
    end
    

end

for mi=1:N_rrh
    Kr(mi) =  max(0,Kr(ki)-kr_step*(2^C_thresh * var_q - Prrh(mi)));
end