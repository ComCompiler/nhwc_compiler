int none(){

}
int kill()
{
	int a = 2;
	int b = 2;
    a=3,b=2;
	if (a<3)  none();
	return 0;
}
int main()
{
	int choice = 3;
	switch (choice) {
        case 1:
            kill();
            break;
        case 2:
            none();
            none(3);
            int b = a= ++kill();
            c = 1+2;
            break;
        case 3:
            printf("您选择了选项 3\n");
            break;
        default:
            printf("无效的选项\n");
            break;
    }
}


