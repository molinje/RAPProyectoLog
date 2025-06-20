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

  DATA: items_order_u type table for update z_r_sorders_h_8080\\OrderItem,
        max_item_id type zde_posnr_8080.

        read entities OF z_r_sorders_h_8080 in local mode
        entity OrderItem by \_SOrder
        fields ( OrderUUID )
        WITH CORRESPONDING #( keys )
        RESULT data(sorders).

        loop at sorders into data(sorder).

         read entities OF z_r_sorders_h_8080 in local mode
        entity SalesOrder by \_OrderItem
        fields ( OrderItemID )
        WITH VALUE #( ( %tky = sorder-%tky ) )
        RESULT data(sorderitems).

        max_item_id = '0000'.



          loop at sorderitems into data(sorderitem).
            if sorderitem-OrderItemID > max_item_id.
             max_item_id = sorderitem-OrderItemID.
            ENDIF.
        endloop.

       loop at sorderitems into sorderitem where OrderItemID is INITIAL.
           max_item_id += 1.

           APPEND value #( %tky = sorderitem-%tky
                           OrderItemID = max_item_id ) to items_order_u.


        endloop.

        endloop.

        if items_order_u is not INITIAL.

            MODIFY ENTITIES OF z_r_sorders_h_8080 in local mode
            ENTITY OrderItem
            UPDATE FIELDS ( OrderItemID )
            WITH items_order_u.

        ENDIF.

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
