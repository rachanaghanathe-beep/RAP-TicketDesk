@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection Layer - Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZRAH_P_ITEM as projection on ZRAH_ROOT_ITEM
{
    key ItemId,
    Name,
    Description,
    Price,
    
    -- Simple Inline Value Help / Fixed Values
      @Consumption.valueHelpDefinition: [{
        entity: { name: 'ZRAH_P_ITEM', element: 'StatusCode' },
        useForValidation: true
      }]
    StatusCode,
    StatusCriticality
//    LocalCreatedBy,
//    LocalCreatedAt,
//    LocalLastChangedBy,
//    LocalLastChangedAt,
//    LastChangedAt
}

