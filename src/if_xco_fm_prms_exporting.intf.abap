INTERFACE if_xco_fm_prms_exporting PUBLIC.
  INTERFACES:
    if_xco_fm_parameters.

  ALIASES:
    function_module FOR if_xco_fm_parameters~function_module,

    get_names FOR if_xco_fm_parameters~get_names.

  METHODS:
    get
      RETURNING
        VALUE(rt_exporting_parameters) TYPE sxco_t_fm_prms_exporting.
ENDINTERFACE.