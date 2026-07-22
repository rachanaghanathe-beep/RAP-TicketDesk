@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Status'
@ObjectModel.resultSet.sizeCategory: #XS   

define view entity ZRAH_I_STATUS_VH
  as select from zrah_item
{
  @UI.textArrangement: #TEXT_ONLY
  @ObjectModel.text.element: ['StatusText']
  key status_code as StatusCode,

      case status_code
        when 'ACTIV'  then 'Active'
        when 'DRAFT'   then 'Draft'
        when 'INACT' then 'Inactive'
        else status_code
      end         as StatusText
}
