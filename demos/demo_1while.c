
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
}

int main(){
    int a[3][3];
    init(a);
    return 0;
}