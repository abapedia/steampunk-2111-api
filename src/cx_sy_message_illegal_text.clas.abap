CLASS cx_sy_message_illegal_text DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_message_illegal_text TYPE c LENGTH 32
 VALUE '6F0F313FD90DB647E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS illegal_type TYPE c LENGTH 32
 VALUE '870F313FD90DB647E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS initial_ref TYPE c LENGTH 32
 VALUE 'BA0E313FD90DB747E10000000A114BF5'. "#EC NOTEXT

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_message_illegal_text IMPLEMENTATION.
ENDCLASS.