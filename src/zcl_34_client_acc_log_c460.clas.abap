CLASS zcl_34_client_acc_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: notification TYPE string.

    METHODS:
      on_new_transfer FOR EVENT new_transfer OF zif_05_log_c460
        IMPORTING sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_34_client_acc_log_c460 IMPLEMENTATION.

  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time( ) }|.
  ENDMETHOD.

ENDCLASS.
