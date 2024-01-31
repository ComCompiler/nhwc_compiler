int main()
{
	int a = 2;
	if (a<3)  a= 5;
	return 0;
}
int kill()
{
	int choice = 3;
	switch (choice) {
        case 1:
            printf("您选择了选项 1\n");
            break;
        case 2:
            printf("您选择了选项 2\n");
            break;
        case 3:
            printf("您选择了选项 3\n");
            break;
        default:
            printf("无效的选项\n");
            break;
    }
}


