CLASS mbc_cp_api DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.

    CLASS-METHODS:
      business_configuration
        IMPORTING
          iv_namespace                     TYPE if_mbc_cp_api_business_config=>ty_namespace
          iv_identifier                    TYPE if_mbc_cp_api_business_config=>ty_identifier
        RETURNING
          VALUE(ro_business_configuration) TYPE REF TO if_mbc_cp_api_business_config,
      business_configuration_api
        IMPORTING
          iv_technical_id                  TYPE if_mbc_cp_api_business_config=>ty_technical_id
        RETURNING
          VALUE(ro_business_configuration) TYPE REF TO if_mbc_cp_api_business_config,
      rap_table_cts
        IMPORTING table_entity_relations TYPE if_mbc_cp_rap_table_cts=>table_entity_relations
        RETURNING VALUE(result) TYPE REF TO if_mbc_cp_rap_table_cts.

ENDCLASS.

CLASS mbc_cp_api IMPLEMENTATION.
ENDCLASS.