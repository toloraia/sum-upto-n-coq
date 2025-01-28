From refinedc.typing Require Import typing.
From refinedc.project.sum_upto.src.sum_upto Require Import generated_code.
From refinedc.project.sum_upto.src.sum_upto Require Import generated_spec.
From refinedc.project.sum_upto Require Import my_lemmas.
Set Default Proof Using "Type".

(* Generated from [src/sum_upto.c]. *)
Section proof_sum_upto_n.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [sum_upto_n]. *)
  Lemma type_sum_upto_n :
    ⊢ typed_function impl_sum_upto_n type_of_sum_upto_n.
  Proof.
    Local Open Scope printing_sugar.
    start_function "sum_upto_n" (n) => arg_n local_i local_sum.
    prepare_parameters (n).
    split_blocks ((
      <[ "#1" :=
        ∃ i : nat,
        ∃ sum_val : Z,
        arg_n ◁ₗ (n @ (int (u32))) ∗
        local_sum ◁ₗ (sum_val @ (int (u32))) ∗
        local_i ◁ₗ (i @ (int (u32))) ∗
        ⌜sum_val = (i * (i - 1)) / 2⌝ ∗
        ⌜i <= n+1⌝
    ]> $
      ∅
    )%I : gmap label (iProp Σ)) (
      @nil Prop
    ).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "sum_upto_n" "#0".
    - repeat liRStep; liShow.
      all: print_typesystem_goal "sum_upto_n" "#1".
    Unshelve. all: unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: try by apply: final_equality; solve_goal.
    all: print_sidecondition_goal "sum_upto_n".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "sum_upto_n".
  Qed.
End proof_sum_upto_n.
