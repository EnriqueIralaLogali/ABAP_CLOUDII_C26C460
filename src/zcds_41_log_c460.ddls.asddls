@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Transient - Analitycal Query'
@ObjectModel.modelingPattern: #ANALYTICAL_QUERY
@ObjectModel.supportedCapabilities: [#ANALYTICAL_QUERY]
define transient view entity zcds_41_log_c460
  provider contract analytical_query
  as projection on zcds_40_log_c460
{
          @AnalyticsDetails.query.axis: #FREE
          SoKey                                                        as SalesOrderKey,

          @AnalyticsDetails.query.axis: #ROWS
          LifecycleStatus,

          @AnalyticsDetails.query.axis: #ROWS
          CompanyCode,

          @AnalyticsDetails.query.axis: #COLUMNS
          QuantitySum,
          UomSum,

          @ObjectModel.text.element: [ 'CurrencyDescription' ]
          CurrencySum,
          _Currency._Text.CurrencyName                                 as CurrencyDescription:localized,

          @Aggregation.default: #FORMULA
          abap.decfloat34'0.05'                                        as discount,

          @Aggregation.default: #FORMULA
          @Semantics.quantity.unitOfMeasure: 'AmPerQuantity'
          curr_to_decfloat_amount(AmountSum) / $projection.quantitysum as AmountPerQuantity,
          
  virtual AmPerQuantity  : dd_cds_calculated_unit,

          @Aggregation.default: #FORMULA
          @Semantics.amount.currencyCode: 'TargetCurrency'
          currency_conversion( amount => curr_to_decfloat_amount( AmountSum ),
                               source_currency => CurrencySum,
                               target_currency => abap.cuky'EUR',
                               exchange_rate_date => CreatedOn )       as ConvertedAmount,

  virtual TargetCurrency : abap.cuky

}
