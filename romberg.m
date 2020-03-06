%Romberg, digunakan untuk mengaproksimasi nilai integrasi
clear;
a = input('masukkan titik awal: ');
b = input('masukkan titik akhir: ');
n = input('masukkan jumlah partisi: ');
f = Fungsisesuaisoal(a) + Fungsisesuaisoal(b);
% bikin tabel romberg
for r =1:n-1
	R(r,1) = r;
	h = (b - a)/r;
	f = Fungsisesuaisoal(a) + Fungsisesuaisoal(b);
	x = a;
	if r == 1,
		f = f;
	else
		for i=1:r-1
			x = x + h;
			f = f + 2*Fungsisesuaisoal(x);
		end
	end
	R(r,2) = h/2*f;
end
for k=3:n
	for r=1:n-1
		if r <= k-2, 
			R(r,k) = 0;
		else R(r,k) = R(r,k-1) + (R(r,k-1)-R(r-1,k-1))/(2^((k-2)*2)-1);
		end
	end
end
fprintf('aproksimasi hasil integrasi %8.6f\n', R(n-1,n))