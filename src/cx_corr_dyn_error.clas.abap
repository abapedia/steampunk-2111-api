CLASS cx_corr_dyn_error DEFINITION
  PUBLIC
  INHERITING FROM cx_dynamic_check
  CREATE PROTECTED.

  PUBLIC SECTION.

    CONSTANTS malformed_map TYPE c LENGTH 32 VALUE '4635000000311ED48BA4014936A71636' ##NO_TEXT.
    CONSTANTS invalid_src_type TYPE c LENGTH 32 VALUE '4635000000311ED48BA402FF341B7636' ##NO_TEXT.
    CONSTANTS invalid_dst_type TYPE c LENGTH 32 VALUE '4635000000311ED48BA402FF341B9636' ##NO_TEXT.

    METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_corr_dyn_error IMPLEMENTATION.
ENDCLASS.