CLASS lhc_SalesOrder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR SalesOrder RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR SalesOrder RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR SalesOrder RESULT result.

    METHODS precheck_create FOR PRECHECK
      IMPORTING entities FOR CREATE SalesOrder.

    METHODS Resume FOR MODIFY
      IMPORTING keys FOR ACTION SalesOrder~Resume.

    METHODS setOrderStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR SalesOrder~setOrderStatus.

    METHODS setOrderNumber FOR DETERMINE ON SAVE
      IMPORTING keys FOR SalesOrder~setOrderNumber.

    METHODS validateCountry FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateCountry.

    METHODS validateEmail FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateEmail.

    METHODS validateFirstName FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateFirstName.

    METHODS validateLastName FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateLastName.

ENDCLASS.

CLASS lhc_SalesOrder IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD precheck_create.
  ENDMETHOD.

  METHOD Resume.
  ENDMETHOD.

  METHOD setOrderStatus.
  ENDMETHOD.

  METHOD setOrderNumber.
  ENDMETHOD.

  METHOD validateCountry.
  ENDMETHOD.

  METHOD validateEmail.
  ENDMETHOD.

  METHOD validateFirstName.
  ENDMETHOD.

  METHOD validateLastName.
  ENDMETHOD.

ENDCLASS.
