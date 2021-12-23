CLASS cl_xco_bco_text_attribute DEFINITION PUBLIC ABSTRACT
     CREATE PRIVATE.
  PUBLIC SECTION.
    ALIASES:
      value FOR if_xco_i18n_text_attribute~value.

    METHODS:
      create_text FINAL
        IMPORTING
          io_value       TYPE REF TO if_xco_text
        RETURNING
          VALUE(ro_text) TYPE REF TO cl_xco_bco_text.

  PROTECTED SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_value TYPE sxco_i18n_text_attribute,

      read ABSTRACT
        IMPORTING
          is_smbc_config_text TYPE not_released
        RETURNING
          VALUE(ro_value)     TYPE REF TO if_xco_text,

      write ABSTRACT
        IMPORTING
          io_value            TYPE REF TO if_xco_text
          is_smbc_config_text TYPE REF TO not_released.
ENDCLASS.

CLASS cl_xco_bco_text_attribute IMPLEMENTATION.
ENDCLASS.