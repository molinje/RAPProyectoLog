@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order status Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_Sales_Order_Status_VH_Text 
as select from zsostatus_t_8080
//association [1..1] to 

{

 @ObjectModel.text.element: ['Text']
key so_status as SOStatus,

@Semantics.language: true
key language as Language,
@Semantics.text: true
text as Text
    
}
