CLASS xco_cp_tenant DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      url_type TYPE REF TO cl_xco_cp_ten_url_type_f READ-ONLY.

    CLASS-METHODS:
      class_constructor.
ENDCLASS.

CLASS xco_cp_tenant IMPLEMENTATION.
ENDCLASS.