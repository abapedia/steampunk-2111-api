INTERFACE if_xco_clas_i_method PUBLIC.
  INTERFACES:
    if_xco_printable.

  DATA:
    name           TYPE sxco_clas_method_name READ-ONLY,

    implementation TYPE REF TO if_xco_clas_implementation READ-ONLY.

  METHODS:
    content
      RETURNING
        VALUE(ro_content) TYPE REF TO if_xco_clas_i_method_content.
ENDINTERFACE.