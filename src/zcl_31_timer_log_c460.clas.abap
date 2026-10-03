CLASS zcl_31_timer_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    EVENTS time_out EXPORTING VALUE(ev_hour) TYPE zsyst_uzeit.

    DATA: user TYPE string.

    METHODS:
      constructor,

      increment_counter IMPORTING iv_conter TYPE i,
      check_limit.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: counter TYPE i.
ENDCLASS.



CLASS zcl_31_timer_log_c460 IMPLEMENTATION.

  METHOD check_limit.
    IF me->counter GE 5.
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time( ).
    ENDIF.
  ENDMETHOD.

  METHOD increment_counter.
    me->counter += iv_conter.  " me->counter = me->counter + iv_counter.
    me->check_limit( ).
  ENDMETHOD.

  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.

ENDCLASS.
