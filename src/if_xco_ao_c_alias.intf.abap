INTERFACE if_xco_ao_c_alias PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name   TYPE sxco_ao_component_name READ-ONLY,

    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_ao_c_alias_content.
ENDINTERFACE.