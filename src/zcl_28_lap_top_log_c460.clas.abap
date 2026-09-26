CLASS zcl_28_lap_top_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: keyboard TYPE REF TO zcl_27_keyboard_log_c460.

    METHODS:
      constructor IMPORTING io_keyboard TYPE REF TO zcl_27_keyboard_log_c460.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_28_lap_top_log_c460 IMPLEMENTATION.

  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
