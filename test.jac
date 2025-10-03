walker adder {
    has int a = 0;
    has int b = 0;
    can add_nums {
        report a + b;
    }
}

test "adder adds numbers correctly" {
    with entry {
        walker adder {
            has int a = 5;
            has int b = 7;
            can add_nums {
                report a + b;
            }
        }
    }

    run adder::add_nums;

    assert reported == [12];
}
