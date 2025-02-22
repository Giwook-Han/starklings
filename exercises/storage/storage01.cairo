%lang starknet

# Starknet provide persistent and mutable storage

# TODO
# Create a storage named `bool` storing a single felt

# TESTS #

from starkware.cairo.common.cairo_builtins import HashBuiltin

@storage_var
func bool() -> (value : felt):
end

@external
func test_store_bool{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}():
    let (x) = bool.read()
    assert x = 0

    bool.write(1)

    let (x) = bool.read()
    assert x = 1

    return ()
end
