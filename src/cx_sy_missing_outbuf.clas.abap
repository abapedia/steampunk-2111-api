CLASS cx_sy_missing_outbuf DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_sy_missing_outbuf TYPE c LENGTH 32
 VALUE 'DA8AC5F899E04F4A8B37BB80A842AF1C'. "#EC NOTEXT

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_missing_outbuf IMPLEMENTATION.
ENDCLASS.