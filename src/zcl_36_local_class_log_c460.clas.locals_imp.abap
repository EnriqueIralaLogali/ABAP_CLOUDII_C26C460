*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

class myclass definition create private.

  public section.
  protected section.
  private section.

endclass.

class myclass implementation.

endclass.

TYPES: BEGIN OF ty_first2,
         comp1 TYPE string,
         comp2 TYPE string,
         comp3 TYPE string,
       END OF ty_first2.

INTERFACE lif_private_helper2.
  DATA: ls_first TYPE ty_first.
ENDINTERFACE.

CLASS lcl_helper3 DEFINITION.

  PUBLIC SECTION.
    INTERFACES: lif_private_helper.

    DATA: ms_first_cl TYPE ty_first.

ENDCLASS.

CLASS lcl_helper IMPLEMENTATION.


ENDCLASS.

CLASS lcl_helper3 IMPLEMENTATION.


ENDCLASS.

