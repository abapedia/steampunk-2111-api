INTERFACE if_xco_fm_content PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 74,

    BEGIN OF ts_content,
      short_text  TYPE tv_short_text,
      source_code TYPE REF TO if_xco_fm_source_code,
    END OF ts_content.

  DATA:
    function_module TYPE REF TO if_xco_function_module READ-ONLY.

  METHODS:
    get_short_text
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,

    get_source_code
      RETURNING
        VALUE(ro_source_code) TYPE REF TO if_xco_fm_source_code,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.