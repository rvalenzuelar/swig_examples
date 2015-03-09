%module example
%{
	extern double myvar;
	extern int fact(int n);
	extern int mymod(int x, int y);
	extern char *get_time();
%}

extern double myvar;
extern int fact(int n);
extern int mymod(int x, int y);
extern char *get_time();
