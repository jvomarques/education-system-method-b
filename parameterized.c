#include <criterion/parameterized.h>
#include <stdio.h>


int fibonacci(n, x1, x2) {
    if(n == 7){
        return -10;
    }

    if (n == 0) {
        return x1;
    }
    return fibonacci(n - 1, x2, x1 + x2);
}

struct parameter_tuple {
    int i;
    int e;
};

ParameterizedTestParameters(params, multiple) {
    static struct parameter_tuple params[] = {
        { 0, 0 },
        { 1, 1 },
        { 2, 1 },
        { 3, 2 },
        { 4, 3 },
        { 5, 5 },
        { 6, 8 },
        {7, 13},
        {8, 14}
    };

    return cr_make_param_array(struct parameter_tuple, params, sizeof (params) / sizeof (struct parameter_tuple));
}

ParameterizedTest(struct parameter_tuple *tup, params, multiple) {
    int fib_calc = fibonacci(tup->i, 0, 1);
    int fib_expected = tup->e;
    cr_assert_eq(fib_calc, fib_expected, "Fibonnaci(%d): Expected %d, Received %d)", tup->i, fib_expected, fib_calc);
}