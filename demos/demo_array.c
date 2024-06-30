int c[10] = {1};
float d[10][10] = {{0,0,1.0},{3.0}};
int b(int s){
    return s;
}
int a(int m);
int main(){
    float a[10][5]={{1,2,3,4,5}};
    // float b[10] = {1.0};
    int k = 0;
    while(k<5){
        int i = 1;
        while(i<10) {
            // b[i]=b[i-1]*2;
            a[i][k] = a[i-1][k]*2;
            i=i+1;
        }
        k =k +1;
    }
    // breakpoint bp1(b)
    
    // int b , c = 3;
    // int d[2][3] = {{1,2,3},{4,5,6}};
    // b=d[1][2];
    k = 0;
    while(k<5){
        putfarray(5, a[k]);
        k = k+1;
    }
    return 0;
}

