CLASS zcl_path_expression_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_PATH_EXPRESSION_LOG_C460 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_18_log_c460 AS Booking
    FIELDS booking~TravelId,
           booking~BookingId,
           \_Travel-AgencyId,
           \_Travel\_Agency-name AS AgencyName,
           \_Travel-CustomerId,
           concat_with_space( \_Travel\_Customer-last_name, \_Travel\_Customer-first_name, 2 ) AS CustomerName
    WHERE booking~CarrierId = 'AA'
      AND \_Travel-AgencyId = '070046'
      INTO TABLE @DATA(lt_results)
       UP TO 10 ROWS.

    IF sy-subrc = 0.
      out->write( lt_results ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
