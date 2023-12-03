#include "calculator.h"
#include <iostream>

int main() {
    Calculator calculator;
    
    double resultAdd = calculator.Add(3.5, 2.0);
    double resultSub = calculator.Sub(5.0, 2.5);
    double resultMultiply = calculator.Multiply(2.0, 3.0);
    double resultDivide = calculator.Divide(6.0, 2.0);

    std::cout << "Addition: " << resultAdd << std::endl;
    std::cout << "Subtraction: " << resultSub << std::endl;
    std::cout << "Multiplication: " << resultMultiply << std::endl;
    std::cout << "Division: " << resultDivide << std::endl;

    return 0;
}

