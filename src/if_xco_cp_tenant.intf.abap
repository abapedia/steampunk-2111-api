INTERFACE if_xco_cp_tenant PUBLIC.
  TYPES:
    tv_id TYPE c LENGTH 18.

  METHODS:
    get_id
      RETURNING
        VALUE(rv_id) TYPE tv_id,
    get_guid
      RETURNING
        VALUE(ro_guid) TYPE REF TO if_xco_uuid,
    get_url
      IMPORTING
        io_type       TYPE REF TO cl_xco_ten_url_type
      RETURNING
        VALUE(ro_url) TYPE REF TO if_xco_cp_url.
ENDINTERFACE.