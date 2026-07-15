@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view activity'
@Metadata.ignorePropagatedAnnotations: true
define view entity zrah_tix_c_actvty  as projection on zrah_tix_i_actvty
{
key TicketId,
key ActivityId,
ActivityText,
CreatedBy,
CreatedAt,
/* Associations */
_Ticket : redirected to parent zrah_tix_c_ticket 

    
}
