INTERFACE if_xco_gen_tabl_s_fo_field
  PUBLIC.

  INTERFACES if_xco_tab_psl_fkfa_scenario.

  DATA name TYPE sxco_ad_field_name READ-ONLY.
  DATA currency_quantity TYPE REF TO if_xco_gen_tabl_s_fo_curr_quan READ-ONLY.

  METHODS create_foreign_key
    RETURNING
      VALUE(ro_foreign_key) TYPE REF TO if_xco_gen_tabl_s_fo_fkey.
  METHODS get_foreign_key
    RETURNING
      VALUE(ro_foreign_key) TYPE REF TO if_xco_gen_tabl_s_fo_fkey.
  METHODS delete_foreign_key.
  METHODS create_search_help
    RETURNING
      VALUE(ro_search_help) TYPE REF TO if_xco_gen_tabl_s_fo_shelp.
  METHODS get_search_help
    RETURNING
      VALUE(ro_search_help) TYPE REF TO if_xco_gen_tabl_s_fo_shelp.
  METHODS delete_search_help.
ENDINTERFACE.