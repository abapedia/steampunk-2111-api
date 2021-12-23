INTERFACE if_xco_srvd_exposure_content PUBLIC.
  TYPES:
    tv_alias TYPE c LENGTH 30,

    BEGIN OF ts_content,
      alias      TYPE tv_alias,
      cds_entity TYPE REF TO if_xco_cds_entity,
    END OF ts_content.

  DATA:
    exposure TYPE REF TO if_xco_srvd_exposure READ-ONLY.

  METHODS:
    get_alias
      RETURNING
        VALUE(rv_alias) TYPE tv_alias,

    get_cds_entity
      RETURNING
        VALUE(ro_cds_entity) TYPE REF TO if_xco_cds_entity,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.