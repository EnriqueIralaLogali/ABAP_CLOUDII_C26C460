CLASS zcl_09_meth_inher_2_log_c460 DEFINITION
  PUBLIC
  INHERITING FROM zcl_08_meth_inher_log_c460
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_name REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_meth_inher_2_log_c460 IMPLEMENTATION.

  METHOD set_name.

    DATA(lv_1) = zcl_08_meth_inher_log_c460=>c1.

    "super->set_name( is_name = ls_name ).

    TYPES: BEGIN OF ty_name,
             name TYPE string,
           END OF ty_name.

    DATA: ls_name TYPE ty_name.

    super->set_name( is_name = ls_name ).

    ls_name-name = 'Name1'.

    APPEND ls_name TO me->gt_name.

    ls_name-name = 'Name2'.

    " Logic in father class
    super->set_name( is_name = ls_name ).

    " my own logic (in child class)
    me->set_name( is_name = ls_name ).

  ENDMETHOD.

ENDCLASS.
