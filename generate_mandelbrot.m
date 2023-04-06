function M = generate_mandelbrot(N, xmin, xmax, ymin, ymax)
	[X, Y] = meshgrid(linspace(xmin, xmax, N), linspace(ymin, ymax,N));	
	A = X + 1i*Y;	

	C = A;  		
	for k = 1:50		
		   A = A.^2 + C;	
	end			

	M = (abs(A) < 2);
end
