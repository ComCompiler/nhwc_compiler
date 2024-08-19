int main() {
    int i = 0;
    int j;
    while (i < 5) {
        j = 0;
        while (j < 5) {
            if (i == j) {
                j = j+1;
                continue;  
            }
            if (j == 4) {
                break;  
            }
            j = j+1;
        }
        if (i == 3) {
            break;  
        }
        i=i+1;
    }
    return 0;
}
