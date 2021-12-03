CLASS cx_sy_conversion_codepage DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_conversion_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_conversion_codepage TYPE c LENGTH 32 VALUE '005056A207C81ED495A86D43568A4980' ##NO_TEXT.
  DATA source_extract TYPE xstring.
  DATA source_extract_text TYPE string.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !source_extract TYPE xstring OPTIONAL
      !source_extract_text TYPE string OPTIONAL.

  METHODS if_message~get_longtext
    REDEFINITION.
  METHODS if_message~get_text
    REDEFINITION.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_conversion_codepage IMPLEMENTATION.
ENDCLASS.