INTERFACE if_xco_ao_c_class_datas PUBLIC.
  DATA:
    object TYPE REF TO if_xco_ao_object READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_class_datas) TYPE sxco_t_ao_c_class_datas.
ENDINTERFACE.