CLASS lhc_OrderItem DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR OrderItem RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR OrderItem RESULT result.

    METHODS setReselaseDate FOR DETERMINE ON MODIFY
      IMPORTING keys FOR OrderItem~setReselaseDate.

    METHODS setOrderItemID FOR DETERMINE ON SAVE
      IMPORTING keys FOR OrderItem~setOrderItemID.

    METHODS validateCurrencyCode FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validateCurrencyCode.

    METHODS validateDescription FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validateDescription.

    METHODS validateName FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validateName.

    METHODS validatePrice FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validatePrice.

    METHODS validateUnitMeasure FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validateUnitMeasure.

    METHODS validateValuesProd FOR VALIDATE ON SAVE
      IMPORTING keys FOR OrderItem~validateValuesProd.

ENDCLASS.

CLASS lhc_OrderItem IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setReselaseDate.
  ENDMETHOD.

  METHOD setOrderItemID.
  ENDMETHOD.

  METHOD validateCurrencyCode.
  ENDMETHOD.

  METHOD validateDescription.
  ENDMETHOD.

  METHOD validateName.
  ENDMETHOD.

  METHOD validatePrice.
  ENDMETHOD.

  METHOD validateUnitMeasure.
  ENDMETHOD.

  METHOD validateValuesProd.
  ENDMETHOD.

ENDCLASS.
