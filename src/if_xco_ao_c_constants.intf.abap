INTERFACE if_xco_ao_c_constants PUBLIC.
  DATA:
    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_constants) TYPE sxco_t_ao_c_constants.
ENDINTERFACE.