INTERFACE if_xco_fm_prm_cha_content PUBLIC.
  TYPES:
    tv_short_text    TYPE c LENGTH 79,
    tv_default_value TYPE c LENGTH 21,

    BEGIN OF ts_content,
      short_text              TYPE tv_short_text,
      pass_by_value_indicator TYPE abap_bool,
      type                    TYPE REF TO if_xco_fm_prm_cha_type,
      optional_indicator      TYPE abap_bool,
      default_value           TYPE tv_default_value,
    END OF ts_content.

  DATA:
    changing_parameter TYPE REF TO if_xco_fm_prm_changing READ-ONLY.

  METHODS:
    get_short_text
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,

    get_pass_by_value_indicator
      RETURNING
        VALUE(rv_pass_by_value_indicator) TYPE abap_bool,

    get_type
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_fm_prm_cha_type,

    get_optional_indicator
      RETURNING
        VALUE(rv_optional_indicator) TYPE abap_bool,

    get_default_value
      RETURNING
        VALUE(rv_default_value) TYPE tv_default_value,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.