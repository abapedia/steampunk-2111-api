INTERFACE if_xco_ao_s_p_changing_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description       TYPE sxco_ar_short_description,
      pass_by_value_indicator TYPE abap_bool,
      typing_method           TYPE REF TO cl_xco_ao_typing_method,
      typing_definition       TYPE REF TO if_xco_ao_typing_definition,
      optional_indicator      TYPE abap_bool,
      default_value           TYPE string,
    END OF ts_content.

  DATA:
    changing_parameter TYPE REF TO if_xco_ao_s_p_changing READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_pass_by_value_indicator
      RETURNING
        VALUE(rv_pass_by_value_indicator) TYPE abap_bool,

    get_typing_method
      RETURNING
        VALUE(ro_typing_method) TYPE REF TO cl_xco_ao_typing_method,

    get_typing_definition
      RETURNING
        VALUE(ro_typing_definition) TYPE REF TO if_xco_ao_typing_definition,

    get_optional_indicator
      RETURNING
        VALUE(rv_optional_indicator) TYPE abap_bool,

    get_default_value
      RETURNING
        VALUE(rv_default_value) TYPE string,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.