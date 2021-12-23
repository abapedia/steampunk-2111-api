INTERFACE if_xco_ao_interface PUBLIC.
  INTERFACES:
    if_xco_ao_object.

  ALIASES:
    name FOR if_xco_ao_object~name,

    check_syntax FOR if_xco_ao_object~check_syntax,
    exists FOR if_xco_ao_object~exists,
    type FOR if_xco_ao_object~type.

  DATA:
    component  TYPE REF TO if_xco_intf_component_factory READ-ONLY,

    components TYPE REF TO if_xco_intf_components_factory READ-ONLY.

  METHODS:
    set_api_state
      IMPORTING
        io_change_scenario TYPE REF TO if_xco_cts_change_scenario
        io_api_state       TYPE REF TO cl_xco_ars_api_state,

    get_api_state
      RETURNING
        VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_intf_content.
ENDINTERFACE.