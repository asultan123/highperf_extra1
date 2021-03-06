all:
	g++ -fopenmp -mmmx -msse -msse2 -mfpmath=sse M-M.cpp -o dense.o;
	g++ -fopenmp -mmmx -msse -msse2 -mfpmath=sse M-M-sparse.cpp -o sparse.o;
	g++ -fopenmp -mmmx -msse -msse2 -mfpmath=sse M-M-sparse-blocks.cpp -o bsparse.o;

clean:
	rm *.o
