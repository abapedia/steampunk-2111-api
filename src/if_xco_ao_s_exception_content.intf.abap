INTERFACE if_xco_ao_s_exception_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description   TYPE sxco_ar_short_description,
      resuamble_indicator TYPE abap_bool,
    END OF ts_content.

  DATA:
    exception TYPE REF TO if_xco_ao_s_exception READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_resuamble_indicator
      RETURNING
        VALUE(rv_resuamble_indicator) TYPE abap_bool,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.