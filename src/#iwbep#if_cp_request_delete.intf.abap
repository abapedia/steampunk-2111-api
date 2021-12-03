INTERFACE /iwbep/if_cp_request_delete
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING /iwbep/cx_gateway.
  METHODS execute
    RAISING /iwbep/cx_gateway.
  METHODS set_if_match
    IMPORTING
      !iv_etag          TYPE string
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_delete
    RAISING
      /iwbep/cx_gateway.
ENDINTERFACE.