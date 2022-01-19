
CLASS /ui2/cl_json DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      json TYPE string,
      BEGIN OF name_mapping,
        abap TYPE abap_compname,
        json TYPE string,
      END OF name_mapping,
      name_mappings    TYPE HASHED TABLE OF name_mapping WITH UNIQUE KEY abap,
      ref_tab          TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY,
      bool             TYPE char1,
      tribool          TYPE char1,
      pretty_name_mode TYPE char1.

    CONSTANTS:
      BEGIN OF pretty_mode,
        none          TYPE char1  VALUE ``,
        low_case      TYPE char1  VALUE `L`,
        camel_case    TYPE char1  VALUE `X`,
        extended      TYPE char1  VALUE `Y`,
        user          TYPE char1  VALUE `U`,
        user_low_case TYPE char1  VALUE `C`,
      END OF  pretty_mode,
      BEGIN OF c_bool,
        true  TYPE bool  VALUE `X`,
        false TYPE bool  VALUE ``,
      END OF  c_bool,
      BEGIN OF c_tribool,
        true      TYPE tribool  VALUE c_bool-true,
        false     TYPE tribool  VALUE `-`,
        undefined TYPE tribool  VALUE ``,
      END OF  c_tribool.

    CLASS-DATA sv_white_space TYPE string READ-ONLY.
    CONSTANTS mc_key_separator TYPE string VALUE `-`. "#EC NOTEXT
    CLASS-DATA mc_bool_types TYPE string READ-ONLY VALUE `\TYPE-POOL=ABAP\TYPE=ABAP_BOOL\TYPE=BOOLEAN\TYPE=BOOLE_D\TYPE=XFELD`. "#EC NOTEXT
    CLASS-DATA mc_bool_3state TYPE string READ-ONLY VALUE `\TYPE=BOOLEAN`. "#EC NOTEXT
    CONSTANTS version TYPE i VALUE 15. "#EC NOTEXT
    CLASS-DATA mc_json_type TYPE string READ-ONLY.

    CLASS-METHODS string_to_xstring
      IMPORTING
        !in        TYPE string
      CHANGING
        VALUE(out) TYPE any.
    CLASS-METHODS xstring_to_string
      IMPORTING
        !in        TYPE any
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS raw_to_string
      IMPORTING
        !iv_xstring      TYPE xstring
        !iv_encoding     TYPE abap_encoding OPTIONAL
      RETURNING
        VALUE(rv_string) TYPE string.
    CLASS-METHODS string_to_raw
      IMPORTING
        !iv_string        TYPE string
        !iv_encoding      TYPE abap_encoding OPTIONAL
      RETURNING
        VALUE(rv_xstring) TYPE xstring.
    CLASS-METHODS dump
      IMPORTING
        !data          TYPE data
        !compress      TYPE bool DEFAULT c_bool-false
        !type_descr    TYPE REF TO cl_abap_typedescr OPTIONAL
        !pretty_name   TYPE pretty_name_mode DEFAULT pretty_mode-none
        !assoc_arrays  TYPE bool DEFAULT c_bool-false
        !ts_as_iso8601 TYPE bool DEFAULT c_bool-false
      RETURNING
        VALUE(r_json)  TYPE json.
    CLASS-METHODS deserialize
      IMPORTING
        !json             TYPE json OPTIONAL
        !jsonx            TYPE xstring OPTIONAL
        !pretty_name      TYPE pretty_name_mode DEFAULT pretty_mode-none
        !assoc_arrays     TYPE bool DEFAULT c_bool-false
        !assoc_arrays_opt TYPE bool DEFAULT c_bool-false
        !name_mappings    TYPE name_mappings OPTIONAL
        !conversion_exits TYPE bool DEFAULT c_bool-false
      CHANGING
        !data             TYPE data.
    CLASS-METHODS serialize
      IMPORTING
        !data             TYPE data
        !compress         TYPE bool DEFAULT c_bool-false
        !name             TYPE string OPTIONAL
        !pretty_name      TYPE pretty_name_mode DEFAULT pretty_mode-none
        !type_descr       TYPE REF TO cl_abap_typedescr OPTIONAL
        !assoc_arrays     TYPE bool DEFAULT c_bool-false
        !ts_as_iso8601    TYPE bool DEFAULT c_bool-false
        !expand_includes  TYPE bool DEFAULT c_bool-true
        !assoc_arrays_opt TYPE bool DEFAULT c_bool-false
        !numc_as_string   TYPE bool DEFAULT c_bool-false
        !name_mappings    TYPE name_mappings OPTIONAL
        !conversion_exits TYPE bool DEFAULT c_bool-false
      RETURNING
        VALUE(r_json)     TYPE json.
    METHODS deserialize_int
      IMPORTING
        !json  TYPE json OPTIONAL
        !jsonx TYPE xstring OPTIONAL
      CHANGING
        !data  TYPE data
      RAISING
        cx_sy_move_cast_error.
    CLASS-METHODS generate
      IMPORTING
        !json          TYPE json
        !pretty_name   TYPE pretty_name_mode DEFAULT pretty_mode-none
        !name_mappings TYPE name_mappings OPTIONAL
      RETURNING
        VALUE(rr_data) TYPE REF TO data.
    METHODS serialize_int
      IMPORTING
        !data         TYPE data
        !name         TYPE string OPTIONAL
        !type_descr   TYPE REF TO cl_abap_typedescr OPTIONAL
      RETURNING
        VALUE(r_json) TYPE json.
    METHODS generate_int
      IMPORTING
        !json          TYPE json
        VALUE(length)  TYPE i OPTIONAL
      RETURNING
        VALUE(rr_data) TYPE REF TO data
      RAISING
        cx_sy_move_cast_error.
    METHODS constructor
      IMPORTING
        !compress         TYPE bool DEFAULT c_bool-false
        !pretty_name      TYPE pretty_name_mode DEFAULT pretty_mode-none
        !assoc_arrays     TYPE bool DEFAULT c_bool-false
        !ts_as_iso8601    TYPE bool DEFAULT c_bool-false
        !expand_includes  TYPE bool DEFAULT c_bool-true
        !assoc_arrays_opt TYPE bool DEFAULT c_bool-false
        !strict_mode      TYPE bool DEFAULT c_bool-false
        !numc_as_string   TYPE bool DEFAULT c_bool-false
        !name_mappings    TYPE name_mappings OPTIONAL
        !conversion_exits TYPE bool DEFAULT c_bool-false.
    CLASS-METHODS bool_to_tribool
      IMPORTING
        !iv_bool          TYPE bool
      RETURNING
        VALUE(rv_tribool) TYPE tribool.
    CLASS-METHODS tribool_to_bool
      IMPORTING
        !iv_tribool    TYPE tribool
      RETURNING
        VALUE(rv_bool) TYPE bool.
  PROTECTED SECTION.

    TYPES:
      BEGIN OF t_s_symbol,
        header       TYPE string,
        name         TYPE string,
        type         TYPE REF TO cl_abap_datadescr,
        value        TYPE REF TO data,
        convexit_out TYPE string,
        convexit_in  TYPE string,
        compressable TYPE abap_bool,
        read_only    TYPE abap_bool,
      END OF t_s_symbol.
    TYPES:
      t_t_symbol TYPE STANDARD TABLE OF t_s_symbol WITH DEFAULT KEY.
    TYPES:
      BEGIN OF t_s_field_cache,
        name         TYPE string,
        type         TYPE REF TO cl_abap_datadescr,
        convexit_out TYPE string,
        convexit_in  TYPE string,
        value        TYPE REF TO data,
      END OF t_s_field_cache.
    TYPES:
      t_t_field_cache TYPE HASHED TABLE OF t_s_field_cache WITH UNIQUE KEY name.
    TYPES:
      name_mappings_ex TYPE HASHED TABLE OF name_mapping WITH UNIQUE KEY json.

    DATA mv_compress TYPE bool.
    DATA mv_pretty_name TYPE pretty_name_mode.
    DATA mv_assoc_arrays TYPE bool.
    DATA mv_ts_as_iso8601 TYPE bool.
    DATA mt_name_mappings TYPE name_mappings.
    DATA mt_name_mappings_ex TYPE name_mappings_ex.
    DATA mv_expand_includes TYPE bool.
    DATA mv_assoc_arrays_opt TYPE bool.
    DATA mv_strict_mode TYPE bool.
    DATA mv_numc_as_string TYPE bool.
    DATA mv_conversion_exits TYPE bool.
    CLASS-DATA mc_name_symbols_map TYPE string VALUE ` _/_\_:_;_~_._,_-_+_=_>_<_|_(_)_[_]_{_}_@_+_*_?_!_&_$_#_%_^_'_§_` ##NO_TEXT.

    CLASS-METHODS unescape
      IMPORTING
        !escaped         TYPE string
      RETURNING
        VALUE(unescaped) TYPE string.
    CLASS-METHODS get_convexit_func
      IMPORTING
        !elem_descr    TYPE REF TO cl_abap_elemdescr
        !input         TYPE abap_bool OPTIONAL
      RETURNING
        VALUE(rv_func) TYPE string.
    METHODS dump_symbols
          FINAL
      IMPORTING
        !it_symbols   TYPE t_t_symbol
      RETURNING
        VALUE(r_json) TYPE json.
    METHODS get_symbols
          FINAL
      IMPORTING
        !type_descr      TYPE REF TO cl_abap_typedescr
        !data            TYPE REF TO data OPTIONAL
        !object          TYPE REF TO object OPTIONAL
        !include_aliases TYPE abap_bool DEFAULT abap_false
      RETURNING
        VALUE(result)    TYPE t_t_symbol.
    METHODS get_fields
          FINAL
      IMPORTING
        !type_descr      TYPE REF TO cl_abap_typedescr
        !data            TYPE REF TO data OPTIONAL
        !object          TYPE REF TO object OPTIONAL
      RETURNING
        VALUE(rt_fields) TYPE t_t_field_cache.
    METHODS dump_int
      IMPORTING
        !data         TYPE data
        !type_descr   TYPE REF TO cl_abap_typedescr OPTIONAL
        !convexit     TYPE string OPTIONAL
      RETURNING
        VALUE(r_json) TYPE json.
    METHODS is_compressable
      IMPORTING
        !type_descr        TYPE REF TO cl_abap_typedescr
        !name              TYPE csequence
      RETURNING
        VALUE(rv_compress) TYPE abap_bool.
    METHODS restore
      IMPORTING
        !json             TYPE json
        !length           TYPE i
        VALUE(type_descr) TYPE REF TO cl_abap_typedescr OPTIONAL
        !field_cache      TYPE t_t_field_cache OPTIONAL
      CHANGING
        !data             TYPE data OPTIONAL
        !offset           TYPE i DEFAULT 0
      RAISING
        cx_sy_move_cast_error.
    METHODS restore_type
      IMPORTING
        !json             TYPE json
        !length           TYPE i
        VALUE(type_descr) TYPE REF TO cl_abap_typedescr OPTIONAL
        !field_cache      TYPE t_t_field_cache OPTIONAL
        !convexit         TYPE string OPTIONAL
      CHANGING
        !data             TYPE data OPTIONAL
        !offset           TYPE i DEFAULT 0
      RAISING
        cx_sy_move_cast_error.
    METHODS dump_type
      IMPORTING
        !data         TYPE data
        !type_descr   TYPE REF TO cl_abap_elemdescr
        !convexit     TYPE string
      RETURNING
        VALUE(r_json) TYPE json.
    METHODS dump_type_ex
      IMPORTING
        !data         TYPE data
      RETURNING
        VALUE(r_json) TYPE json.
    METHODS pretty_name_ex
      IMPORTING
        !in        TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    METHODS generate_int_ex
          FINAL
      IMPORTING
        !json   TYPE json
        !length TYPE i
      CHANGING
        !data   TYPE data
        !offset TYPE i.
    METHODS pretty_name
      IMPORTING
        !in        TYPE csequence
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS escape
      IMPORTING
        !in        TYPE any
      RETURNING
        VALUE(out) TYPE string.
    CLASS-METHODS edm_datetime_to_ts
      IMPORTING
        !ticks        TYPE string
        !offset       TYPE string OPTIONAL
        !typekind     TYPE abap_typekind
      RETURNING
        VALUE(r_data) TYPE string.
ENDCLASS.

CLASS /ui2/cl_json IMPLEMENTATION.
ENDCLASS.