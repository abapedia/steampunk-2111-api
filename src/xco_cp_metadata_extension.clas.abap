CLASS xco_cp_metadata_extension DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      layer TYPE REF TO cl_xco_cp_me_layer_f READ-ONLY,

      text_attribute TYPE REF TO cl_xco_cp_me_text_attr_f READ-ONLY.

    CLASS-METHODS:
      class_constructor.
ENDCLASS.

CLASS xco_cp_metadata_extension IMPLEMENTATION.
ENDCLASS.