CLASS zcl_rah_tix_seed DEFINITION
  PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_rah_tix_seed IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_ticket TYPE TABLE OF zrah_tix_ticket,
          lt_actvty TYPE TABLE OF zrah_tix_actvty.

    DATA(lv_now) = utclong_current( ).

    APPEND VALUE #( ticketid = '0000000001' subject = 'Laptop wont boot'
      description = 'Screen stays black after power on'
      priority = 'P1' status = 'PRGS' category = 'HW'
      requester_id = 'REQ001' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000002' subject = 'VPN not connecting'
      description = 'Error 619 on connect'
      priority = 'P2' status = 'RSLD' category = 'NW'
      requester_id = 'REQ002' agent_id = 'AGT002'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000003' subject = 'Password reset needed'
      description = 'Locked out of email'
      priority = 'P3' status = 'CLSD' category = 'ACS'
      requester_id = 'REQ003' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000004' subject = 'Outlook crashes on startup'
      description = 'Crashes every time on launch'
      priority = 'P2' status = 'NEW' category = 'SW'
      requester_id = 'REQ004' agent_id = 'AGT003'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000005' subject = 'Extra monitor request'
      description = 'Requesting second monitor'
      priority = 'P4' status = 'NEW' category = 'HW'
      requester_id = 'REQ005' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000006' subject = 'Office WiFi down'
      description = 'Entire floor offline'
      priority = 'P1' status = 'HLD' category = 'NW'
      requester_id = 'REQ006' agent_id = 'AGT002'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000007' subject = 'Excel macros not running'
      description = 'Macro security warning blocks run'
      priority = 'P3' status = 'PRGS' category = 'SW'
      requester_id = 'REQ007' agent_id = 'AGT003'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000008' subject = 'Request new headset'
      description = 'For calls, current one broken'
      priority = 'P4' status = 'NEW' category = 'OTH'
      requester_id = 'REQ008' agent_id = 'AGT004'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000009' subject = 'Reopened login issue'
      description = 'Issue came back after fix'
      priority = 'P2' status = 'RPND' category = 'ACS'
      requester_id = 'REQ009' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000010' subject = 'Printer jam fixed'
      description = 'Paper jam on 3rd floor printer'
      priority = 'P3' status = 'RSLD' category = 'HW'
      requester_id = 'REQ010' agent_id = 'AGT002'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000011' subject = 'Guest wifi access closed'
      description = 'Temporary access expired, closed'
      priority = 'P4' status = 'CLSD' category = 'NW'
      requester_id = 'REQ001' agent_id = 'AGT003'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000012' subject = 'ERP system unresponsive'
      description = 'Core system down for whole team'
      priority = 'P1' status = 'PRGS' category = 'SW'
      requester_id = 'REQ002' agent_id = 'AGT004'
      created_at = lv_now due_date = lv_now
      is_breached = abap_true ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000013' subject = 'Docking station broken'
      description = 'External monitor not detected'
      priority = 'P2' status = 'NEW' category = 'HW'
      requester_id = 'REQ003' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000014' subject = 'Admin access request'
      description = 'Needs local admin rights, on hold for approval'
      priority = 'P1' status = 'HLD' category = 'ACS'
      requester_id = 'REQ004' agent_id = 'AGT002'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000015' subject = 'Facility badge replaced'
      description = 'Lost badge, new one issued'
      priority = 'P3' status = 'RSLD' category = 'OTH'
      requester_id = 'REQ005' agent_id = 'AGT003'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000016' subject = 'Software license query closed'
      description = 'Confirmed license valid, closed'
      priority = 'P4' status = 'CLSD' category = 'SW'
      requester_id = 'REQ006' agent_id = 'AGT004'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000017' subject = 'Slow network speed'
      description = 'Intermittent slowness reported'
      priority = 'P3' status = 'PRGS' category = 'NW'
      requester_id = 'REQ007' agent_id = 'AGT001'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000018' subject = 'Server reboot needed again'
      description = 'Same issue recurring, reopened'
      priority = 'P1' status = 'RPND' category = 'HW'
      requester_id = 'REQ008' agent_id = 'AGT002'
      created_at = lv_now due_date = lv_now
      is_breached = abap_true ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000019' subject = 'Shared drive access request'
      description = 'Needs read/write on team drive'
      priority = 'P4' status = 'NEW' category = 'ACS'
      requester_id = 'REQ009' agent_id = 'AGT003'
      created_at = lv_now due_date = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticketid = '0000000020' subject = 'Browser update issue fixed'
      description = 'Extension broke after update, fixed'
      priority = 'P2' status = 'RSLD' category = 'SW'
      requester_id = 'REQ010' agent_id = 'AGT004'
      created_at = lv_now due_date = lv_now resolved_at = lv_now
      is_breached = abap_false ) TO lt_ticket.

    APPEND VALUE #( ticket_id = '0000000001' activity_id = '0000000001'
      activity_text = 'Assigned to hardware team'
      created_by = 'AGT001' created_at = lv_now ) TO lt_actvty.

    APPEND VALUE #( ticket_id = '0000000002' activity_id = '0000000001'
      activity_text = 'Reinstalled VPN client, resolved'
      created_by = 'AGT002' created_at = lv_now ) TO lt_actvty.

    APPEND VALUE #( ticket_id = '0000000006' activity_id = '0000000001'
      activity_text = 'Escalated to network vendor'
      created_by = 'AGT002' created_at = lv_now ) TO lt_actvty.

    APPEND VALUE #( ticket_id = '0000000009' activity_id = '0000000001'
      activity_text = 'Requester reports issue recurred'
      created_by = 'REQ009' created_at = lv_now ) TO lt_actvty.

    APPEND VALUE #( ticket_id = '0000000012' activity_id = '0000000001'
      activity_text = 'Critical - all hands investigating'
      created_by = 'AGT004' created_at = lv_now ) TO lt_actvty.

    INSERT zrah_tix_ticket FROM TABLE @lt_ticket.
    INSERT zrah_tix_actvty FROM TABLE @lt_actvty.

    out->write( 'Seed data inserted.' ).

  ENDMETHOD.
ENDCLASS.

