// calculator_operations.cpp
#include "calculator.h"

int Calculator::Multiply(double a, double b)
{
    return a * b;
}

int Calculator::Divide(double a, double b)
{
    if (b != 0)
        return a / b;
    else
        return 0; 
}

