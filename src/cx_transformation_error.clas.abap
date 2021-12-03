CLASS cx_transformation_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS cx_transformation_error TYPE c LENGTH 32 VALUE '94271640D1242652E10000000A114BF5'. "#EC NOTEXT

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_transformation_error IMPLEMENTATION.
ENDCLASS.