CLASS zcl_carga_data_so_8080 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_data_so_8080 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data: lt_sorder type table of zsorders_h_8080,
          lt_sorder_item    type table of zsord_item_8080.


******** TABLA1 ********
    "fill internal table
    lt_sorder = VALUE #(
      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_id = '0000001' email = 'alice.smith@example.com'
        first_name = 'Alice' last_name = 'Smith' country = 'USA' create_on = '20250502' delivery_date = '20250508'
        order_status = '1' image_url = 'https://example.com/images/order_SO00001.jpg' )
      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_id = '0000002' email = 'bob.johnson@example.com'
        first_name = 'Bob' last_name = 'Johnson' country = 'Germany' create_on = '20250503' delivery_date = '20250511'
        order_status = '2' image_url = 'https://example.com/images/order_SO00002.jpg' )
      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_id = '0000003' email = 'carol.williams@example.com'
        first_name = 'Carol' last_name = 'Williams' country = 'Spain' create_on = '20250504' delivery_date = '20250515'
        order_status = '3' image_url = 'https://example.com/images/order_SO00003.jpg' )
      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_id = '0000004' email = 'david.brown@example.com'
        first_name = 'David' last_name = 'Brown' country = 'France' create_on = '20250505' delivery_date = '20250517'
        order_status = '4' image_url = 'https://example.com/images/order_SO00004.jpg' )
      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_id = '0000005' email = 'eva.jones@example.com'
        first_name = 'Eva' last_name = 'Jones' country = 'UK' create_on = '20250506' delivery_date = '20250512'
        order_status = '5' image_url = 'https://example.com/images/order_SO00005.jpg' )
      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_id = '0000006' email = 'frank.miller@example.com'
        first_name = 'Frank' last_name = 'Miller' country = 'Canada' create_on = '20250507' delivery_date = '20250513'
        order_status = '1' image_url = 'https://example.com/images/order_SO00006.jpg' )
      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_id = '0000007' email = 'grace.davis@example.com'
        first_name = 'Grace' last_name = 'Davis' country = 'Australia' create_on = '20250508' delivery_date = '20250518'
        order_status = '2' image_url = 'https://example.com/images/order_SO00007.jpg' )
      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_id = '0000008' email = 'hank.wilson@example.com'
        first_name = 'Hank' last_name = 'Wilson' country = 'Japan' create_on = '20250509' delivery_date = '20250519'
        order_status = '3' image_url = 'https://example.com/images/order_SO00008.jpg' )
      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_id = '0000009' email = 'ivy.taylor@example.com'
        first_name = 'Ivy' last_name = 'Taylor' country = 'China' create_on = '20250510' delivery_date = '20250522'
        order_status = '4' image_url = 'https://example.com/images/order_SO00009.jpg' )
      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_id = '0000010' email = 'jack.anderson@example.com'
        first_name = 'Jack' last_name = 'Anderson' country = 'Brazil' create_on = '20250511' delivery_date = '20250519'
        order_status = '5' image_url = 'https://example.com/images/order_SO00010.jpg' )
      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_id = '0000011' email = 'karen.thomas@example.com'
        first_name = 'Karen' last_name = 'Thomas' country = 'USA' create_on = '20250512' delivery_date = '20250521'
        order_status = '1' image_url = 'https://example.com/images/order_SO00011.jpg' )
      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_id = '0000012' email = 'leo.jackson@example.com'
        first_name = 'Leo' last_name = 'Jackson' country = 'Germany' create_on = '20250513' delivery_date = '20250520'
        order_status = '2' image_url = 'https://example.com/images/order_SO00012.jpg' )
      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_id = '0000013' email = 'mona.white@example.com'
        first_name = 'Mona' last_name = 'White' country = 'Spain' create_on = '20250514' delivery_date = '20250526'
        order_status = '3' image_url = 'https://example.com/images/order_SO00013.jpg' )
      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_id = '0000014' email = 'nate.harris@example.com'
        first_name = 'Nate' last_name = 'Harris' country = 'France' create_on = '20250515' delivery_date = '20250525'
        order_status = '4' image_url = 'https://example.com/images/order_SO00014.jpg' )
      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_id = '0000015' email = 'olivia.martin@example.com'
        first_name = 'Olivia' last_name = 'Martin' country = 'UK' create_on = '20250516' delivery_date = '20250524'
        order_status = '5' image_url = 'https://example.com/images/order_SO00015.jpg' )
      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_id = '0000016' email = 'paul.thompson@example.com'
        first_name = 'Paul' last_name = 'Thompson' country = 'Canada' create_on = '20250517' delivery_date = '20250530'
        order_status = '1' image_url = 'https://example.com/images/order_SO00016.jpg' )
      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_id = '0000017' email = 'quinn.garcia@example.com'
        first_name = 'Quinn' last_name = 'Garcia' country = 'Australia' create_on = '20250518' delivery_date = '20250528'
        order_status = '2' image_url = 'https://example.com/images/order_SO00017.jpg' )
      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_id = '0000018' email = 'rachel.martinez@example.com'
        first_name = 'Rachel' last_name = 'Martinez' country = 'Japan' create_on = '20250519' delivery_date = '20250527'
        order_status = '3' image_url = 'https://example.com/images/order_SO00018.jpg' )
      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_id = '0000019' email = 'steve.robinson@example.com'
        first_name = 'Steve' last_name = 'Robinson' country = 'China' create_on = '20250520' delivery_date = '20250529'
        order_status = '4' image_url = 'https://example.com/images/order_SO00019.jpg' )
      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_id = '0000020' email = 'tina.clark@example.com'
        first_name = 'Tina' last_name = 'Clark' country = 'Brazil' create_on = '20250521' delivery_date = '20250531'
        order_status = '5' image_url = 'https://example.com/images/order_SO00020.jpg' )
    ).

    "Delete possible entries; insert 1 entries
    delete from zsorders_h_8080.
    insert zsorders_h_8080 from table @lt_sorder.

    if sy-subrc eq 0.
      out->write( |Ordenes de venta: { sy-dbcnt } registros insertados| ).
    endif.

