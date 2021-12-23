INTERFACE if_xco_ao_c_datas PUBLIC.
  DATA:
    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_datas) TYPE sxco_t_ao_c_datas.
ENDINTERFACE.