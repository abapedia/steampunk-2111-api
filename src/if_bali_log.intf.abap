INTERFACE if_bali_log
  PUBLIC.
  TYPES ty_handle TYPE balloghndl.
  TYPES:
    BEGIN OF ty_item_entry,
      log_item_number TYPE balmnr,
      item            TYPE REF TO if_bali_item_getter,
    END OF ty_item_entry.
  TYPES:
    ty_item_table TYPE SORTED TABLE OF ty_item_entry WITH UNIQUE KEY log_item_number.
  TYPES ty_log_item_number TYPE balmnr.
  METHODS get_handle
    RETURNING
      VALUE(handle) TYPE ty_handle.
  METHODS get_header
    RETURNING
      VALUE(header) TYPE REF TO if_bali_header_getter
    RAISING
      cx_bali_runtime.
  METHODS set_header
    IMPORTING
      !header TYPE REF TO if_bali_header_setter
    RAISING
      cx_bali_runtime.
  METHODS add_item
    IMPORTING
      !item TYPE REF TO if_bali_item_setter
    RAISING
      cx_bali_runtime.
  METHODS cumulate_item
    IMPORTING
      !item TYPE REF TO if_bali_item_setter
    RAISING
      cx_bali_runtime.
  METHODS add_messages_from_bapirettab
    IMPORTING
      !message_table TYPE bapirettab
    RAISING
      cx_bali_runtime.
  METHODS get_item
    IMPORTING
      !log_item_number TYPE ty_log_item_number
    RETURNING
      VALUE(item) TYPE REF TO if_bali_item_getter
    RAISING
      cx_bali_runtime.
  METHODS get_all_items
    RETURNING
      VALUE(item_table) TYPE ty_item_table
    RAISING
      cx_bali_runtime.
ENDINTERFACE.