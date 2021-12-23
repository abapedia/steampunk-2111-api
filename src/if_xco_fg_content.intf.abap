INTERFACE if_xco_fg_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
    END OF ts_content.

  DATA:
    function_group TYPE REF TO if_xco_function_group READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.