/* Type your code here, or load an example. */
int main(){
    int x = 4;
    while (x < 7){
        x = x+1;
        breakpoint bp0(x.simu_val);
    }
    int b = square(x);
    breakpoint bp1(b.simu_val,x.simu_val);

    return 0;
}

int square(int num) {
    return num*num;
}
