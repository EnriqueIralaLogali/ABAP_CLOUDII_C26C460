CLASS zcl_46_observer_log_c460 DEFINITION ABSTRACT
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      on_modified_state ABSTRACT
        FOR EVENT modified_state OF zcl_45_processes_log_c460
        IMPORTING ev_new_state.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_46_observer_log_c460 IMPLEMENTATION.
ENDCLASS.
