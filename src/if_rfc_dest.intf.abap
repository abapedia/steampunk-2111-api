INTERFACE if_rfc_dest
  PUBLIC.

  METHODS get_destination_name
    RETURNING
      VALUE(r_dest_name) TYPE rfcdest
    RAISING
      cx_rfc_dest_provider_error.
ENDINTERFACE.