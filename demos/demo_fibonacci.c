int Fibo(int n){
    if(n==0) return 0;
    else if(n==1) return 1;
    else return Fibo(n-1)+Fibo(n-2); 
}
int m = 0;
void main(){
    // int b = 4;
    int a =Fibo(6); // 输出55
    // int a =Fibo(b); // 输出55
    m+=1;
    return ;
}