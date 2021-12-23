CLASS cl_xco_cts_change_context DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_xco_cts_change_scenario
      FINAL METHODS get_context.

    METHODS get_transport
      ABSTRACT
      RETURNING
      VALUE(rv_transport) TYPE sxco_transport.
    METHODS get_package_check
      ABSTRACT
      IMPORTING
      !io_package TYPE REF TO if_xco_package
      RETURNING
      VALUE(ro_package_check) TYPE REF TO if_xco_dp_check.
    METHODS add_change
      FINAL
      IMPORTING
      !io_change_carrier TYPE REF TO if_xco_cts_change_carrier.
    METHODS is_equal_to
      ABSTRACT
      IMPORTING
      !io_change_context TYPE REF TO cl_xco_cts_change_context
      RETURNING
      VALUE(rv_is_equal_to) TYPE abap_bool.
  PROTECTED SECTION.
    DATA:
      mo_tool_set TYPE REF TO not_released.

    METHODS:
      constructor
        IMPORTING
          io_tool_set TYPE REF TO not_released,

      include_change ABSTRACT
        IMPORTING
          io_change TYPE REF TO cl_xco_cts_change,

      check_change FINAL
        IMPORTING
          io_change        TYPE REF TO cl_xco_cts_change
        RETURNING
          VALUE(rs_result) TYPE not_released,

      insert_change FINAL
        IMPORTING
          io_change TYPE REF TO cl_xco_cts_change.
ENDCLASS.

CLASS cl_xco_cts_change_context IMPLEMENTATION.
ENDCLASS.