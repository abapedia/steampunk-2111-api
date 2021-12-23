INTERFACE if_xco_srvd_exposures PUBLIC.
  METHODS:
    get
      RETURNING
        VALUE(rt_exposures) TYPE sxco_t_srvd_exposures.
ENDINTERFACE.