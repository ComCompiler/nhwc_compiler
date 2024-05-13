/* Type your code here, or load an example. */
int main(){
    int x = 4;
    while (x < 17){
        x = x+1;
    }
    int b = square(5);
    breakpoint bp1(main.simu_func_pos_range);
    return 0;
}

int square(int num) {
    return num*num;
}
