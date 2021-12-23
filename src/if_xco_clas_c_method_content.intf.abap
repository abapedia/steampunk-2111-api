INTERFACE if_xco_clas_c_method_content PUBLIC.
  TYPES:
    BEGIN OF ts_amdp,
      for_table_function TYPE sxco_cds_object_name,
    END OF ts_amdp,

    BEGIN OF ts_content,
      short_description      TYPE sxco_ar_short_description,
      abstract_indicator     TYPE abap_bool,
      final_indicator        TYPE abap_bool,
      redefinition_indicator TYPE abap_bool,
      amdp                   TYPE ts_amdp,
    END OF ts_content.

  DATA:
    method TYPE REF TO if_xco_clas_c_method READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_abstract_indicator
      RETURNING
        VALUE(rv_abstract_indicator) TYPE abap_bool,

    get_final_indicator
      RETURNING
        VALUE(rv_final_indicator) TYPE abap_bool,

    get_redefinition_indicator
      RETURNING
        VALUE(rv_redefinition_indicator) TYPE abap_bool,

    get_amdp
      RETURNING
        VALUE(rs_amdp) TYPE ts_amdp,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.