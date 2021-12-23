INTERFACE if_xco_intf_c_methods PUBLIC.
  DATA:
    interface TYPE REF TO if_xco_ao_interface READ-ONLY.

  METHODS:
    get
      RETURNING
        VALUE(rt_methods) TYPE sxco_t_intf_c_methods.
ENDINTERFACE.