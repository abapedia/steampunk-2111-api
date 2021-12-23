INTERFACE if_xco_srvd_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
    END OF ts_content.

  DATA:
    service_definition TYPE REF TO if_xco_service_definition READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.