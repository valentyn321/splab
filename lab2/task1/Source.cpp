#include <stdio.h>

extern "C" int  calc(short C, int A, long D);

void main(void)
{
	int nRes, nNumber2, nNumber3, nNumber4;
	printf("C = "); scanf_s("%d", &nNumber2);
	printf("D = "); scanf_s("%d", &nNumber3);
	printf("A = "); scanf_s("%d", &nNumber4);
	nRes = calc(nNumber2, nNumber3, nNumber4);

	printf("Result is: %d", nRes);

}
