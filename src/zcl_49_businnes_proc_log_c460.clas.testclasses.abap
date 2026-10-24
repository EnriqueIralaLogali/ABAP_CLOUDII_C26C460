*"* use this source file for your ABAP unit test classes
CLASS ltcl_factorial DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      first_test FOR TESTING RAISING cx_static_check.

    METHODS:
      setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_49_businnes_proc_log_c460. " CUT Class under test

ENDCLASS.


CLASS ltcl_factorial IMPLEMENTATION.

  METHOD first_test.
    "cl_abap_unit_assert=>fail( 'Implement your first test here' ).

    " Given
    DATA(lv_number_ut) = 4.
    DATA lv_fact_ut TYPE i.

    " When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_fact_ut
    ).

    " Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_fact_ut
        exp                  = 24 ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR: mo_cut.
  ENDMETHOD.

ENDCLASS.

