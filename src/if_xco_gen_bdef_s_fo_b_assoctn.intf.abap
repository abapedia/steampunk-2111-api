INTERFACE if_xco_gen_bdef_s_fo_b_assoctn PUBLIC.
  TYPES:
    tv_assoc_abbreviation TYPE c LENGTH 11.

  DATA:
    name TYPE sxco_cds_association_name READ-ONLY.

  METHODS:
    set_abbreviation_name
      IMPORTING
        iv_abbreviation_name TYPE tv_assoc_abbreviation
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,

    set_create_enabled
      IMPORTING
        iv_create_enabled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)      TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,

    set_draft_enabled
      IMPORTING
        iv_draft_enabled TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn,

    set_use
      IMPORTING
        iv_use       TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_assoctn.
ENDINTERFACE.