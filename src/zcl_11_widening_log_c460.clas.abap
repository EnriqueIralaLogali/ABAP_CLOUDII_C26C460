CLASS zcl_11_widening_log_c460 DEFINITION
  PUBLIC
  INHERITING FROM zcl_10_narrowing_log_c460
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS:
    walk REDEFINITION,
    my_meth
     RETURNING VALUE(rv_value) type string .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_widening_log_c460 IMPLEMENTATION.
  METHOD walk.
     rv_walk = 'The lion walk'.
  ENDMETHOD.

  METHOD my_meth.
    rv_value = 'test'.
  ENDMETHOD.

ENDCLASS.
