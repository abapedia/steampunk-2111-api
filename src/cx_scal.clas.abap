CLASS cx_scal DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS date_invalid TYPE c LENGTH 32 VALUE '005056AB5B8D1ED8AC82620DA4E639EA' ##NO_TEXT.
  CONSTANTS month_names_not_found TYPE c LENGTH 32 VALUE '005056AB5B8D1ED8AC8266D3B2AF7A0C' ##NO_TEXT.
  CONSTANTS input_parameter_invalid TYPE c LENGTH 32 VALUE '005056AB5B8D1EE8AC861CA4DEAEC6EB' ##NO_TEXT.
  CONSTANTS factory_calendar_not_found TYPE c LENGTH 32 VALUE '00505695007C1EE8AECFD22B938F7B82' ##NO_TEXT.
  CONSTANTS holiday_calendar_not_found TYPE c LENGTH 32 VALUE '005056AC62941ED8AF809E964AA7F737' ##NO_TEXT.
  CONSTANTS date_after_range TYPE c LENGTH 32 VALUE '00505695007C1EE8AFFA6F20039C5668' ##NO_TEXT.
  CONSTANTS date_before_range TYPE c LENGTH 32 VALUE '00505695007C1EE8AFFA6FF2359C7668' ##NO_TEXT.
  CONSTANTS calendar_buffer_problem TYPE c LENGTH 32 VALUE '00505695007C1EE8AFFA84B60FC2D6A7' ##NO_TEXT.
  CONSTANTS unit_missing TYPE c LENGTH 32 VALUE '005056A533E71ED8B095D40A23754183' ##NO_TEXT.
  CONSTANTS unit_conversion_error TYPE c LENGTH 32 VALUE '005056A533E71ED8B095D61F4BB0618C' ##NO_TEXT.
  CONSTANTS date_out_of_range TYPE c LENGTH 32 VALUE '005056AC62941ED8B4DAD99486E14176' ##NO_TEXT.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_scal IMPLEMENTATION.
ENDCLASS.