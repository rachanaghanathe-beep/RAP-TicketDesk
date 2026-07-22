CLASS zrah_seed_item DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS zrah_seed_item IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_item TYPE STANDARD TABLE OF zrah_item WITH EMPTY KEY,
          lv_ts   TYPE timestampl.

    GET TIME STAMP FIELD lv_ts.
    DATA(lv_uname) = sy-uname.

    lt_item = VALUE #(
      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Widget A'        description = 'Basic widget'          price = '10.50'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Widget B'        description = 'Premium widget'        price = '25.00'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Gadget C'        description = 'Compact gadget'        price = '15.75'  status_code = 'INACT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Gadget D'        description = 'Smart gadget'          price = '99.99'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Tool E'          description = 'Hand tool'             price = '8.20'   status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Tool F'          description = 'Power tool'            price = '150.00' status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Component G'     description = 'Electronic component' price = '3.45'   status_code = 'DRAFT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Component H'     description = 'Mechanical component' price = '12.00'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Accessory I'     description = 'Optional accessory'    price = '5.60'   status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Accessory J'     description = 'Rare accessory'        price = '75.30'  status_code = 'INACT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Module K'        description = 'Core module'           price = '210.00' status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Module L'        description = 'Add-on module'         price = '45.00'  status_code = 'DRAFT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Kit M'           description = 'Starter kit'           price = '60.00'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Kit N'           description = 'Advanced kit'          price = '120.00' status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Part O'          description = 'Spare part'            price = '2.99'   status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Part P'          description = 'Replacement part'      price = '4.10'   status_code = 'INACT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Bundle Q'        description = 'Value bundle'          price = '88.88'  status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Bundle R'        description = 'Premium bundle'        price = '199.00' status_code = 'DRAFT'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )

      ( item_id = cl_system_uuid=>create_uuid_x16_static( )
        name = 'Sample S'        description = 'Test sample'           price = '1.00'   status_code = 'ACTIV'
        local_created_by = lv_uname local_created_at = lv_ts
        local_last_changed_by = lv_uname local_last_changed_at = lv_ts
        last_changed_at = lv_ts )
    ).

    INSERT zrah_item FROM TABLE @lt_item.

    IF sy-subrc = 0.
      out->write( |{ lines( lt_item ) } records inserted successfully| ).
    ELSE.
      out->write( 'Insert failed' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
