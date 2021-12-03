CLASS cl_web_http_utility DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-METHODS decode_utf8
      IMPORTING
      !encoded TYPE xstring
      RETURNING
      VALUE(unencoded) TYPE string
      RAISING
      cx_web_http_conversion_failed.
    CLASS-METHODS encode_utf8
      IMPORTING
      !unencoded TYPE string
      RETURNING
      VALUE(encoded) TYPE xstring
      RAISING
      cx_web_http_conversion_failed.
    CLASS-METHODS encode_x_base64
      IMPORTING
      !unencoded TYPE xstring
      RETURNING
      VALUE(encoded) TYPE string.
    CLASS-METHODS decode_x_base64
      IMPORTING
      !encoded TYPE string
      RETURNING
      VALUE(decoded) TYPE xstring.
    CLASS-METHODS decode_base64
      IMPORTING
      !encoded TYPE string
      RETURNING
      VALUE(decoded) TYPE string.
    CLASS-METHODS encode_base64
      IMPORTING
      !unencoded TYPE string
      RETURNING
      VALUE(encoded) TYPE string.
    CLASS-METHODS escape_url
      IMPORTING
      !unescaped TYPE string
      !options TYPE i OPTIONAL
      RETURNING
      VALUE(escaped) TYPE string.
    CLASS-METHODS get_location
      IMPORTING
      VALUE(protocol) TYPE csequence OPTIONAL
      VALUE(application) TYPE csequence OPTIONAL
      VALUE(for_domain) TYPE csequence OPTIONAL
      VALUE(use_ticket_protocol) TYPE abap_bool DEFAULT abap_true
      EXPORTING
      !host TYPE string
      !port TYPE string
      !out_protocol TYPE string
      !vh_switch TYPE abap_bool
      RETURNING
      VALUE(url_part) TYPE string.
    CLASS-METHODS server_cache_upload
      IMPORTING
      !url TYPE string
      !response TYPE REF TO if_web_http_response
      !scope TYPE i OPTIONAL
      VALUE(virtual_host) TYPE i OPTIONAL.
    CLASS-METHODS unescape_url
      IMPORTING
      !escaped TYPE string
      !options TYPE i OPTIONAL
      RETURNING
      VALUE(unescaped) TYPE string.
ENDCLASS.

CLASS cl_web_http_utility IMPLEMENTATION.
ENDCLASS.