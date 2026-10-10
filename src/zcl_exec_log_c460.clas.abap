CLASS zcl_exec_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_log_c460 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* Desing Patterns

*    " Singleton
*    DATA: lo_sing_1 TYPE REF TO zcl_37_singleton_log_c460,
*          lo_sing_2 TYPE REF TO zcl_37_singleton_log_c460.
*
*    lo_sing_1 = zcl_37_singleton_log_c460=>get_instance( ).
*    WAIT UP TO 2 SECONDS.
*    lo_sing_2 = zcl_37_singleton_log_c460=>get_instance( ).
*
*    out->write( lo_sing_1->time ).
*    out->write( lo_sing_2->time ).
*
*    DATA(lo_inst) = NEW zcl_37_singleton_log_c460( ).

*    " Factory Method
*    DATA: lo_shape   TYPE REF TO zif_06_log_c460,
*          lo_factory TYPE REF TO zcl_41_factory_log_c460.
*
*    lo_factory = NEW #( ).
*
*    TRY.
*
*        lo_shape = lo_factory->get_shape( 'Hexagono' ).
*
*      CATCH cx_root INTO DATA(lx_exp).
*        out->write( lx_exp->get_text( ) ).
*
*    ENDTRY.
*
*    IF lo_shape IS BOUND.
*
*      out->write( lo_shape->draw_shape( ) ).
*
*    ENDIF.

*  " Model-view-controller
*  DATA: lv_name type string VALUE 'Juan López',
*        lv_role type string VALUE 'Sr Developer'.
*
*        data(lo_model) = new zcl_42_model_log_c460(
*          iv_name = lv_name
*          iv_role = lv_role ).
*
*        data(lo_view) = new zcl_43_view_log_c460( ).
*
*        data(lo_controller) = new zcl_44_controller_log_c460( ).
*
*        lo_controller->set_model( lo_model ).
*
*        lo_controller->set_view( lo_view ).
*
*        lo_controller->get_view( )->display_employee(
*          iv_name = lo_model->get_name( )
*          iv_role = lo_model->get_role( )
*          io_out  = out ).

    " Observer
    DATA(lo_processes) = NEW zcl_45_processes_log_c460( ).
    DATA(lo_sales) = NEW zcl_47_sales_dep_log_c460( ).
    DATA(lo_billing) = NEW zcl_48_billing_dep_log_c460( ).

    SET HANDLER lo_sales->on_modified_state FOR lo_processes.
    SET HANDLER lo_billing->on_modified_state FOR lo_processes.

    " Set new state
    lo_processes->set_state( 'NewSales 01 - Product 9999 - Iphone 17 sold' ).

    out->write( lo_processes->get_state( ) ).

    out->write( lo_sales->state ).
    out->write( lo_billing->state ).


































  ENDMETHOD.

ENDCLASS.
