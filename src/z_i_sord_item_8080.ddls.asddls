@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order item - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity z_i_sord_item_8080 
as projection on z_r_sord_item_8080


{
    key OrderUUID,
    key OrderItemID,
    SorderID,
    Name,
    Description,
    ReselaseDate,
    DiscountDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    Height,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    Width,
    Depth,
    Quantity,
    UnitMeasure,
    LastChangedAt,
    /* Associations */
    _Currency,
    _SOrder:  redirected to parent z_i_sorders_h_8080
}
