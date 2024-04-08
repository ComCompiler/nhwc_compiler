// Type your code here, or load an example. 
int square(int num) {
    return -num*num;
}
int m(){
    square(3);
}
int hello(){
    square(3);
}
int k(){
    int x = 4;
    if (x > 5){
        m();
    } else if (x<3){
        square(x);
    } else {
        hello(x);

    }
}
