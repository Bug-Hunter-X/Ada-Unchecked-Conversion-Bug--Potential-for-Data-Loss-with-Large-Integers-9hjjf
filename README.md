# Ada Unchecked Conversion Bug

This repository demonstrates a potential bug related to unchecked conversions in Ada when dealing with large integers.  The `Unchecked_Conversion` function directly casts an Integer to a Float without any checks for potential overflow or precision loss.  This can lead to silent data corruption, making it difficult to debug.

The example code shows a scenario where a large integer is converted to a Float. On some systems, this could lead to the result being an inaccurate representation of the original integer due to the limited precision of the floating-point type.  The output might show a value different from the expected result.

The solution demonstrates how to use safer conversion methods to avoid such issues.