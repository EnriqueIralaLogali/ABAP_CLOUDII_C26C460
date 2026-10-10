CLASS zcl_41_factory_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_shape
        IMPORTING iv_shape_type   TYPE string
        RETURNING VALUE(ro_shape) TYPE REF TO zif_06_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_41_factory_log_c460 IMPLEMENTATION.

  METHOD get_shape.

    CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape = NEW zcl_38_circle_log_c460( ).
      WHEN 'Triangle'.
        ro_shape = NEW zcl_39_triangle_log_c460( ).
      WHEN 'Square'.
        ro_shape = NEW zcl_40_square_log_c460( ).
    ENDCASE.


  ENDMETHOD.

ENDCLASS.
