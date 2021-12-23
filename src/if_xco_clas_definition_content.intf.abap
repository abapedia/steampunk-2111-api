INTERFACE if_xco_clas_definition_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      final_indicator    TYPE abap_bool,
      abstract_indicator TYPE abap_bool,
      superclass         TYPE REF TO if_xco_ao_class,
      visibility         TYPE REF TO cl_xco_ao_visibility,
      global_friends     TYPE sxco_t_ao_classes,
      for_behavior_of    TYPE REF TO if_xco_behavior_definition,
      interfaces         TYPE sxco_t_ao_interfaces,
    END OF ts_content.

  DATA:
    definition TYPE REF TO if_xco_clas_definition.

  METHODS:
    get_final_indicator
      RETURNING
        VALUE(rv_final_indicator) TYPE abap_bool,

    get_abstract_indicator
      RETURNING
        VALUE(rv_abstract_indicator) TYPE abap_bool,

    get_superclass
      RETURNING
        VALUE(ro_superclass) TYPE REF TO if_xco_ao_class,

    get_visibility
      RETURNING
        VALUE(ro_visibility) TYPE REF TO cl_xco_ao_visibility,

    get_global_friends
      RETURNING
        VALUE(rt_global_friends) TYPE sxco_t_ao_classes,

    get_for_behavior_of
      RETURNING
        VALUE(ro_for_behavior_of) TYPE REF TO if_xco_behavior_definition,

    get_interfaces
      RETURNING
        VALUE(rt_interfaces) TYPE sxco_t_ao_interfaces,

    get
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.