%lang starknet

# Fibonacci numbers are defined by the following recurrence:
# F(0) = 0
# F(1) = 1
# F(n) = F(n-1) + F(n-2)

# TODO: write a recursive implementation of fibonacci numbers that returns the nth fibonacci number
from starkware.cairo.common.math import assert_le

func fibonacci{range_check_ptr}(n : felt) -> (result : felt):
    alloc_locals

    assert_le(0,n)

    if n*(n-1) == 0:
        return (n)
    end

    let (local val1) = fibonacci(n - 1)
    let (val2) = fibonacci(n - 2)

    return (val1+val2)
end

# Do not change the test
@external
func test_fibonacci{syscall_ptr : felt*, range_check_ptr}():
    let (n) = fibonacci(0)
    assert n = 0
    let (n) = fibonacci(1)
    assert n = 1
    let (n) = fibonacci(7)
    assert n = 13
    let (n) = fibonacci(10)
    assert n = 55
    return ()
end
