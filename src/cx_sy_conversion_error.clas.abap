CLASS cx_sy_conversion_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  ABSTRACT
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_conversion_error TYPE c LENGTH 32 VALUE '7F5DB739AB5CE919E10000000A11447B'. "#EC NOTEXT

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_error IMPLEMENTATION.
ENDCLASS.