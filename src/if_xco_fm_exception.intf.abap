INTERFACE if_xco_fm_exception PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name            TYPE sxco_fm_exception_name READ-ONLY,

    function_module TYPE REF TO if_xco_function_module READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fm_exception_content.
ENDINTERFACE.