@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Child Entity - Activity'
@Metadata.ignorePropagatedAnnotations: true
define view entity zrah_tix_i_actvty as select from zrah_tix_actvty
association to parent ZRAH_TIX_I_TICKET as _Ticket on
      $projection.TicketId = _Ticket.Ticketid
{
    key ticket_id as TicketId,
    key activity_id as ActivityId,
    activity_text as ActivityText,
    created_by as CreatedBy,
    created_at as CreatedAt,
    _Ticket
}
