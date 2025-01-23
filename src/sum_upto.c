#include <assert.h>

[[rc::parameters("n : nat")]]
[[rc::args("n @ int<u32>")]]
[[rc::requires("{(n * (n + 1)) / 2 ≤ max_int u32}")]]
[[rc::returns("{(n * (n + 1)) / 2} @ int<u32>")]]
unsigned int sum_upto_n(unsigned int n) {
  unsigned int sum = 0;
  unsigned int i = 1;
  [[rc::exists("i : nat", "sum_val : Z")]]
  [[rc::inv_vars("sum : sum_val @ int<u32>", "i : i @ int<u32>")]]
  [[rc::constraints("{sum_val = (i * (i - 1)) / 2}", "{i <= n+1}")]]
  for (; i <= n; i++) {
    sum += i;
  }
  [[rc::lemmas("i > n")]]
  [[rc::lemmas("i <= n+1")]]
  [[rc::lemmas("i = n+1")]]
  [[rc::lemmas("sum = (i * (i - 1)) / 2")]]
  [[rc::lemmas("sum = (n * (n + 1)) / 2")]]
  return sum;
}

int main(){
  return 0;
}
