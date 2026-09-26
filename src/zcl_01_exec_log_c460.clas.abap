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

* Narrowing cast - UP
*    DATA(lo_animal) = NEW zcl_10_narrowing_log_c460( ).
*    DATA(lo_lion) = NEW zcl_11_widening_log_c460( ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    lo_animal = lo_lion.
*    out->write( 'Narrowing cast' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
** Widening cast - Down
*    TRY.
*        lo_lion ?= lo_animal.
*
*      CATCH cx_sy_move_cast_error.
*        out->write( 'Casting error' ).
*        RETURN.
*    ENDTRY.
*
*    out->write( 'Widening cast' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
** Instance enc.
*    "DATA(lo_instan) = NEW zcl_12_friends_log_c460( ).

*interfaces
*    DATA(lo_interf) = NEW zcl_15_interfaces_log_c460( ).
*
*    lo_interf->get_conn_id(
**   RECEIVING
**     rv_conn_id =
*    ).
*
*    lo_interf->zif_03_log_c460~get_airports(
*      EXPORTING
*        iv_airport_id = '001'
**   RECEIVING
**     rs_airport    =
*    ).

* Polymorphism
*    DATA: gt_airplanes   TYPE STANDARD TABLE OF REF TO zcl_19_polymorphism_log_c460,
*          lo_airplane    TYPE REF TO zcl_19_polymorphism_log_c460,
*          lo_cargo_plane TYPE REF TO zcl_20_cargo_plane_log_c460,
*          lo_pass_plane  TYPE REF TO zcl_21_pass_plane_log_c460.
*
*    lo_cargo_plane = NEW #( ). "CREATE OBJECT lo_cargo_plane.
*    APPEND lo_cargo_plane TO gt_airplanes.
*
*    lo_pass_plane = NEW #( ).
*    APPEND lo_pass_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.

* Polymorphism with interfaces
*    DATA: gt_companies TYPE STANDARD TABLE OF REF TO zif_04_log_c460,
*          lo_company   TYPE REF TO zif_04_log_c460,
*          lo_comp_eu   TYPE REF TO zcl_22_polymor_int_log_c460,
*          lo_comp_usa  TYPE REF TO zcl_23_polymor_int_2_log_c460,
*          lo_plant     TYPE REF TO zcl_24_plant_log_c460.
*
*    lo_comp_eu = NEW #( ).
*    APPEND lo_comp_eu TO gt_companies.
*
*    lo_comp_usa = NEW #( ).
*    APPEND lo_comp_usa TO gt_companies.
*
*    lo_plant = NEW #( ).
*
*    LOOP AT gt_companies INTO lo_company.
*      out->write( lo_company->define_company( ) ).
*      out->write( lo_plant->assign_company( lo_company ) ).
*    ENDLOOP.

* Association
*    DATA(lo_credit_card) = NEW zcl_25_credit_card_log_c460( ).
*    DATA(lo_client) = NEW zcl_26_client_log_c460( ).
*
*    lo_credit_card->set_card_num( '9999 8888 7777 5555' ).
*    lo_client->set_credit_card( lo_credit_card  ).
*
*    out->write( lo_client->get_credit_card( )->get_card_num( ) ).

* Composition
*    DATA(lo_keyboard) = NEW zcl_27_keyboard_log_c460( ).
*    DATA(lo_lap_top) = NEW zcl_28_lap_top_log_c460( lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*
*    out->write( lo_lap_top->keyboard->keyboard_type ).

* References

    DATA: lo_vat_ind_1 TYPE REF TO zcl_29_vat_ind_log_c460,
          lo_vat_ind_2 TYPE REF TO zcl_29_vat_ind_log_c460,
          lo_vat_ind_3 TYPE REF TO zcl_29_vat_ind_log_c460.

    lo_vat_ind_1 = NEW #( ).
*    lo_vat_ind_2 = NEW #( ).
*    lo_vat_ind_3 = NEW #( ).

   lo_vat_ind_2 = lo_vat_ind_1.
   lo_vat_ind_3 = lo_vat_ind_1.

    lo_vat_ind_1->vat_ind = 'A1'.
    lo_vat_ind_2->vat_ind = 'A2'.
    lo_vat_ind_3->vat_ind = 'A3'.

    out->write( lo_vat_ind_1->vat_ind ).
    out->write( lo_vat_ind_2->vat_ind ).
    out->write( lo_vat_ind_3->vat_ind ).










































  ENDMETHOD.

ENDCLASS.
