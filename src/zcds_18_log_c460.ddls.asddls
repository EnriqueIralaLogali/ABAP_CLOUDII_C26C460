@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association - Nav. with Path Exp. II'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_18_log_c460
  as select from /dmo/booking

  association [1..1] to zcds_17_log_c460 as _Travel on _Travel.TravelId = $projection.TravelId

{
  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      _Travel
}
