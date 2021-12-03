CLASS cx_sy_create_object_error DEFINITION
  PUBLIC
  INHERITING FROM cx_sy_create_error
  FINAL
  CREATE PUBLIC.

PUBLIC SECTION.

  CONSTANTS abstract_class TYPE c LENGTH 32 VALUE 'E85DB739AB5CE919E10000000A11447B'. "#EC NOTEXT
  CONSTANTS cx_sy_create_object_error TYPE c LENGTH 32 VALUE 'D05DB739AB5CE919E10000000A11447B'. "#EC NOTEXT
  CONSTANTS unknown_class TYPE c LENGTH 32 VALUE 'DE5DB739AB5CE919E10000000A11447B'. "#EC NOTEXT
  CONSTANTS private_constructor TYPE c LENGTH 32 VALUE 'F25DB739AB5CE919E10000000A11447B'. "#EC NOTEXT
  CONSTANTS protected_constructor TYPE c LENGTH 32 VALUE 'FC5DB739AB5CE919E10000000A11447B'. "#EC NOTEXT
  CONSTANTS not_serializable TYPE c LENGTH 32 VALUE 'C68C453C1A8C1438E10000000A11447B'. "#EC NOTEXT
  CONSTANTS ref_type_conflict TYPE c LENGTH 32 VALUE 'E61F13F7B4071ED1B7F3DB4FB660C5C0'. "#EC NOTEXT
  DATA classname TYPE string READ-ONLY.

  METHODS constructor
    IMPORTING
      !textid LIKE textid OPTIONAL
      !previous LIKE previous OPTIONAL
      !classname TYPE string OPTIONAL.
PROTECTED SECTION.
ENDCLASS.

CLASS cx_sy_create_object_error IMPLEMENTATION.
ENDCLASS.