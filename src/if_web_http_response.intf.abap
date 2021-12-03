INTERFACE if_web_http_response
  PUBLIC.

  TYPES:
    BEGIN OF http_status,
      code   TYPE i,
      reason TYPE string,
    END OF http_status.
  METHODS set_text
    IMPORTING
      !i_text TYPE string
      !i_offset TYPE i DEFAULT 0
      !i_length TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_text
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.
  METHODS set_binary
    IMPORTING
      !i_data TYPE xstring
      !i_offset TYPE i DEFAULT 0
      !i_length TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS set_header_field
    IMPORTING
      !i_name TYPE string
      !i_value TYPE string
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_binary
    IMPORTING
      !i_offset TYPE i DEFAULT 0
      !i_length TYPE i DEFAULT -1
    RETURNING
      VALUE(r_value) TYPE xstring
    RAISING
      cx_web_message_error.
  METHODS set_header_fields
    IMPORTING
      !i_fields TYPE if_web_http_request=>name_value_pairs
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_header_field
    IMPORTING
      !i_name TYPE string
    RETURNING
      VALUE(r_value) TYPE string
    RAISING
      cx_web_message_error.
  METHODS get_header_fields
    RETURNING
      VALUE(r_value) TYPE if_web_http_request=>name_value_pairs
    RAISING
      cx_web_message_error.
  METHODS set_status
    IMPORTING
      !i_code TYPE i
      !i_reason TYPE string OPTIONAL
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_status
    RETURNING
      VALUE(r_value) TYPE http_status
    RAISING
      cx_web_message_error.
  METHODS set_cookie
    IMPORTING
      !i_name TYPE string
      !i_path TYPE string DEFAULT ``
      !i_value TYPE string
      !i_domain TYPE string DEFAULT ``
      !i_expires TYPE string DEFAULT ``
      !i_secure TYPE i DEFAULT 0
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_cookie
    IMPORTING
      !i_name TYPE string
      !i_path TYPE string DEFAULT ``
    RETURNING
      VALUE(r_value) TYPE if_web_http_request=>cookie
    RAISING
      cx_web_message_error.
  METHODS get_cookies
    RETURNING
      VALUE(r_value) TYPE if_web_http_request=>cookies
    RAISING
      cx_web_message_error.
  METHODS to_xstring
    RETURNING
      VALUE(data) TYPE xstring.
  METHODS add_multipart
    IMPORTING
      !suppress_content_length TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS get_multipart
    IMPORTING
      !index TYPE i
    RETURNING
      VALUE(r_value) TYPE REF TO if_web_http_response
    RAISING
      cx_web_message_error.
  METHODS num_multiparts
    RETURNING
      VALUE(num) TYPE i
    EXCEPTIONS
      cx_web_message_error.
ENDINTERFACE.