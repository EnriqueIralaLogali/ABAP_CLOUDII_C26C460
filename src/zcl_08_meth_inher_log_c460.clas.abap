CLASS zcl_08_meth_inher_log_c460 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_name,
             name TYPE string,
           END OF ty_name.

    CONSTANTS: c1 TYPE c LENGTH 1 VALUE 'c'.

    DATA: gt_name TYPE TABLE OF ty_name.

    METHODS:
      set_name
        IMPORTING
          is_name TYPE ty_name.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_meth_inher_log_c460 IMPLEMENTATION.

  METHOD set_name.
    APPEND is_name TO gt_name.
  ENDMETHOD.

ENDCLASS.
