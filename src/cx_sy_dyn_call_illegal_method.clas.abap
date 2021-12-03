CLASS cx_sy_dyn_call_illegal_method DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_dyn_call_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS constructor_call TYPE c LENGTH 32
 VALUE '47A0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS method_not_implemented TYPE c LENGTH 32
 VALUE '53A0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS not_accessible TYPE c LENGTH 32
 VALUE '85A0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS no_class_method TYPE c LENGTH 32
 VALUE '59A0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS private_method TYPE c LENGTH 32
 VALUE '64A0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS protected_method TYPE c LENGTH 32
 VALUE '6FA0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT
  CONSTANTS unknown_method TYPE c LENGTH 32
 VALUE '4DA0CD3B8D9A4067E10000000A11447B'. "#EC NOTEXT

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      VALUE(classname) TYPE string OPTIONAL
      VALUE(methodname) TYPE string OPTIONAL
      VALUE(function) TYPE string OPTIONAL
      VALUE(form) TYPE string OPTIONAL
      VALUE(progname) TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_dyn_call_illegal_method IMPLEMENTATION.
ENDCLASS.