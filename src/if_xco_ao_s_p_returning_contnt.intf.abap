INTERFACE if_xco_ao_s_p_returning_contnt PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      typing_method     TYPE REF TO cl_xco_ao_typing_method,
      typing_definition TYPE REF TO if_xco_ao_typing_definition,
    END OF ts_content.

  DATA:
    returning_parameter TYPE REF TO if_xco_ao_s_p_returning READ-ONLY.

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

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.