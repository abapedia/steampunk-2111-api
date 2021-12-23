INTERFACE if_xco_ao_s_p_returning PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name   TYPE sxco_ao_subcomponent_name READ-ONLY,

    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_ao_s_p_returning_contnt.
ENDINTERFACE.