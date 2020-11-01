#include <stdio.h>
// X = A2*B2+A2*C2-D2/E1+k; K = 4019h
extern "C" double calc(double, double, double, double, float);
int main()
{
	double A, B, C, D = 0;
	float E = 0;
	double res = 0;
	printf("Enter A value: ");
	scanf_s("%lf", &A);
	printf("Enter B value: ");
	scanf_s("%lf", &B);
	printf("Enter C value: ");
	scanf_s("%lf", &C);
	printf("Enter D value: ");
	scanf_s("%lf", &D);
	printf("Enter E value: ");
	scanf_s("%f", &E);
	res = calc(A, B, C, D, E);
	printf("Result is: %lf", res);

	return 0;
}
