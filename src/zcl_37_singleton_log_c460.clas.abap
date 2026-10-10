CLASS zcl_37_singleton_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: time TYPE zsyst_uzeit.

    METHODS: constructor.

    CLASS-METHODS:
      get_instance
        RETURNING VALUE(ro_instance) TYPE REF TO zcl_37_singleton_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: instance TYPE REF TO zcl_37_singleton_log_c460.

ENDCLASS.



CLASS zcl_37_singleton_log_c460 IMPLEMENTATION.

  METHOD get_instance.

    IF instance IS NOT BOUND.
      instance = NEW #( ).
    ENDIF.

    ro_instance = instance.

  ENDMETHOD.

  METHOD constructor.

    me->time = cl_abap_context_info=>get_system_time( ).

  ENDMETHOD.

ENDCLASS.
