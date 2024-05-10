/* Type your code here, or load an example. */
int square(int num) {
    while(num<20){
        num+=1;
    }
    int a = num*num;
    return a;
}
int m(int x){
    return square(3);
}
int main(){
    int x = 4;
    while (x < 17){
        m(3);
        breakpoint a;
        x = x+1;
    }
    breakpoint exit;
    return 0;
}
