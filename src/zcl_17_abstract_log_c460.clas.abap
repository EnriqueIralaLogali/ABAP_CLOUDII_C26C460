CLASS zcl_17_abstract_log_c460 DEFINITION ABSTRACT
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS:
    merchandise_output
      RETURNING VALUE(rv_merchandise) type string,

    production_line ABSTRACT
      RETURNING VALUE(rv_production) type string,

    input_products ABSTRACT
     RETURNING VALUE(rv_input) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_abstract_log_c460 IMPLEMENTATION.

  METHOD merchandise_output.
     rv_merchandise = 'Mechandise output'.
  ENDMETHOD.

ENDCLASS.
