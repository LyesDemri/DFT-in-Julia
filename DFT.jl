println("starting")
using Plots
Fe = 16000;
Te = 1/Fe;
t = (1:16000)*Te;
x = cos.(2*pi*1000*t) + cos.(2*pi*2000*t);

N = Int(length(x));
a = zeros((1,N));
b = zeros((1,N));
for n in 1:Fe/2
    a[Int(n)] = sum(x.*cos.(2*pi*n*(N/Fe)*t))
    b[Int(n)] = sum(x.*sin.(2*pi*n*(N/Fe)*t))
end

plot(transpose(a))
plot(transpose(b))
println("done")