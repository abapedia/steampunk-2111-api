INTERFACE if_xco_ad_data_type_reference PUBLIC.
  INTERFACES:
    if_xco_printable,

    if_xco_dtel_data_type,
    if_xco_str_component_type,
    if_xco_aps_component_type,
    if_xco_ttyp_row_type.

  DATA:
    data_type TYPE REF TO if_xco_ad_data_type READ-ONLY.
ENDINTERFACE.