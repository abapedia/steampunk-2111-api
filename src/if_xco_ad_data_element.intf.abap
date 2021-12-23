INTERFACE if_xco_ad_data_element PUBLIC.
  INTERFACES:
    if_xco_ad_data_type,

    if_xco_dbt_field_type,
    if_xco_gtt_field_type,

    if_xco_gen_ddls_param_dtype,
    if_xco_gen_ddls_field_type,
    if_xco_ddl_expr_cast_dtype,

    if_xco_cts_changeable.

  ALIASES:
    name FOR if_xco_ad_object~name,

    exists FOR if_xco_ad_object~exists,
    get_state FOR if_xco_ad_object~get_state,
    check_syntax FOR if_xco_ad_object~check_syntax.

  METHODS:
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,
    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,
    content
      IMPORTING
        io_read_state     TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_dtel_content.
ENDINTERFACE.