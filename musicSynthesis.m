function [note]=keynotebueni(KN,duration) 
h=[1 0.04 0.99 0.12 0.53 0.11 0.26 0.05 0.24 0.07 0.02 0.03 0.02 0.03]; note=0; 
Fs=44100;% 44100 samples per second (CD Quality) 
N=ceil(Fs*duration);
n=1:N; 
for k=1:14     
note=note+h(k)*cos(k*2*pi*27.5*2^((KN-1)/12)*n/Fs); 
end 
tv=[0.99 0.5 0.1]; 
G=[0.005 0.0003 0.00007]; 
e(1)=0; 
for n=2: ceil(N/4)     
e(n) =tv(1)*G(1)+(1-G(1))*e(n-1); 
end    
for n=ceil(N/4)+1: ceil(3*N/4)     
e(n) =tv(2)*G(2)+(1-G(2))*e(n-1);   
end
for n=ceil(3*N/4)+1: N
e(n) =tv(3)*G(3)+(1-G(3))*e(n-1); 
end 
note=note.*e; 
plot(e)
