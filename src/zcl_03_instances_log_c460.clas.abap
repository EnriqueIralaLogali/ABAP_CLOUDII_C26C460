CLASS zcl_03_instances_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS: constructor.

    CLASS-METHODS class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_instances_log_c460 IMPLEMENTATION.

  METHOD class_constructor.
    log = | { log } - Static Constructor--> |.
  ENDMETHOD.

  METHOD constructor.
    log = | { log } - Instance Constructor--> |.
  ENDMETHOD.

ENDCLASS.
