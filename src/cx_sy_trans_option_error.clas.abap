CLASS cx_sy_trans_option_error DEFINITION
  PUBLIC
  INHERITING FROM cx_transformation_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_sy_trans_option_error TYPE c LENGTH 32 VALUE '1444B23F7341CD43E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS illegal_option TYPE c LENGTH 32 VALUE 'E145B23F7341CD43E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS invalid_option TYPE c LENGTH 32 VALUE 'E645B23F7341CD43E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS illegal_value TYPE c LENGTH 32 VALUE '353AB23FD7219A09E10000000A114BF5'. "#EC NOTEXT
  CONSTANTS invalid_value TYPE c LENGTH 32 VALUE '3A3AB23FD7219A09E10000000A114BF5'. "#EC NOTEXT
  DATA option TYPE string READ-ONLY.
  DATA value TYPE string READ-ONLY.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !option TYPE string OPTIONAL
      !value TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_trans_option_error IMPLEMENTATION.
ENDCLASS.