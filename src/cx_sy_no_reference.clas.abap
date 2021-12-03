CLASS cx_sy_no_reference DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_no_reference TYPE c LENGTH 32 VALUE '005056AB004F1EE4B0FDAC64E6969304' ##NO_TEXT.
  CONSTANTS no_object_reference TYPE c LENGTH 32 VALUE '005056AB004F1EE4B0FDAC64E696B304' ##NO_TEXT.
  DATA typename TYPE string READ-ONLY.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !typename TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_no_reference IMPLEMENTATION.
ENDCLASS.