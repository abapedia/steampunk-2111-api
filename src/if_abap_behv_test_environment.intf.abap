INTERFACE if_abap_behv_test_environment
  PUBLIC.
  METHODS get_test_double
    IMPORTING
              root_name     TYPE abp_root_entity_name
    RETURNING VALUE(double) TYPE REF TO not_released.
  METHODS clear_doubles.
  METHODS destroy.

ENDINTERFACE.