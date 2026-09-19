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

*    DATA(lo_inst) = NEW zcl_02_basics_log_c460( ).

*    DATA: lo_inst2 TYPE REF TO zcl_02_basics_log_c460.
*
*    CREATE OBJECT lo_inst2.
*
*    lo_inst->set_attr(
*      iv_name    = 'Juan'
*      iv_address = 'Gladiolas N1' ).
*
*    lo_inst->get_attr(
*      IMPORTING
*        ev_name    = DATA(lv_name)
*        ev_address = DATA(lv_addr) ).
*
*    out->write( |{ lv_name }-{ lv_addr }| ).
*
*    zcl_02_basics_log_c460=>set_name( 'Pedro' ).
*
*    zcl_02_basics_log_c460=>get_name(
*      IMPORTING
*        ev_name = lv_name ).
*
*    out->write( lv_name ).
*
*
*    out->write( lo_inst->get_phone( '5566-7788-99' ) ).
*
*
*    out->write( lo_inst->get_flight( 'AA' ) ).
*
*    out->write( | { zcl_02_basics_log_c460=>c_1 } | ).
*
*    out->write( | { zcl_02_basics_log_c460=>c_logali-name }-{ zcl_02_basics_log_c460=>c_logali-master }-{ zcl_02_basics_log_c460=>c_logali-group } | ).
*
*
*    out->write( lo_inst->get_flights( iv_carrier = 'LH'
*                                      iv_conn_id = '' ) ).

*    out->write( lo_inst->company ).

*    lo_inst->company = 'TechMahindra'.

*    out->write( lo_inst->company ).

* Instances

*    DATA(lo_insts) = NEW zcl_03_instances_log_c460( ).
*
*    out->write( zcl_03_instances_log_c460=>log ).
*
*    DATA(lo_insts2) = NEW zcl_03_instances_log_c460( ).
*
*    out->write( zcl_03_instances_log_c460=>log ).
*
*    DATA(lo_insts3) = NEW zcl_03_instances_log_c460( ).
*
*    out->write( zcl_03_instances_log_c460=>log ).

* Heritance

*  data(lo_heritance) = new zcl_05_inheritance_2_log_c460( ).
*
*  out->write( lo_heritance->get_architecture( ) ).

  " Contrsuctors
*   DATA(lo_const_her) = NEW zcl_07_inhe_const_2_log_460( iv_view_type = 'VIEW01'
*                                                        iv_box       = 'BOX01' ).



















  ENDMETHOD.

ENDCLASS.
