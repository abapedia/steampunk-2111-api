INTERFACE if_xco_ao_c_constant_content PUBLIC.
  TYPES:
    tv_value TYPE c LENGTH 132,

    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      typing_method     TYPE REF TO cl_xco_ao_typing_method,
      typing_definition TYPE REF TO if_xco_ao_typing_definition,
      value             TYPE tv_value,
    END OF ts_content.

  DATA:
    constant TYPE REF TO if_xco_ao_c_constant READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_typing_method
      RETURNING
        VALUE(ro_typing_method) TYPE REF TO cl_xco_ao_typing_method,

    get_typing_definition
      RETURNING
        VALUE(ro_typing_definition) TYPE REF TO if_xco_ao_typing_definition,

    get_value
      RETURNING
        VALUE(rv_value) TYPE tv_value,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.