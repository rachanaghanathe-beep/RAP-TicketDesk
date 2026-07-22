@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity - Item'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZRAH_ROOT_ITEM as select from zrah_item
{
    key item_id as ItemId,
    name as Name,
    description as Description,
    price as Price,
    status_code as StatusCode,
    case status_code
        when 'ACTIV' then 3  -- Green
        when 'DRAFT' then 2  -- Yellow
        when 'INACT' then 1  -- Red
        else 0               -- Grey
        end         as StatusCriticality,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt //    _association_name // Make association public
}
