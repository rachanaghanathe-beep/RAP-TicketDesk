CLASS lhc_Item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Item RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Item RESULT result.

      METHODS SetDefaultStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Item~SetDefaultStatus.

       METHODS ValidatePrice FOR VALIDATE ON SAVE
      IMPORTING keys FOR Item~ValidatePrice.

       METHODS SetStatusActive FOR MODIFY
      IMPORTING keys FOR ACTION Item~SetStatusActive RESULT result.

ENDCLASS.

CLASS lhc_Item IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD SetDefaultStatus.
    " 1. Read processing items from the buffer
    READ ENTITIES OF ZRAH_ROOT_ITEM IN LOCAL MODE
      ENTITY Item
        FIELDS ( StatusCode ) WITH CORRESPONDING #( keys )
      RESULT DATA(lt_items).

    " 2. Filter out records that already have a status assigned
    DELETE lt_items WHERE StatusCode IS NOT INITIAL.
    IF lt_items IS INITIAL. RETURN. ENDIF.

    " 3. Update the transactional buffer with default value 'DRAFT'
    MODIFY ENTITIES OF ZRAH_ROOT_ITEM IN LOCAL MODE
      ENTITY Item
        UPDATE FIELDS ( StatusCode )
        WITH VALUE #( FOR ls_item IN lt_items (
                        %tky       = ls_item-%tky
                        StatusCode = 'DRAFT' ) )
      REPORTED DATA(lt_reported).
  ENDMETHOD.

   METHOD ValidatePrice.
    " 1. Read the user's Price input from the transactional buffer
    READ ENTITIES OF ZRAH_ROOT_ITEM IN LOCAL MODE
      ENTITY Item
        FIELDS ( Price ) WITH CORRESPONDING #( keys )
      RESULT DATA(lt_items).

    LOOP AT lt_items INTO DATA(ls_item).
      " 2. Enforce the Business Rule: Price cannot be negative
      IF ls_item-Price < 0.

        " 3. Populate FAILED structure to block database persistence
        APPEND VALUE #( %tky = ls_item-%tky ) TO failed-item.

        " 4. Populate REPORTED structure to push error toast and highlight field
        APPEND VALUE #(
          %tky           = ls_item-%tky
          %element-price = if_abap_behv=>mk-on " Outlines the Price input field in red

          " FIX: Used the correct interface path for severity
          %msg           = new_message_with_text(
                             severity = if_abap_behv_message=>severity-error
                             text     = 'Price cannot be negative!' )

        ) TO reported-item.

      ENDIF.
    ENDLOOP.
  ENDMETHOD.

     METHOD SetStatusActive.
    " 1. Update the status field inside the transactional buffer to 'ACTIV'
    MODIFY ENTITIES OF ZRAH_ROOT_ITEM IN LOCAL MODE
      ENTITY Item
        UPDATE FIELDS ( StatusCode )
        WITH VALUE #( FOR key IN keys (
                        %tky       = key-%tky
                        StatusCode = 'ACTIV' ) )
      FAILED failed
      REPORTED reported.

    " 2. Read the updated instances back from the buffer
    READ ENTITIES OF ZRAH_ROOT_ITEM IN LOCAL MODE
      ENTITY Item
        ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_items).

    " 3. Populate the returning 'result' structure for the framework
    result = VALUE #( FOR ls_item IN lt_items (
                        %tky   = ls_item-%tky
                        %param = ls_item ) ).
  ENDMETHOD.
ENDCLASS.
