%lang starknet

# Starknet provides a module management system.
# It is very similar to the Python's one.

from starkware.cairo.common.cairo_builtins import HashBuiltin
# TODO: add the module imports needed to make the test pass!

# You can ignore what follows for now
@external
func test_ok{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}():
    return ()
end
