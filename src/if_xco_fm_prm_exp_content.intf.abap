INTERFACE if_xco_fm_prm_exp_content PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 79,

    BEGIN OF ts_content,
      short_text              TYPE tv_short_text,
      pass_by_value_indicator TYPE abap_bool,
      type                    TYPE REF TO if_xco_fm_prm_exp_type,
    END OF ts_content.

  DATA:
    exporting_parameter TYPE REF TO if_xco_fm_prm_exporting READ-ONLY.

  METHODS:
    get_short_text
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,

    get_pass_by_value_indicator
      RETURNING
        VALUE(rv_pass_by_value_indicator) TYPE abap_bool,

    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_fm_prm_exp_type,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.