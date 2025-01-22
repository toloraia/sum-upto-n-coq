From refinedc.typing Require Import typing.
From refinedc.project.sum_upto.src.sum_upto Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [src/sum_upto.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Specifications for function [sum_upto_n]. *)
  Definition type_of_sum_upto_n :=
    fn(∀ n : nat; (n @ (int (u32))); ⌜(n * (n + 1)) / 2 ≤ max_int u32⌝)
      → ∃ () : (), (((n * (n + 1)) / 2) @ (int (u32))); True.

  (* Function [main] has been skipped. *)
End spec.
