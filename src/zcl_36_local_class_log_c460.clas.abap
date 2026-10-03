CLASS zcl_36_local_class_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: ls_algo TYPE ty_first.
          "ls_algo2 TYPE ty_first2.

ENDCLASS.



CLASS zcl_36_local_class_log_c460 IMPLEMENTATION.

  METHOD my_meth.

    data(lo_local) = new lcl_helper( ).

  ENDMETHOD.

ENDCLASS.
