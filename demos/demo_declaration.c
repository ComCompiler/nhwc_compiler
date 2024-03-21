int main(){
    int a = 3;
    int b = 3+4;
    int c = 3+b;
    int d = 9+(1+2)*(2+4/5)+1;
    int e;
    int f = a+b+c;
    // int g = h+3+2;
    int x = 1,y=2;
    {
        c = 2,d = 2;
        a = 4;
        int i = 0;
        int j = a+b;
    }
    j = 1;
}
void fun(int a,int b){
    a = b+a;
}