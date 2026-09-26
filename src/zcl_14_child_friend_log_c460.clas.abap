CLASS zcl_14_child_friend_log_c460 DEFINITION INHERITING FROM zcl_13_friends_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_child_friend_log_c460 IMPLEMENTATION.

  METHOD my_meth.
     me->father_attr = 'Child hello'.

     data(lo_inst) = new zcl_12_friends_log_c460( ).

     lo_inst->private_attr = 'child'.

  ENDMETHOD.

ENDCLASS.
