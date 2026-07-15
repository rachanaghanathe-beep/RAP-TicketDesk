@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity - ticket'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZRAH_TIX_I_TICKET as select from zrah_tix_ticket
composition[0..*] of zrah_tix_i_actvty as _Activity  
{
    
    key zrah_tix_ticket.ticketid as Ticketid,
    zrah_tix_ticket.subject as Subject,
    zrah_tix_ticket.description as Description,
    zrah_tix_ticket.priority as Priority,
    zrah_tix_ticket.status as Status,
    zrah_tix_ticket.category as Category,
    zrah_tix_ticket.requester_id as RequesterId,
    zrah_tix_ticket.agent_id as AgentId,
    zrah_tix_ticket.created_at as CreatedAt,
    zrah_tix_ticket.due_date as DueDate,
    zrah_tix_ticket.is_breached as IsBreached,
    zrah_tix_ticket.resolved_at as ResolvedAt,
//     /*Expose associations*/
     _Activity 
    
}
