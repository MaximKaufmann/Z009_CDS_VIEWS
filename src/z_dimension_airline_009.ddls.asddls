@AbapCatalog.sqlViewName: 'ZDIMEAIRLINE009'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline'
@Analytics.dataCategory: #DIMENSION
define view Z_Dimension_Airline_009 as select from scarr
{
    @ObjectModel.text.element: [ 'AirlineName' ]
  key carrid   as Airline,
  
      @Semantics.text: true
      carrname as AirlineName,
      
      @Semantics.currencyCode: true
      currcode as Currency
}
