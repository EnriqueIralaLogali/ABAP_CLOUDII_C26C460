CLASS zcl_18_abstract_child_log_c460 DEFINITION ABSTRACT
  PUBLIC
  INHERITING FROM zcl_17_abstract_log_c460
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
             input_products REDEFINITION,
             my_meth ABSTRACT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_18_abstract_child_log_c460 IMPLEMENTATION.
  METHOD input_products.
   rv_input = 'input products'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.

ENDCLASS.
