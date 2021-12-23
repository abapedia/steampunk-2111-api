INTERFACE if_xco_fm_prm_changing PUBLIC.
  INTERFACES:
    if_xco_fm_parameter.

  ALIASES:
    name FOR if_xco_fm_parameter~name,
    function_module FOR if_xco_fm_parameter~function_module,

    exists FOR if_xco_fm_parameter~exists.

  METHODS:
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_fm_prm_cha_content.
ENDINTERFACE.