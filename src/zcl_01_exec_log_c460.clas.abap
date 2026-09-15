CLASS zcl_01_exec_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_log_c460 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    out->write( 'Hola Logali' ).

    DATA(lo_inst) = NEW zcl_02_basics_log_c460( ).

*    DATA: lo_inst2 TYPE REF TO zcl_02_basics_log_c460.
*
*    CREATE OBJECT lo_inst2.

    lo_inst->set_attr(
      iv_name    = 'Juan'
      iv_address = 'Gladiolas N1' ).

    lo_inst->get_attr(
      IMPORTING
        ev_name    = data(lv_name)
        ev_address = data(lv_addr) ).

    out->write( |{ lv_name }-{ lv_addr }| ).

    zcl_02_basics_log_c460=>set_name( 'Pedro' ).

    zcl_02_basics_log_c460=>get_name(
      IMPORTING
        ev_name = lv_name ).

     out->write( lv_name ).


     out->write( lo_inst->get_phone( '5566-7788-99' ) ).























  ENDMETHOD.

ENDCLASS.
