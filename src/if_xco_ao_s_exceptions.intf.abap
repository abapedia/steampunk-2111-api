INTERFACE if_xco_ao_s_exceptions PUBLIC.
  DATA:
    method TYPE REF TO if_xco_ao_c_method READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_exceptions) TYPE sxco_t_ao_s_exceptions.
ENDINTERFACE.