void test(int x,int a ){
    float y = 1.1;
    int z = y+a;
    x++;
    {
        x+=3;
    }
    {
        y+=2;
    }
}

int test2(int abc){
    if(abc>0){
        abc = abc+2;
        {abc++;}
    }
    else abc--;
    while(abc>0){
        abc++;
    }
    for(int i;i<10;i++){
        abc++;
    }
    switch(abc){
        case 0:abc++;break;
        case 1:abc--;break;
        default:abc = abc+3;break;
    }
    return abc;
}


int main(){
    int f = 1,g = 4;
    test(f,g);
    {{}} 
    {}
    return 0;
}