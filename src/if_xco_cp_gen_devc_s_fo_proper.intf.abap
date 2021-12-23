INTERFACE if_xco_cp_gen_devc_s_fo_proper PUBLIC.
  TYPES:
    tv_application_component TYPE c LENGTH 20,
    tv_super_package         TYPE c LENGTH 30,
    tv_software_component    TYPE c LENGTH 30.

  METHODS:
    set_application_component
      IMPORTING
        iv_application_component TYPE tv_application_component
      RETURNING
        VALUE(ro_me)             TYPE REF TO if_xco_cp_gen_devc_s_fo_proper,

    set_super_package
      IMPORTING
        iv_super_package TYPE tv_super_package
      RETURNING
        VALUE(ro_me)     TYPE REF TO if_xco_cp_gen_devc_s_fo_proper,

    set_software_component
      IMPORTING
        iv_software_component TYPE tv_software_component
      RETURNING
        VALUE(ro_me)          TYPE REF TO if_xco_cp_gen_devc_s_fo_proper.
ENDINTERFACE.