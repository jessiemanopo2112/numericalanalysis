%jumlah partisi harus genap
a = input('masukkan titik awal: ');
b = input('masukkan titik akhir: ');
n = input('masukkan jumlah partisi: ');
h = (b - a)/n;
f = Fungsisesuaisoal(a) + Fungsisesuaisoal(b);
x = a;
disp('r        x          f(x)');
for r=1:n-1
	x = x + h;
	if mod (r,2) == 1
		f = f + 4*Fungsisesuaisoal(x);

	else 
		f = f + 2*Fungsisesuaisoal(x);
	end
	fprintf('%3d        %8.6f           %8.6f\n', r, x, Fungsisesuaisoal(x))
end
I = h/3*(f);
fprintf('hasil integrasinya adalah %8.6f\n', I)