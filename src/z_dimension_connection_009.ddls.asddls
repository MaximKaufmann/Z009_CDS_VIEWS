@AbapCatalog.sqlViewName: 'ZDIMECONNECT009'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Connection'

@Analytics.dataCategory: #DIMENSION

@ObjectModel.representativeKey: 'FlightConnection'
define view Z_Dimension_Connection_009 as select from spfli
association [0..1] to Z_Dimension_Airline_009 as _Airline on $projection.Airline = _Airline.Airline
{
   @ObjectModel.foreignKey.association: '_Airline'
  key carrid                    as Airline,

      @ObjectModel.text.element: [ 'Destination' ]
  key connid                    as FlightConnection,

      @Semantics.text: true
      concat(cityfrom,
        concat(' -> ', cityto)) as Destination,

      _Airline 
}
