CLASS zcl_05_inheritance_2_log_c460 DEFINITION INHERITING FROM zcl_04_inheritance_1_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_inheritance_2_log_c460 IMPLEMENTATION.

  METHOD my_meth.
     me->attr1 = 'hijo'.
  ENDMETHOD.

ENDCLASS.
