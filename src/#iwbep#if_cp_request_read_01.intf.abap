INTERFACE /iwbep/if_cp_request_read_01
  PUBLIC.

  INTERFACES /iwbep/if_cp_request_batch_op.
  METHODS check_execution
    RETURNING
      VALUE(ro_request) TYPE REF TO /iwbep/if_cp_request_read_01
    RAISING /iwbep/cx_gateway.
  METHODS create_expand_node
    RETURNING
      VALUE(ro_expand_node) TYPE REF TO /iwbep/if_cp_expand_node
    RAISING
      /iwbep/cx_gateway.
  METHODS execute
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_01
    RAISING /iwbep/cx_gateway.
  METHODS get_response
    RETURNING
      VALUE(ro_response) TYPE REF TO /iwbep/if_cp_response_read_01
    RAISING /iwbep/cx_gateway.
  METHODS set_expand
    IMPORTING
      !io_expand_root_node TYPE REF TO /iwbep/if_cp_expand_node
    RETURNING
      VALUE(ro_request)    TYPE REF TO /iwbep/if_cp_request_read
    RAISING
      /iwbep/cx_gateway.
  METHODS set_select_properties
    IMPORTING
      !it_select_property TYPE /iwbep/if_cp_runtime_types=>ty_t_property_path
    RETURNING
      VALUE(ro_request)   TYPE REF TO /iwbep/if_cp_request_read_01
    RAISING
      /iwbep/cx_gateway.
ENDINTERFACE.