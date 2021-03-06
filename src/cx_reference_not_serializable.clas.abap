CLASS cx_reference_not_serializable DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CONSTANTS cx_reference_not_serializable TYPE c LENGTH 32 VALUE '43FCA68A8ADD124DE10000000A1146E7'. "#EC NOTEXT
    CONSTANTS illegal_reference_type TYPE c LENGTH 32 VALUE '43FCA68B8ADD124DE10000000A1146E7'. "#EC NOTEXT
    CONSTANTS technical_reference_type TYPE c LENGTH 32 VALUE '43FCA68C8ADD124DE10000000A1146E7'. "#EC NOTEXT
    DATA reference TYPE REF TO data.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !reference TYPE REF TO data OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_reference_not_serializable IMPLEMENTATION.
ENDCLASS.