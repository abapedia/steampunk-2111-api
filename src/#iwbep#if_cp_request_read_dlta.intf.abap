INTERFACE /iwbep/if_cp_request_read_dlta
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_lst
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_lst
    RAISING /iwbep/cx_gateway.

ENDINTERFACE.