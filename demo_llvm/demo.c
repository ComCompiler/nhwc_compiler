int main()
{
	int Last=5;
	int i, sum ;//= 0;

	for ( i = 1; i <= Last; i++ ) {
	  sum += i;
	} /*-for-*/
	//printf("sum = %d\n", sum);

	return 0;
}


// cmake ~/llvm-project/llvm -G "Unix Makefiles" \
// -DCMAKE_INSTALL_PREFIX=~/llvm-project/build \
// -DEBUILD_SHARED_LIBS=on \
// -DLLVM_ENABLE_PROJECTS=clang \
// -DCMAKE_BUILD_TYPE=Debug