CLASS zcl_07_inhe_const_2_log_c460 DEFINITION INHERITING FROM zcl_06_inhe_const_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
     constructor
       IMPORTING
         iv_view_type type string
         iv_box type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_inhe_const_2_log_c460 IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).

    me->box = iv_box.

  ENDMETHOD.

ENDCLASS.
