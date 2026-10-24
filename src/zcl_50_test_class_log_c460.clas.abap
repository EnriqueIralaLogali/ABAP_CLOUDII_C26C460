CLASS zcl_50_test_class_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT "Medium "Long
  RISK LEVEL HARMLESS. "Critical " Dangerous

  PUBLIC SECTION.

    METHODS:
      "! @testing zcl_49_businnes_proc_log_c460
      factorial_test FOR TESTING.

  PROTECTED SECTION.
  PRIVATE SECTION.

*    class-METHODS:
*      class_setup,
*      class_teardown.

    METHODS:
      setup,
      teardown.

    DATA: mo_cut TYPE REF TO zcl_49_businnes_proc_log_c460. " CUT Class under test

ENDCLASS.



CLASS zcl_50_test_class_log_c460 IMPLEMENTATION.

  METHOD factorial_test.

    " Given
    DATA(lv_number_ut) = 4.
    DATA lv_fact_ut TYPE i.

    " When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_fact_ut ).

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
