clear;
x = {'perak','emas','hitam', 'coklat', 'merah', 'oren', 'kuning','hijau','biru','ungu','abu','putih'};
a = input('warna pertama:');
b = input('warna kedua:');
c = input('warna ketiga:');
d = input('warna keempat:');
for i=1:12
    y = strcmp(x{i},a);
    z = strcmp(x{i},b);
    w = strcmp(x{i},c);
    t = strcmp(x{i},d);
    % hasil dari strcmp selalu bernilai 1 atau 0
    if y == 1;
        j = i;
    end
    if z == 1;
        k = i;
    end
    if w == 1;
        l = i;
    end
    if t==1;
        h=i;
    end
end
nilai = ((j-3)*10+(k-3))*10^(l-3);
if j == 3;
    error('warna pertama ngaboleh item');
end
if or(j == 1,j == 2,k == 1,k == 2);
    error('warna pertama dan kedua tidak boleh emas dan perak, coba urutin dari warna lain');
end
if and(h ~= 1,h ~= 2);    
    error('warna keempat harus emas atau perak'); 
elseif h == 1; 
        tol = nilai*0.1; 
elseif h == 2; 
            tol = nilai*0.05;
end
fprintf('nilai resistor: (%11.2f +- %10.2f) ohm \n',nilai,tol)
