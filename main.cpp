#include <stdio.h>
#include <string>
extern "C" int factorial(int val);

int main(int argc, char** argv)
{
	printf("%d", factorial(atoi(argv[1])));
    return 0;
}