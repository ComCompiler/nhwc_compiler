int main()
{
	int i, sum ;//= 0;

	for ( i = 1; i <= Last; i++ ) {
	  sum += i;
	} /*-for-*/
	//printf("sum = %d\n", sum);

	return 0;
}

int f(int x){
	if (x >10) {
		return 10;
	}
	return f(x+1);
}

