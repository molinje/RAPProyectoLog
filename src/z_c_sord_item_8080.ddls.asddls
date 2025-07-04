@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Orders items - Consumption entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity z_c_sord_item_8080 
as projection on z_r_sord_item_8080
{

    key OrderUUID,
    key OrderItemUUID,
    OrderItemID,
    @Search.defaultSearchElement: true    
    SorderID,
    Name,
    Description,
    ReselaseDate,
    DiscountDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH',
                                                   element: 'Currency'},
                                                  useForValidation: true }]
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    Height,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    Width,
    Depth,
    Quantity,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'I_UnitOfMeasureStdVH',
                                                   element: 'UnitOfMeasure'},
                                                  useForValidation: true }]
    UnitMeasure,
    LastChangedAt,
    /* Associations */
    _Currency,
    _SOrder: redirected to parent z_c_sorders_h_8080
    //: : redirected to parent z_c_s
}
