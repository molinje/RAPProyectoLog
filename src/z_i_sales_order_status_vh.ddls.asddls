@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order status VH'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_Sales_Order_Status_VH 
as select from zsostatus_8080

association [0..*] to Z_I_Sales_Order_Status_VH_Text 
 as _Text on $projection.SOStatus = _Text.SOStatus

{

    @UI.textArrangement: #TEXT_ONLY
    @UI.lineItem: [{importance: #HIGH}]
    @ObjectModel.text.association: '_Text'
    key so_status as SOStatus,
  
    _Text
    
}
