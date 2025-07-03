@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity z_i_sorders_h_8080 
provider contract transactional_interface
as projection on z_r_sorders_h_8080
{
    key OrderUUID,
    OrderID,
    Email,
    FirstName,
    LastName,
    Country,
    CreateOn,
    DeliveryDate,
    OrderStatus,
    
    ImageUrl,
    LocalLastChangedAt,
    LastChangedAt,
    
    /* Associations */
    _OrderItem : redirected to composition child z_i_sord_item_8080,
    _SOStatus
}
