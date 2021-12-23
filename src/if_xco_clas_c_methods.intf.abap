INTERFACE if_xco_clas_c_methods PUBLIC.
  DATA:
    class TYPE REF TO if_xco_ao_class READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_methods) TYPE sxco_t_clas_c_methods.
ENDINTERFACE.