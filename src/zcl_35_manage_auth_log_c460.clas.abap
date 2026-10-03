CLASS zcl_35_manage_auth_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: check_user IMPORTING iv_user TYPE syuname
                        RAISING   zcx_01_auth_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_35_manage_auth_log_c460 IMPLEMENTATION.

  METHOD check_user.
    IF sy-uname = 'CB9980001150'.
      RAISE EXCEPTION TYPE zcx_01_auth_log_c460
        EXPORTING
          textid = zcx_01_auth_log_c460=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Create Sales Order'
*         msgv3  =
*         msgv4  =
        .
    ENDIF.
  ENDMETHOD.

ENDCLASS.