******** z349_catego ********
    "fill internal table
    lt_sorder_item = VALUE #(
      "----- Ítems para SO00001 -----
      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '001' sorder_id = '0000001'
        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '002' sorder_id = '0000001'
        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '003' sorder_id = '0000001'
        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '3' unit_measure = 'ST' )

      "----- Ítems para SO00002 -----
      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '001' sorder_id = '0000002'
        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '002' sorder_id = '0000002'
        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '003' sorder_id = '0000002'
        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00003 -----
      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '001' sorder_id = '0000003'
        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '002' sorder_id = '0000003'
        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '003' sorder_id = '0000003'
        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '5' unit_measure = 'ST' )

      "----- Ítems para SO00004 -----
      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '001' sorder_id = '0000004'
        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '002' sorder_id = '0000004'
        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '003' sorder_id = '0000004'
        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00005 -----
      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '001' sorder_id = '0000005'
        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '002' sorder_id = '0000005'
        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '003' sorder_id = '0000005'
        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00006 -----
      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '001' sorder_id = '0000006'
        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '002' sorder_id = '0000006'
        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '003' sorder_id = '0000006'
        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '2' unit_measure = 'ST' )

      "----- Ítems para SO00007 -----
      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '001' sorder_id = '0000007'
        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '002' sorder_id = '0000007'
        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '003' sorder_id = '0000007'
        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '2' unit_measure = 'ST' )

      "----- Ítems para SO00008 -----
      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '001' sorder_id = '0000008'
        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '002' sorder_id = '0000008'
        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '4' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '003' sorder_id = '0000008'
        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00009 -----
      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '001' sorder_id = '0000009'
        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '3' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '002' sorder_id = '0000009'
        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '003' sorder_id = '0000009'
        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00010 -----
      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '001' sorder_id = '0000010'
        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '002' sorder_id = '0000010'
        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '003' sorder_id = '0000010'
        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '2' unit_measure = 'ST' )

      "----- Ítems para SO00011 -----
      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '001' sorder_id = '0000011'
        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '002' sorder_id = '0000011'
        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '3' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '003' sorder_id = '0000011'
        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00012 -----
      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '001' sorder_id = '0000012'
        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '002' sorder_id = '0000012'
        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '003' sorder_id = '0000012'
        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '2' unit_measure = 'ST' )

      "----- Ítems para SO00013 -----
      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '001' sorder_id = '0000013'
        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '002' sorder_id = '0000013'
        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '003' sorder_id = '0000013'
        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00014 -----
      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '001' sorder_id = '0000014'
        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '002' sorder_id = '0000014'
        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '003' sorder_id = '0000014'
        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '3' unit_measure = 'ST' )

      "----- Ítems para SO00015 -----
      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '001' sorder_id = '0000015'
        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '002' sorder_id = '0000015'
        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '003' sorder_id = '0000015'
        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00016 -----
      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '001' sorder_id = '0000016'
        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '002' sorder_id = '0000016'
        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '003' sorder_id = '0000016'
        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '5' unit_measure = 'ST' )

      "----- Ítems para SO00017 -----
      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '001' sorder_id = '0000017'
        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '002' sorder_id = '0000017'
        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '003' sorder_id = '0000017'
        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00018 -----
      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '001' sorder_id = '0000018'
        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '2' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '002' sorder_id = '0000018'
        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '3' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '003' sorder_id = '0000018'
        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )

      "----- Ítems para SO00019 -----
      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '001' sorder_id = '0000019'
        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '002' sorder_id = '0000019'
        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '003' sorder_id = '0000019'
        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '2' unit_measure = 'ST' )

      "----- Ítems para SO00020 -----
      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '001' sorder_id = '0000020'
        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '002' sorder_id = '0000020'
        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '003' sorder_id = '0000020'
        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '4' unit_measure = 'ST' )
    ).

    "Delete possible entries; insert 1 entries
    delete from zsord_item_8080.
    insert zsord_item_8080 from table @lt_sorder_item.

    if sy-subrc eq 0.
      out->write( |Detalle Ordenes de venta: { sy-dbcnt } registros insertados| ).
    endif.


    "Check result in console
    out->write( 'DONE!' ).


  ENDMETHOD.
ENDCLASS.
