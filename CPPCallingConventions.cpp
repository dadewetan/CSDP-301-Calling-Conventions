//Name: Daniel Adewetan
//Date: 11/10/2022

#include<iostream>
#include<stdlib.h>

extern "C" int CalculateSum(int a, int b, int c, int* s1, int* s2, int* s3, int* s4);

   int main()
{
	int a = 17;
	int b = 11;
	int c = 14;

	int s1 = 1;
	int s2 = 1;
	int s3 = 1;
	int s4 = 1;

	printf("S1 equals = \n", s1);
	printf("S2 equals = \n", s2);
	printf("S3 equals = \n", s3);
	printf("S4 equals = \n", s4);

}