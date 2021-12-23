INTERFACE if_xco_cp_std_current PUBLIC.
  METHODS:
    tenant
      RETURNING
        VALUE(ro_tenant) TYPE REF TO if_xco_cp_tenant.
ENDINTERFACE.