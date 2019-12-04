#include <criterion/criterion.h>

int fibonacci(n, x1, x2) {
    if(n == 7){
        return -10;
    }

    cr_assert_geq(n, 0, "input N is lower than 0");

    if (n == 0) {
        cr_assert_geq(n, 0);
        return x1;
    }

    int returnValue = fibonacci(n - 1, x2, x1 + x2);

    cr_assert_geq(returnValue, 0, "Return value is lower than 0");

    return returnValue;
}

Test(asserts, odd_inputs) {
    fibonacci(3, 0, 1);
    fibonacci(5, 0, 1);
    fibonacci(7, 0, 1);
    fibonacci(8, 0, 1);
    fibonacci(-3, 0, 1);
}

Test(asserts, even_inputs ) {
    fibonacci(2, 0, 1);
    fibonacci(-4, 0, 1);
    fibonacci(6, 0, 1);
    fibonacci(8, 0, 1);
}