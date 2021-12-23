INTERFACE if_xco_cds_ann_target PUBLIC.
  METHODS:
    create_selection_builder
      IMPORTING
        io_class                    TYPE REF TO cl_xco_cds_ann_class
      RETURNING
        VALUE(ro_selection_builder) TYPE REF TO cl_xco_cds_ann_selection_bldr.
ENDINTERFACE.