@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Orders - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity z_r_sorders_h_8080 
as select from zsorders_h_8080

composition [0..*] of z_r_sord_item_8080 as _OrderItem

association [1..1] to Z_I_Sales_Order_Status_VH as _SOStatus on $projection.OrderStatus = _SOStatus.SOStatus

{
    key order_uuid          as OrderUUID,
    order_id                as OrderID,
    email                   as Email,
    first_name              as FirstName,
    last_name               as LastName,
    country                 as Country,
    create_on               as CreateOn,
    delivery_date           as DeliveryDate,
    order_status            as OrderStatus,
    image_url               as ImageUrl,
    local_last_changed_at   as LocalLastChangedAt,
    last_changed_at         as LastChangedAt,
    
    _OrderItem,
    _SOStatus
}
