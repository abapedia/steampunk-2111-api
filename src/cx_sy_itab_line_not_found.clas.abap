CLASS cx_sy_itab_line_not_found DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_itab_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_itab_line_not_found TYPE c LENGTH 32 VALUE 'E61F13F7B4071ED1B9A737CCF34D481F' ##NO_TEXT.
  CONSTANTS index_access TYPE c LENGTH 32 VALUE 'E61F13F7B4071ED1B9A75B2C4EA78821' ##NO_TEXT.
  CONSTANTS key_access TYPE c LENGTH 32 VALUE 'E61F13F7B4071ED1B9A75CD438968821' ##NO_TEXT.
  CONSTANTS free_key_access TYPE c LENGTH 32 VALUE '4635000000311EE5B1D392AE4164EE86' ##NO_TEXT.
  DATA index TYPE i VALUE 0 ##NO_TEXT.
  DATA key_name TYPE string.
  DATA key_comp_values TYPE string.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !index TYPE i DEFAULT 0
      !key_name TYPE string OPTIONAL
      !key_comp_values TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_itab_line_not_found IMPLEMENTATION.
ENDCLASS.