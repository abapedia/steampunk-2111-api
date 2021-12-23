INTERFACE if_xco_intf_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description TYPE sxco_ar_short_description,
      interfaces        TYPE sxco_t_ao_interfaces,
    END OF ts_content.

  DATA:
    interface TYPE REF TO if_xco_ao_interface READ-ONLY.

  METHODS:
    get_short_description
      RETURNING
        VALUE(rv_short_description) TYPE sxco_ar_short_description,

    get_interfaces
      RETURNING
        VALUE(rt_interfaces) TYPE sxco_t_ao_interfaces,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.