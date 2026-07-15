@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view ticket - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zrah_tix_c_ticket as projection on ZRAH_TIX_I_TICKET
{
    
  key Ticketid,
  Subject,
  Description,
  Priority,
  Status,
  Category,
  RequesterId,
  AgentId,
  CreatedAt,
  DueDate,
  IsBreached,
  ResolvedAt,
  /* Associations */
  _Activity:  redirected to composition child zrah_tix_c_actvty
}
