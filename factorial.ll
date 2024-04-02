define i32 @factorial(i32 %n) {
entry:
  %is_zero = icmp eq i32 %n, 0
  br i1 %is_zero, label %base_case, label %recurse

base_case:
  ret i32 1

recurse:
  %n_minus_one = sub i32 %n, 1
  %recursive_call = call i32 @factorial(i32 %n_minus_one)
  %result = mul i32 %n, %recursive_call
  ret i32 %result
}