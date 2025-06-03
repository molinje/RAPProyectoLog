@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Orders items - Root entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z_r_sord_item_8080 
as select from zsord_item_8080

association to parent z_r_sorders_h_8080 as _SOrder on $projection.OrderUUID = _SOrder.OrderUUID
association [0..1] to I_Currency         as _Currency      on $projection.CurrencyCode = _Currency.Currency

{
    key order_uuid      as OrderUUID,
    key order_item_id   as OrderItemID,
    sorder_id           as SorderID,                                      
    name                as Name, 
    description         as Description,
    reselase_date       as ReselaseDate,      
    discount_date       as DiscountDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    price               as Price,
    currency_code       as CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    height              as Height,
    @Semantics.quantity.unitOfMeasure : 'UnitMeasure'
    width               as Width,
    depth               as Depth,
    quantity            as Quantity,
    unit_measure        as UnitMeasure,
    last_changed_at     as LastChangedAt,
    
    _SOrder,
    _Currency 
}
