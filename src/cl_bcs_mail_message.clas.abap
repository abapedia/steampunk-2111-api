CLASS cl_bcs_mail_message DEFINITION

  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      ty_address TYPE c LENGTH 512,
      ty_subject TYPE c LENGTH 1024,
      ty_status  TYPE c,
      BEGIN OF ENUM ty_copy BASE TYPE bcs_msg_copy,
        to  VALUE IS INITIAL,
        cc  VALUE 'C',
        bcc VALUE 'B',
      END OF ENUM ty_copy,
      BEGIN OF tys_status,
        recipient TYPE ty_address,
        status    TYPE ty_status,
      END OF tys_status,
      tyt_status TYPE STANDARD TABLE OF tys_status,
      BEGIN OF tys_exception,
        exception TYPE REF TO cx_bcs_mail,
      END OF tys_exception,
      tyt_exceptions TYPE STANDARD TABLE OF tys_exception.

    CLASS-METHODS:
      create_instance
        RETURNING
          VALUE(ro_mail_message) TYPE REF TO cl_bcs_mail_message
        RAISING
          cx_bcs_mail.

    METHODS:
      add_recipient
        IMPORTING
          iv_address TYPE ty_address
          iv_copy    TYPE ty_copy DEFAULT to
        RAISING
          cx_bcs_mail,
      check
        EXPORTING
          et_exceptions    TYPE tyt_exceptions
        RETURNING
          VALUE(rv_all_ok) TYPE abap_bool,
      set_sender
        IMPORTING
          iv_address TYPE ty_address
        RAISING
          cx_bcs_mail,
      set_subject
        IMPORTING
          iv_subject TYPE ty_subject,
      send
        EXPORTING
          et_status      TYPE tyt_status
          ev_mail_status TYPE ty_status
        RAISING
          cx_bcs_mail,
      set_main
        IMPORTING
          io_main TYPE REF TO cl_bcs_mail_bodypart
        RAISING
          cx_bcs_mail,
      add_main_alternative
        IMPORTING
          io_alternative TYPE REF TO cl_bcs_mail_bodypart
        RAISING
          cx_bcs_mail,
      add_attachment
        IMPORTING
          io_attachment TYPE REF TO cl_bcs_mail_bodypart
        RAISING
          cx_bcs_mail.

ENDCLASS.

CLASS cl_bcs_mail_message IMPLEMENTATION.
ENDCLASS.