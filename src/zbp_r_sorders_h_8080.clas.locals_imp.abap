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

    METHODS setOrderStatus FOR DETERMINE ON SAVE
      IMPORTING keys FOR SalesOrder~setOrderStatus.

    METHODS setOrderNumber FOR DETERMINE ON SAVE
      IMPORTING keys FOR SalesOrder~setOrderNumber.

    METHODS validateCountry FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateCountry.

     METHODS validateEmail FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateEmail.

    METHODS validateDeliveryDate FOR VALIDATE ON SAVE
      IMPORTING keys FOR SalesOrder~validateDeliveryDate.

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

*     read entities of z_r_sorders_h_8080  in local mode
*         entity SalesOrder
*         fields ( OrderID )
*         with corresponding #( keys )
*         result data(orders).

  ENDMETHOD.

  METHOD Resume.
  ENDMETHOD.

  METHOD setOrderStatus.

    DATA lv_status TYPE zde_orderstatus_8080.


    lv_status = '1'.

   read entities of z_r_sorders_h_8080  in local mode
         entity SalesOrder
         fields ( OrderStatus )
         with corresponding #( keys )
         result data(orders).

    delete orders where OrderStatus is not initial.

    check orders is not initial.



    modify entities of z_r_sorders_h_8080 in local mode
           entity SalesOrder
           update fields ( OrderStatus )
           with value #( for order in orders index into i ( %tky     = order-%tky
                                                              OrderStatus = lv_status
                                                             ) ).


  ENDMETHOD.

  METHOD setOrderNumber.


  DATA lv_system_date TYPE d.

  lv_system_date = cl_abap_context_info=>get_system_date( ).


   read entities of z_r_sorders_h_8080  in local mode
         entity SalesOrder
         fields ( OrderID )
         with corresponding #( keys )
         result data(orders).

    delete orders where OrderID is not initial.

    check orders is not initial.

    select single from zsorders_h_8080
           fields max( order_id )
           into @data(max_OrderId).

    modify entities of z_r_sorders_h_8080 in local mode
           entity SalesOrder
           update fields ( OrderID CreateOn )
           with value #( for order in orders index into i ( %tky     = order-%tky
                                                              OrderID = max_OrderId + i
                                                              CreateOn = lv_system_date ) ).


  ENDMETHOD.

  METHOD validateCountry.
  ENDMETHOD.

  METHOD validateEmail.
  ENDMETHOD.

  METHOD validateDeliveryDate.

      read ENTITIES OF z_r_sorders_h_8080 in local mode
      ENTITY SalesOrder
      FIELDS (  DeliveryDate )
      WITH CORRESPONDING #( keys )
      RESULT data(salesorders).

      loop at salesorders into data(salesorder).

          append value #(  %tky         = salesorder-%tky
                          %state_area  = 'VALIDATE_DATES' ) to reported-salesorder.

          if salesorder-DeliveryDate is INITIAL.


              append value #( %tky = salesorder-%tky ) to failed-salesorder.

              APPEND value #( %tky = salesorder-%tky
                              %state_area = 'VALIDATE_DATES'
                              %msg =  new_message(
                                                        id = 'ZCLMSSAGE_SORDER_001'
                                                        number = 000
                                                        severity = if_abap_behv_message=>severity-error )
                                                        %element-DeliveryDate = if_abap_behv=>mk-on ) to reported-salesorder.

          endif.



      endloop.




  ENDMETHOD.

  METHOD validateFirstName.
  ENDMETHOD.

  METHOD validateLastName.
  ENDMETHOD.

ENDCLASS.
