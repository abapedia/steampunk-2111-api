INTERFACE if_xco_ao_s_p_exportings PUBLIC.
  DATA:
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_exporting_parameters) TYPE sxco_t_ao_s_p_exportings.
ENDINTERFACE.