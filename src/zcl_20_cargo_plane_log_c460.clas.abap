CLASS zcl_20_cargo_plane_log_c460 DEFINITION
  PUBLIC
  INHERITING FROM zcl_19_polymorphism_log_c460
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_20_cargo_plane_log_c460 IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.
