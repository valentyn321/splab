#include <stdio.h>

extern "C" double calc(double, float, float);

int main()
{
	double arr[5] = { 11.0, 10.0, 2.0, 11.1, 2.0 };
	float c = 0;
	float d = 0;
	double res = 0;
	printf("Enter numbers: \n");
	printf("C = ");
	scanf_s("%f", &c);
	printf("D = ");
	scanf_s("%f", &d);
	if (c <= d)
	{
		if (c == 0)
		{
			printf("C cannot be zero-value!\r\n");
			return 0;
		}
	}

	printf("\r\nCalculation result: \r\n");
	for (int i = 0; i < 5; ++i)
	{
		res = calc(arr[i], c, d);
		printf("X%d = %lf\r\n", i, res);
	}

	return 0;
}
