INTERFACE if_xco_fg_function_modules PUBLIC.
  METHODS:
    get_names
      RETURNING
        VALUE(rt_names) TYPE sxco_t_fm_names,

    get
      RETURNING
        VALUE(rt_function_modules) TYPE sxco_t_function_modules.
ENDINTERFACE.