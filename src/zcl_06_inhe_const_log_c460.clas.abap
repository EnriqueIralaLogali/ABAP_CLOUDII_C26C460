CLASS zcl_06_inhe_const_log_c460 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string,

       meth1.

  PROTECTED SECTION.

    DATA: view_type TYPE string,
          box       TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_inhe_const_log_c460 IMPLEMENTATION.

  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.

  METHOD meth1.

  ENDMETHOD.

ENDCLASS.
