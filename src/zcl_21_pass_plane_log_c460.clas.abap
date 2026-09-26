CLASS zcl_21_pass_plane_log_c460 DEFINITION INHERITING FROM zcl_19_polymorphism_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_pass_plane_log_c460 IMPLEMENTATION.
  METHOD airplane_type.
     rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
