From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/sum_upto.c]. *)
Section code.
  Definition file_0 : string := "src/sum_upto.c".
  Definition loc_2 : location_info := LocationInfo file_0 22 2 22 23.
  Definition loc_3 : location_info := LocationInfo file_0 23 2 23 21.
  Definition loc_4 : location_info := LocationInfo file_0 27 2 29 3.
  Definition loc_5 : location_info := LocationInfo file_0 30 2 30 13.
  Definition loc_6 : location_info := LocationInfo file_0 30 9 30 12.
  Definition loc_7 : location_info := LocationInfo file_0 30 9 30 12.
  Definition loc_8 : location_info := LocationInfo file_0 27 22 29 3.
  Definition loc_9 : location_info := LocationInfo file_0 28 4 28 13.
  Definition loc_10 : location_info := LocationInfo file_0 27 2 29 3.
  Definition loc_11 : location_info := LocationInfo file_0 27 17 27 20.
  Definition loc_12 : location_info := LocationInfo file_0 27 17 27 18.
  Definition loc_13 : location_info := LocationInfo file_0 28 4 28 7.
  Definition loc_14 : location_info := LocationInfo file_0 28 4 28 12.
  Definition loc_15 : location_info := LocationInfo file_0 28 4 28 7.
  Definition loc_16 : location_info := LocationInfo file_0 28 4 28 7.
  Definition loc_17 : location_info := LocationInfo file_0 28 11 28 12.
  Definition loc_18 : location_info := LocationInfo file_0 28 11 28 12.
  Definition loc_19 : location_info := LocationInfo file_0 27 9 27 15.
  Definition loc_20 : location_info := LocationInfo file_0 27 9 27 10.
  Definition loc_21 : location_info := LocationInfo file_0 27 9 27 10.
  Definition loc_22 : location_info := LocationInfo file_0 27 14 27 15.
  Definition loc_23 : location_info := LocationInfo file_0 27 14 27 15.
  Definition loc_24 : location_info := LocationInfo file_0 23 19 23 20.
  Definition loc_27 : location_info := LocationInfo file_0 22 21 22 22.
  Definition loc_32 : location_info := LocationInfo file_0 34 2 34 11.
  Definition loc_33 : location_info := LocationInfo file_0 34 9 34 10.

  (* Definition of function [sum_upto_n]. *)
  Definition impl_sum_upto_n : function := {|
    f_args := [
      ("n", it_layout u32)
    ];
    f_local_vars := [
      ("i", it_layout u32);
      ("sum", it_layout u32)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        "sum" <-{ IntOp u32 }
          LocInfoE loc_27 (UnOp (CastOp $ IntOp u32) (IntOp i32) (LocInfoE loc_27 (i2v 0 i32))) ;
        "i" <-{ IntOp u32 }
          LocInfoE loc_24 (UnOp (CastOp $ IntOp u32) (IntOp i32) (LocInfoE loc_24 (i2v 1 i32))) ;
        locinfo: loc_4 ;
        Goto "#1"
      ]> $
      <[ "#1" :=
        locinfo: loc_19 ;
        if{IntOp i32, None}: LocInfoE loc_19 ((LocInfoE loc_20 (use{IntOp u32} (LocInfoE loc_21 ("i")))) ≤{IntOp u32, IntOp u32, i32} (LocInfoE loc_22 (use{IntOp u32} (LocInfoE loc_23 ("n")))))
        then
        locinfo: loc_9 ;
          Goto "#2"
        else
        locinfo: loc_5 ;
          Goto "#3"
      ]> $
      <[ "#2" :=
        locinfo: loc_9 ;
        LocInfoE loc_13 ("sum") <-{ IntOp u32 }
          LocInfoE loc_14 ((LocInfoE loc_15 (use{IntOp u32} (LocInfoE loc_16 ("sum")))) +{IntOp u32, IntOp u32} (LocInfoE loc_17 (use{IntOp u32} (LocInfoE loc_18 ("i"))))) ;
        locinfo: loc_10 ;
        Goto "__cerb_continue0"
      ]> $
      <[ "#3" :=
        locinfo: loc_5 ;
        Return (LocInfoE loc_6 (use{IntOp u32} (LocInfoE loc_7 ("sum"))))
      ]> $
      <[ "__cerb_continue0" :=
        locinfo: loc_11 ;
        LocInfoE loc_12 ("i") <-{ IntOp u32 }
          LocInfoE loc_11 ((LocInfoE loc_11 (use{IntOp u32} (LocInfoE loc_12 ("i")))) +{IntOp u32, IntOp u32} (LocInfoE loc_11 (i2v 1 u32))) ;
        locinfo: loc_4 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.

  (* Definition of function [main]. *)
  Definition impl_main : function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_32 ;
        Return (LocInfoE loc_33 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
