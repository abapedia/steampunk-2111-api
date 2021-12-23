INTERFACE if_xco_ao_s_p_returnings PUBLIC.
  DATA:
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_returning_parameters) TYPE sxco_t_ao_s_p_returnings.
ENDINTERFACE.