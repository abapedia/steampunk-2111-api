CLASS cx_dynamic_check DEFINITION
  PUBLIC
  INHERITING FROM cx_root
  ABSTRACT
  CREATE PUBLIC.

PUBLIC SECTION.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_dynamic_check IMPLEMENTATION.
ENDCLASS.