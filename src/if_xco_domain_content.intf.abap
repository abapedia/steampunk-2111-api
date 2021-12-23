INTERFACE if_xco_domain_content PUBLIC.
  TYPES:
    tv_output_length   TYPE n LENGTH 6,
    tv_conversion_exit TYPE c LENGTH 5,

    BEGIN OF ts_output_characteristics,
      output_length      TYPE tv_output_length,
      conversion_routine TYPE tv_conversion_exit,
      case_sensitive     TYPE abap_bool,
      sign               TYPE abap_bool,
      am_pm_format       TYPE abap_bool,
      output_style       TYPE REF TO cl_xco_domain_output_style,
    END OF ts_output_characteristics,

    BEGIN OF ts_content,
      short_description      TYPE sxco_ar_short_description,
      format                 TYPE REF TO if_xco_domain_format,
      output_characteristics TYPE ts_output_characteristics,
      value_table            TYPE REF TO if_xco_database_table,
    END OF ts_content.

  DATA:
    domain     TYPE REF TO if_xco_domain READ-ONLY,

    read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_format
      RETURNING
        VALUE(ro_format) TYPE REF TO if_xco_domain_format,

    get_output_characteristics
      RETURNING
        VALUE(rs_output_characteristics) TYPE ts_output_characteristics,

    get_value_table
      RETURNING
        VALUE(ro_value_table) TYPE REF TO if_xco_database_table,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.