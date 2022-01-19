CLASS cl_xco_cds_ann_class DEFINITION PUBLIC ABSTRACT CREATE PRIVATE.
  PUBLIC SECTION.
    METHODS:
      of FINAL
        IMPORTING
          io_target             TYPE REF TO if_xco_cds_ann_target
        RETURNING
          VALUE(ro_annotations) TYPE REF TO if_xco_cds_annotations.

  PROTECTED SECTION.
    DATA:
      mo_property_selection TYPE REF TO not_released.

    METHODS:
      constructor
        IMPORTING
          io_property_selection TYPE REF TO not_released,

      read_entity_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          io_annotation_service        TYPE REF TO not_released
        RETURNING
          VALUE(rt_entity_annotations) TYPE not_released_ttyp,

      filter_entity_annotations ABSTRACT
        IMPORTING
          it_annotations               TYPE not_released
        RETURNING
          VALUE(rt_entity_annotations) TYPE not_released_ttyp,

      read_parameter_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          iv_parameter_name TYPE tabname
          io_annotation_service           TYPE REF TO not_released
        RETURNING
          VALUE(rt_parameter_annotations) TYPE not_released_ttyp,

      filter_parameter_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          it_annotations                  TYPE not_released
        RETURNING
          VALUE(rt_parameter_annotations) TYPE not_released_ttyp,

      read_element_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          iv_parameter_name TYPE text256
          io_annotation_service         TYPE REF TO not_released
        RETURNING
          VALUE(rt_element_annotations) TYPE not_released_ttyp,

      filter_element_annotations ABSTRACT
        IMPORTING
          iv_entity_name TYPE tabname
          it_annotations                TYPE not_released
        RETURNING
          VALUE(rt_element_annotations) TYPE not_released_ttyp.
ENDCLASS.

CLASS cl_xco_cds_ann_class IMPLEMENTATION.
ENDCLASS.