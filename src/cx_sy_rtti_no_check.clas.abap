CLASS cx_sy_rtti_no_check DEFINITION
  PUBLIC
  INHERITING FROM cx_no_check
  ABSTRACT
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_rtti_no_check TYPE c LENGTH 32 VALUE 'E41F13F734061EE4A7F7AFC20638282F' ##NO_TEXT.
  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_rtti_no_check IMPLEMENTATION.
ENDCLASS.