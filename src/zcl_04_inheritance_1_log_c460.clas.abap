CLASS zcl_04_inheritance_1_log_c460 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string VALUE '64 bits'.

    METHODS:
      get_architecture
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.

    data: attr1 type string.

  PRIVATE SECTION.

     data: attr2 type string.

ENDCLASS.



CLASS zcl_04_inheritance_1_log_c460 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
