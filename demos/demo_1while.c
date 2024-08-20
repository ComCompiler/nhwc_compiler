int main(){
    int a = 100000;
    int num[100000]; 
    int num2[5] = {1,2,3,4,5};
    int sum = 0;
    while(a>0){
        num[a] = a+num2[a%5];
        sum = sum + num[a]*num2[a%5];
        num[a-1] = (a-1)+num2[(a-1)%5];
        sum = sum + num[(a-1)]*num2[(a-1)%5];
        num[a-2] = (a-2)+num2[(a-2)%5];
        sum = sum + num[(a-2)]*num2[(a-2)%5];
        num[a-3] = (a-3)+num2[(a-3)%5];
        sum = sum + num[(a-3)]*num2[(a-3)%5];
        a = a-4;
    }
    while(a>0){
        num[a] = a+num2[a%5];
        sum = sum + num[a]*num2[a%5];
        a = a-1;
    }
    sum = sum + num[0];
    return a;
}