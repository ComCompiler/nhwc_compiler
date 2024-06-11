int getint();
int getch();
int getarray(int a[]);
float getfloat();
int getfarray(float a[]);

void putint(int x );
void putch(int x );
void putarray(int x, int a[]);
void putfloat(float x);
void putfarray(int x, float a[]);

// putf(char *s, ...)
void putf();

// macros are not supported as for now
// #define starttime() _sysy_starttime(__LINE__)
// #define stoptime()  _sysy_stoptime(__LINE__)
void starttime();
void stoptime();

void memset(void *s, int c, int n);
void memcpy(void *dest, void *src, int n);
