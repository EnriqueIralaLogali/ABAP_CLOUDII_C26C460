@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_05_log_c460
  as select from zcds_06_log_c460
{
//     key TravelId,
//     AgencyId,
  min(TotalPrice)                     as MinTotalPrice,

  max(TotalPrice)                     as MaxTotalPrice,

  sum(TotalPrice)                     as SumTotalPrice,

  count( distinct TotalPrice)         as CountDisTotalPrice,

  count(*)                            as CountAllTotalPrice,

  avg( TotalPrice as abap.dec(16,2) ) as AVGTotalPrice,

  CurrencyCode                        as Currency
}
group by
//  TravelId,
//  AgencyId,
  CurrencyCode
