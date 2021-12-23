INTERFACE if_xco_fm_exception_content PUBLIC.
  TYPES:
    tv_short_text TYPE c LENGTH 79,

    BEGIN OF ts_content,
      short_text          TYPE tv_short_text,
      resumable_indicator TYPE abap_bool,
    END OF ts_content.

  DATA:
    exception TYPE REF TO if_xco_fm_exception READ-ONLY.

  METHODS:
    get_short_text
      RETURNING
        VALUE(rv_short_text) TYPE tv_short_text,

    get_resumable_indicator
      RETURNING
        VALUE(rv_resumable_indicator) TYPE abap_bool,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.