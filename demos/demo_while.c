int getint();
int getch();
int getarray(int a[]);
float getfloat();
int getfarray(float a[]);

void putint(int x);
void putch(int x);
void putarray(int x, int a[]);
void putfloat(float x);
void putfarray(int x , float a[]);

void putf();

void starttime();
void stoptime();

void memset(void *s, int c, int n);
void memcpy(void *dest, void *src, int n);
/* Type your code here, or load an example. */
int main(){
    int x = 4;
    while (x < 7){
        x = x+1;
        putint(x);
        breakpoint bp0(x.simu_val);
    }
    int b = square(x);
    breakpoint bp1(b.simu_val,x.simu_val);

    return 0;
}

int square(int num) {
    return num*num;
}
