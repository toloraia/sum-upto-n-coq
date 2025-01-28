From stdpp Require Import numbers.
From Coq Require Import Lia.

Lemma sum_up_to_succ i n (H0: i ≤ n+1) (H1: ¬ i ≤ n):
  i = n+1.
Proof.
  lia.
Qed.

Lemma product_equality i n (H0: i ≤ n+1) (H1: ¬ i ≤ n):
  i*(i-1) = n*(n+1).
Proof.
  remember (sum_up_to_succ i n H0 H1) as g.
  lia.
Qed.


Lemma final_equality i n (H0: i ≤ n+1) (H1: ¬ i ≤ n):
  i*(i-1)/2 = n*(n+1)/2.
Proof.
  remember (product_equality i n H0 H1) as g.
  rewrite g.
  lia.
Qed.
