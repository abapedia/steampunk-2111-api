INTERFACE if_xco_intf_c_method_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description        TYPE sxco_ar_short_description,
      default_ignore_indicator TYPE abap_bool,
      default_fail_indicator   TYPE abap_bool,
    END OF ts_content.

  DATA:
    method TYPE REF TO if_xco_intf_c_method READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_default_ignore_indicator
      RETURNING
        VALUE(rv_default_ignore_indicator) TYPE abap_bool,

    get_default_fail_indicator
      RETURNING
        VALUE(rv_default_fail_indicator) TYPE abap_bool,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.