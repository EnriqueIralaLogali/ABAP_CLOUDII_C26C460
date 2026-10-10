CLASS zcl_48_billing_dep_log_c460 DEFINITION
  PUBLIC
  INHERITING FROM zcl_46_observer_log_c460
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: state TYPE string.
    METHODS: on_modified_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_48_billing_dep_log_c460 IMPLEMENTATION.
  METHOD on_modified_state.
    me->state = | Billing-{ ev_new_state }|.
  ENDMETHOD.

ENDCLASS.
