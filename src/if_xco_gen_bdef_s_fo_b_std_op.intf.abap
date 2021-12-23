INTERFACE if_xco_gen_bdef_s_fo_b_std_op PUBLIC.
  DATA:
    value TYPE REF TO cl_xco_bdef_standard_operation READ-ONLY.

  METHODS:
    set_internal
      IMPORTING
        iv_internal  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op,

    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op,

    set_augment
      IMPORTING
        iv_augment   TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op,

    set_precheck
      IMPORTING
        iv_precheck  TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_std_op.
ENDINTERFACE.