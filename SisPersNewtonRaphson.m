clear;
x = input('titik duga x:' );
y = input('titik duga y:' );
z = input('titik duga z:' );
epsilon = 0.000001;
maxstep = 300;
disp('step     xr        yr          zr     abs(xr+1 - xr) abs(yr+1 - yr) abs(zr+1 - zr)');
for i=1:maxstep
    x0 = x;
	y0 = y;
	z0 = z;
	%fungsi-fungsi yg ada di soal
	u = 3*x0-cos(y0*z0)-0.5;
	v = x0^2 - 81*(y0+0.1)^2 + sin (z0) + 1.06;
	w = exp(-x0*y0) + 20*z0 + (10*pi -3)/3;
	%turunan parsial fungsi2 di atas thd variabel x, y, z
	ux = 3;
	uy = z0*sin(y0*z0);
	uz = y0*sin(y0*z0);
	vx = 2*x0;
	vy = -192*(y0+0.1);
	vz = cos(z0);
	wx = -y0*exp(-x0*y0);
	wy = -x0*exp(-x0*y0);
	wz = 20;
	%untuk memudahkan, didefinisikan a, b, c
	a = x*ux+y*uy+z*uz-u;
	b = x*vx+y*vy+z*vz-v;
	c = x*wx+y*wy+z*wz-w;
	%determinan Jacobi
	J = ux*(vy*wz-vz*wy)-uy*(vx*wz-vz*wx)+uz*(vx*wy-vy*wx);
    x = (a*(vy*wz-vz*wy)-uy*(b*wz-vz*c)+uz*(b*wy-vy*c))/J;
	y = (ux*(b*wz-vz*c)-a*(vx*wz-vz*wx)+uz*(vx*c-b*wx))/J;
	z = (ux*(vy*c-b*wy)-uy*(vx*c-b*wx)+a*(vx*wy-vy*wx))/J;
    fprintf('%3d     %8.6f %8.6f %8.6f %8.6f   %8.6f    %8.6f\n', i, x, y,z, abs(x-x0), abs(y-y0), abs(z-z0))
    if and(and(abs(x-x0)< epsilon, abs(y-y0)< epsilon), abs(z-z0) < epsilon) ;
        fprintf('hampiran akar x= %g, y= %g, z= %g \n',x,y,z);
        break;
    end
end
if i>=maxstep
    fprintf('gagal')
end
    
    

