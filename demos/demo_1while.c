
void init(int a[][3]){
    int i = 0;
    while(i<3){
        int k = 0;
        while(k<3){
            a[i][k] = k;
            k = k+1;
        }
        i = i+1;
    }
    while(i<10){
        int a = 10;
        int sum = 0;
        while(a>=0){
            sum = sum + a+i;
            a = a-1;
        }
        while(a>5){
            sum = sum - a;
            a = a - 1;
        }
        i = i+1;
    }
}

int main(){
    int a[3][3];
    init(a);
    return 0;
}