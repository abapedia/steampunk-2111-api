CLASS cl_xco_cp_me_fld_text_attr_f DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    DATA endusertext_label TYPE REF TO cl_xco_me_fld_text_attribute READ-ONLY.
    DATA endusertext_quickinfo TYPE REF TO cl_xco_me_fld_text_attribute READ-ONLY.
    DATA consumption_dynamiclabel_label TYPE REF TO cl_xco_me_fld_text_attribute READ-ONLY.

    METHODS ui_facet_label
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_ui_facet_label) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS ui_fieldgroup_label
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_ui_fieldgroup_label) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS ui_fieldgroup_grouplabel
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_ui_fieldgroup_grouplabel) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS ui_identification_label
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_ui_identification_label) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS ui_lineitem_label
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_ui_lineitem_label) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS consumption_valuehelpdef_label
      IMPORTING
      !iv_index TYPE i
      RETURNING
      VALUE(ro_consumption_valuehelpdef_l) TYPE REF TO cl_xco_me_fld_text_attribute.
    METHODS for
      IMPORTING
      !iv_value TYPE sxco_i18n_text_attribute
      RETURNING
      VALUE(ro_text_attribute) TYPE REF TO cl_xco_me_fld_text_attribute.
ENDCLASS.

CLASS cl_xco_cp_me_fld_text_attr_f IMPLEMENTATION.
ENDCLASS.