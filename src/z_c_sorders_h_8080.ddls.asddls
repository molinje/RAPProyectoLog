@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order - Consumption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define  root view entity z_c_sorders_h_8080 
provider contract transactional_query
as projection on z_r_sorders_h_8080
{
    key OrderUUID,
    @Search.defaultSearchElement: true
    OrderID,
    Email,
    FirstName,
    LastName,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CountryText',
                                                         element: 'Country'},
                                               useForValidation: true }]
    Country,
    CreateOn,
    DeliveryDate,
    OrderStatus,
    ImageUrl,
    /* Associations */
    _OrderItem : redirected to composition child z_c_sord_item_8080
}
