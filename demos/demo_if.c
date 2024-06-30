int func(int m[][5]){
    putarray(5,m[1]);
    return 0;
}
int main(){
    int c[2][5] = {1,2,3,4,5,{9,10}};
    func(c);
    return 0;
}