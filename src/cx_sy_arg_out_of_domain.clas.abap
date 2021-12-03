CLASS cx_sy_arg_out_of_domain DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_arithmetic_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_arg_out_of_domain TYPE c LENGTH 32
 VALUE '5F5DB739AB5CE919E10000000A11447B'.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(operation) TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_arg_out_of_domain IMPLEMENTATION.
ENDCLASS.