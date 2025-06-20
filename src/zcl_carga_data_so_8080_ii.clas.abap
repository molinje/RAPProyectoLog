CLASS zcl_carga_data_so_8080_ii DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_data_so_8080_ii IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data: lt_sorder type table of zsorders_h_8080,
          lt_sorder_item    type table of zsord_item_8080.


******** TABLA1 ********
    "fill internal table
*    lt_sorder = VALUE #(
*      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_id = '0000001' email = 'alice.smith@example.com'
*        first_name = 'Alice' last_name = 'Smith' country = 'USA' create_on = '20250502' delivery_date = '20250508'
*        order_status = '1' image_url = 'https://example.com/images/order_SO00001.jpg' )
*      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_id = '0000002' email = 'bob.johnson@example.com'
*        first_name = 'Bob' last_name = 'Johnson' country = 'Germany' create_on = '20250503' delivery_date = '20250511'
*        order_status = '2' image_url = 'https://example.com/images/order_SO00002.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_id = '0000003' email = 'carol.williams@example.com'
*        first_name = 'Carol' last_name = 'Williams' country = 'Spain' create_on = '20250504' delivery_date = '20250515'
*        order_status = '3' image_url = 'https://example.com/images/order_SO00003.jpg' )
*      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_id = '0000004' email = 'david.brown@example.com'
*        first_name = 'David' last_name = 'Brown' country = 'France' create_on = '20250505' delivery_date = '20250517'
*        order_status = '4' image_url = 'https://example.com/images/order_SO00004.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_id = '0000005' email = 'eva.jones@example.com'
*        first_name = 'Eva' last_name = 'Jones' country = 'UK' create_on = '20250506' delivery_date = '20250512'
*        order_status = '5' image_url = 'https://example.com/images/order_SO00005.jpg' )
*      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_id = '0000006' email = 'frank.miller@example.com'
*        first_name = 'Frank' last_name = 'Miller' country = 'Canada' create_on = '20250507' delivery_date = '20250513'
*        order_status = '1' image_url = 'https://example.com/images/order_SO00006.jpg' )
*      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_id = '0000007' email = 'grace.davis@example.com'
*        first_name = 'Grace' last_name = 'Davis' country = 'Australia' create_on = '20250508' delivery_date = '20250518'
*        order_status = '2' image_url = 'https://example.com/images/order_SO00007.jpg' )
*      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_id = '0000008' email = 'hank.wilson@example.com'
*        first_name = 'Hank' last_name = 'Wilson' country = 'Japan' create_on = '20250509' delivery_date = '20250519'
*        order_status = '3' image_url = 'https://example.com/images/order_SO00008.jpg' )
*      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_id = '0000009' email = 'ivy.taylor@example.com'
*        first_name = 'Ivy' last_name = 'Taylor' country = 'China' create_on = '20250510' delivery_date = '20250522'
*        order_status = '4' image_url = 'https://example.com/images/order_SO00009.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_id = '0000010' email = 'jack.anderson@example.com'
*        first_name = 'Jack' last_name = 'Anderson' country = 'Brazil' create_on = '20250511' delivery_date = '20250519'
*        order_status = '5' image_url = 'https://example.com/images/order_SO00010.jpg' )
*      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_id = '0000011' email = 'karen.thomas@example.com'
*        first_name = 'Karen' last_name = 'Thomas' country = 'USA' create_on = '20250512' delivery_date = '20250521'
*        order_status = '1' image_url = 'https://example.com/images/order_SO00011.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_id = '0000012' email = 'leo.jackson@example.com'
*        first_name = 'Leo' last_name = 'Jackson' country = 'Germany' create_on = '20250513' delivery_date = '20250520'
*        order_status = '2' image_url = 'https://example.com/images/order_SO00012.jpg' )
*      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_id = '0000013' email = 'mona.white@example.com'
*        first_name = 'Mona' last_name = 'White' country = 'Spain' create_on = '20250514' delivery_date = '20250526'
*        order_status = '3' image_url = 'https://example.com/images/order_SO00013.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_id = '0000014' email = 'nate.harris@example.com'
*        first_name = 'Nate' last_name = 'Harris' country = 'France' create_on = '20250515' delivery_date = '20250525'
*        order_status = '4' image_url = 'https://example.com/images/order_SO00014.jpg' )
*      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_id = '0000015' email = 'olivia.martin@example.com'
*        first_name = 'Olivia' last_name = 'Martin' country = 'UK' create_on = '20250516' delivery_date = '20250524'
*        order_status = '5' image_url = 'https://example.com/images/order_SO00015.jpg' )
*      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_id = '0000016' email = 'paul.thompson@example.com'
*        first_name = 'Paul' last_name = 'Thompson' country = 'Canada' create_on = '20250517' delivery_date = '20250530'
*        order_status = '1' image_url = 'https://example.com/images/order_SO00016.jpg' )
*      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_id = '0000017' email = 'quinn.garcia@example.com'
*        first_name = 'Quinn' last_name = 'Garcia' country = 'Australia' create_on = '20250518' delivery_date = '20250528'
*        order_status = '2' image_url = 'https://example.com/images/order_SO00017.jpg' )
*      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_id = '0000018' email = 'rachel.martinez@example.com'
*        first_name = 'Rachel' last_name = 'Martinez' country = 'Japan' create_on = '20250519' delivery_date = '20250527'
*        order_status = '3' image_url = 'https://example.com/images/order_SO00018.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_id = '0000019' email = 'steve.robinson@example.com'
*        first_name = 'Steve' last_name = 'Robinson' country = 'China' create_on = '20250520' delivery_date = '20250529'
*        order_status = '4' image_url = 'https://example.com/images/order_SO00019.jpg' )
*      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_id = '0000020' email = 'tina.clark@example.com'
*        first_name = 'Tina' last_name = 'Clark' country = 'Brazil' create_on = '20250521' delivery_date = '20250531'
*        order_status = '5' image_url = 'https://example.com/images/order_SO00020.jpg' )
*    ).

    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CDDA0F3DFD394BD3A7B00C090D4079E4' order_id = 1001 email = 'user1@example.com' first_name = 'Carlos' last_name = 'García' country = 'FR' create_on = '20250602' delivery_date = '20250609' order_status = 5
image_url = 'http://example.com/images/1001.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '83B0146F25FF4A23852F85A16F780DEC' order_id = 1002 email = 'user2@example.com' first_name = 'Lucía' last_name = 'Martínez' country = 'MX' create_on = '20250603' delivery_date = '20250610' order_status =
5 image_url = 'http://example.com/images/1002.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '8A0C8D83F36547219AAA50EB0A072C44' order_id = 1003 email = 'user3@example.com' first_name = 'Andrés' last_name = 'Rodríguez' country = 'MX' create_on = '20250604' delivery_date = '20250611' order_status
= 4 image_url = 'http://example.com/images/1003.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BBC9CDD16520464AB9313E8D31035FF8' order_id = 1004 email = 'user4@example.com' first_name = 'María' last_name = 'López' country = 'FR' create_on = '20250605' delivery_date = '20250612' order_status = 2
image_url = 'http://example.com/images/1004.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '54E0116E1B4F4448AD1B4D40ABA5C165' order_id = 1005 email = 'user5@example.com' first_name = 'Fernando' last_name = 'Hernández' country = 'DE' create_on = '20250606' delivery_date = '20250613'
order_status = 5 image_url = 'http://example.com/images/1005.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A7EEF550F8F64B8BA56FA368E4D1E09B' order_id = 1006 email = 'user6@example.com' first_name = 'Ana' last_name = 'Pérez' country = 'DE' create_on = '20250607' delivery_date = '20250614' order_status = 1
image_url = 'http://example.com/images/1006.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '1696503A34BA4E6B897B3234CD9FCAE2' order_id = 1007 email = 'user7@example.com' first_name = 'Jorge' last_name = 'González' country = 'US' create_on = '20250608' delivery_date = '20250615' order_status =
1 image_url = 'http://example.com/images/1007.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '69BBB8F9CB3F40C4A13BDCCAA03598B9' order_id = 1008 email = 'user8@example.com' first_name = 'Laura' last_name = 'Sánchez' country = 'DE' create_on = '20250609' delivery_date = '20250616' order_status = 5
image_url = 'http://example.com/images/1008.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '00357263290848129BDBC47854349697' order_id = 1009 email = 'user9@example.com' first_name = 'Pedro' last_name = 'Ramírez' country = 'MX' create_on = '20250610' delivery_date = '20250617' order_status = 1
image_url = 'http://example.com/images/1009.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '27D04E307DB24B5FA51C02E4BAF70C3F' order_id = 1010 email = 'user10@example.com' first_name = 'Isabel' last_name = 'Torres' country = 'BR' create_on = '20250611' delivery_date = '20250618' order_status =
2 image_url = 'http://example.com/images/1010.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '90EF3A6E500A435F8AB4EDA1BD03FF1E' order_id = 1011 email = 'user11@example.com' first_name = 'Luis' last_name = 'Flores' country = 'BR' create_on = '20250612' delivery_date = '20250619' order_status = 5
image_url = 'http://example.com/images/1011.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '053574EA13AA4FE7A214A5C9FBBF8D30' order_id = 1012 email = 'user12@example.com' first_name = 'Sofía' last_name = 'Rivera' country = 'DE' create_on = '20250613' delivery_date = '20250620' order_status = 3
image_url = 'http://example.com/images/1012.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '0C2F8C23569247C98CC80796C3274C2C' order_id = 1013 email = 'user13@example.com' first_name = 'Diego' last_name = 'Castro' country = 'BR' create_on = '20250614' delivery_date = '20250621' order_status = 1
image_url = 'http://example.com/images/1013.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A13167F46F4E4CAC9A942D7049BDF323' order_id = 1014 email = 'user14@example.com' first_name = 'Camila' last_name = 'Ortiz' country = 'MX' create_on = '20250615' delivery_date = '20250622' order_status = 5
image_url = 'http://example.com/images/1014.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '4F429AB446914B19A82DCA6FB885EA88' order_id = 1015 email = 'user15@example.com' first_name = 'Raúl' last_name = 'Jiménez' country = 'FR' create_on = '20250616' delivery_date = '20250623' order_status = 5
image_url = 'http://example.com/images/1015.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '46B2027799924659AB326F4950B36894' order_id = 1016 email = 'user16@example.com' first_name = 'Valeria' last_name = 'Ruiz' country = 'FR' create_on = '20250617' delivery_date = '20250624' order_status = 2
image_url = 'http://example.com/images/1016.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CF5F77D7B1F84CF08ED563E29C06DA6F' order_id = 1017 email = 'user17@example.com' first_name = 'Tomás' last_name = 'Morales' country = 'US' create_on = '20250618' delivery_date = '20250625' order_status =
3 image_url = 'http://example.com/images/1017.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'F1884078FBF24F8AA4738B07006B9323' order_id = 1018 email = 'user18@example.com' first_name = 'Gabriela' last_name = 'Vargas' country = 'DE' create_on = '20250619' delivery_date = '20250626' order_status
= 4 image_url = 'http://example.com/images/1018.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'E44EB62EDDF8424F833AF61A1C8B286D' order_id = 1019 email = 'user19@example.com' first_name = 'Mateo' last_name = 'Navarro' country = 'US' create_on = '20250620' delivery_date = '20250627' order_status =
4 image_url = 'http://example.com/images/1019.jpg' ) TO lt_sorder.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BC817B98065C477AB443EC8BD907EF92' order_id = 1020 email = 'user20@example.com' first_name = 'Paula' last_name = 'Delgado' country = 'US' create_on = '20250621' delivery_date = '20250628' order_status =
4 image_url = 'http://example.com/images/1020.jpg' ) TO lt_sorder.
    "Delete possible entries; insert 1 entries
    delete from zsorders_h_8080.
    insert zsorders_h_8080 from table @lt_sorder.

    if sy-subrc eq 0.
      out->write( |Ordenes de venta: { sy-dbcnt } registros insertados| ).
    endif.

******** z349_catego ********
    "fill internal table
*    lt_sorder_item = VALUE #(
*      "----- Ítems para SO00001 -----
*      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '001' sorder_id = '0000001'
*        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
*        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '002' sorder_id = '0000001'
*        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
*        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '5E43E8B62A4D4D9E9A0852B48F23E720' order_item_id = '003' sorder_id = '0000001'
*        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
*        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '3' unit_measure = 'ST' )
*
*      "----- Ítems para SO00002 -----
*      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '001' sorder_id = '0000002'
*        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
*        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '002' sorder_id = '0000002'
*        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
*        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '7CE4D9F398B741DA8E7A1D4BBA05F9A1' order_item_id = '003' sorder_id = '0000002'
*        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
*        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00003 -----
*      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '001' sorder_id = '0000003'
*        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
*        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '002' sorder_id = '0000003'
*        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
*        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'E0D1FB1C5D5E4E32B2CB74C6F7722BA1' order_item_id = '003' sorder_id = '0000003'
*        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
*        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '5' unit_measure = 'ST' )
*
*      "----- Ítems para SO00004 -----
*      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '001' sorder_id = '0000004'
*        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
*        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '002' sorder_id = '0000004'
*        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
*        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '1A44CB639F8F46F8B5581B924FEBA1E5' order_item_id = '003' sorder_id = '0000004'
*        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
*        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00005 -----
*      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '001' sorder_id = '0000005'
*        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
*        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '002' sorder_id = '0000005'
*        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
*        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'BD863EC1353947B18ABB1EA0FF67EC52' order_item_id = '003' sorder_id = '0000005'
*        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
*        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00006 -----
*      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '001' sorder_id = '0000006'
*        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
*        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '002' sorder_id = '0000006'
*        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
*        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '409E7DAE6D5B4E55ACB42F8BD76B8713' order_item_id = '003' sorder_id = '0000006'
*        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
*        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '2' unit_measure = 'ST' )
*
*      "----- Ítems para SO00007 -----
*      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '001' sorder_id = '0000007'
*        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
*        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '002' sorder_id = '0000007'
*        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
*        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '7DB78DF04EC64BBB82E9FC7B3176A69A' order_item_id = '003' sorder_id = '0000007'
*        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
*        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '2' unit_measure = 'ST' )
*
*      "----- Ítems para SO00008 -----
*      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '001' sorder_id = '0000008'
*        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
*        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '002' sorder_id = '0000008'
*        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
*        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '4' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '56CFA3C85CB94C18B8F7BDF56E472C5E' order_item_id = '003' sorder_id = '0000008'
*        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
*        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00009 -----
*      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '001' sorder_id = '0000009'
*        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
*        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '3' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '002' sorder_id = '0000009'
*        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
*        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '2958F0B2E2304A19BEC990479E795DFA' order_item_id = '003' sorder_id = '0000009'
*        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
*        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00010 -----
*      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '001' sorder_id = '0000010'
*        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
*        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '002' sorder_id = '0000010'
*        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
*        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'A7BA572F1C114A6C82C14B767C9043D7' order_item_id = '003' sorder_id = '0000010'
*        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
*        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '2' unit_measure = 'ST' )
*
*      "----- Ítems para SO00011 -----
*      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '001' sorder_id = '0000011'
*        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
*        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '002' sorder_id = '0000011'
*        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
*        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '3' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '9A2FD2B1D0B94DE28CA02C2A5B6C8E71' order_item_id = '003' sorder_id = '0000011'
*        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
*        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00012 -----
*      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '001' sorder_id = '0000012'
*        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
*        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '002' sorder_id = '0000012'
*        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
*        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'F48C7D332FB848A993E77D6E3A4F9F12' order_item_id = '003' sorder_id = '0000012'
*        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
*        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '2' unit_measure = 'ST' )
*
*      "----- Ítems para SO00013 -----
*      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '001' sorder_id = '0000013'
*        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
*        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '002' sorder_id = '0000013'
*        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
*        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '4B9DD5A98C814A2A9B0EC834E9D99103' order_item_id = '003' sorder_id = '0000013'
*        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
*        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00014 -----
*      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '001' sorder_id = '0000014'
*        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
*        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '002' sorder_id = '0000014'
*        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
*        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'BD2AE7F6CCDF4C17ADB31F7E158EC830' order_item_id = '003' sorder_id = '0000014'
*        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
*        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '3' unit_measure = 'ST' )
*
*      "----- Ítems para SO00015 -----
*      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '001' sorder_id = '0000015'
*        name = 'Keyboard' description = 'Mechanical keyboard' reselase_date = '20240228' discount_date = '20240912'
*        price = '89.99' currency_code = 'USD' height = '5.50' width = '16.00' depth = '2.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '002' sorder_id = '0000015'
*        name = 'Monitor' description = '24-inch LED monitor' reselase_date = '20240510' discount_date = '20241215'
*        price = '199.99' currency_code = 'USD' height = '18.00' width = '28.00' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '992E5C020BDE469F9C065D8E3E0B1C94' order_item_id = '003' sorder_id = '0000015'
*        name = 'Webcam' description = 'HD webcam' reselase_date = '20241018' discount_date = '20250423'
*        price = '79.50' currency_code = 'USD' height = '6.00' width = '6.00' depth = '3.50' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00016 -----
*      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '001' sorder_id = '0000016'
*        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
*        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '002' sorder_id = '0000016'
*        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
*        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '029F1A488FA04E869F532E5B3BF1C29E' order_item_id = '003' sorder_id = '0000016'
*        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
*        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '5' unit_measure = 'ST' )
*
*      "----- Ítems para SO00017 -----
*      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '001' sorder_id = '0000017'
*        name = 'Laptop' description = 'High-performance laptop' reselase_date = '20240312' discount_date = '20241007'
*        price = '1450.37' currency_code = 'USD' height = '28.50' width = '22.87' depth = '3.14' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '002' sorder_id = '0000017'
*        name = 'Printer' description = 'Laser printer' reselase_date = '20240705' discount_date = '20250103'
*        price = '299.99' currency_code = 'USD' height = '15.20' width = '12.50' depth = '9.80' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '1E4C9D957B1B40DEBC0F690D4F8A3C7B' order_item_id = '003' sorder_id = '0000017'
*        name = 'Headset' description = 'Noise-cancelling headset' reselase_date = '20241102' discount_date = '20250502'
*        price = '129.00' currency_code = 'USD' height = '8.00' width = '7.50' depth = '2.50' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00018 -----
*      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '001' sorder_id = '0000018'
*        name = 'Router' description = 'Wireless router' reselase_date = '20240615' discount_date = '20250210'
*        price = '149.99' currency_code = 'USD' height = '10.00' width = '10.00' depth = '4.00' quantity = '2' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '002' sorder_id = '0000018'
*        name = 'USB Flash Drive' description = '64GB USB 3.0 flash drive' reselase_date = '20240930' discount_date = '20250328'
*        price = '19.99' currency_code = 'USD' height = '1.00' width = '0.50' depth = '0.30' quantity = '3' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = '6D3F8EABE08A46F6A6EE96C372AE9F35' order_item_id = '003' sorder_id = '0000018'
*        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
*        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '1' unit_measure = 'ST' )
*
*      "----- Ítems para SO00019 -----
*      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '001' sorder_id = '0000019'
*        name = 'External HDD' description = '1TB external hard drive' reselase_date = '20240422' discount_date = '20241119'
*        price = '89.00' currency_code = 'USD' height = '4.30' width = '11.00' depth = '1.50' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '002' sorder_id = '0000019'
*        name = 'Tablet' description = '10-inch tablet' reselase_date = '20240814' discount_date = '20250205'
*        price = '299.99' currency_code = 'USD' height = '0.50' width = '6.00' depth = '9.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'AC8B4B6F1D9D4C32BDF20D2A6B67BDC9' order_item_id = '003' sorder_id = '0000019'
*        name = 'Desk Lamp' description = 'LED desk lamp' reselase_date = '20241201' discount_date = '20250330'
*        price = '39.95' currency_code = 'USD' height = '5.00' width = '5.00' depth = '5.00' quantity = '2' unit_measure = 'ST' )
*
*      "----- Ítems para SO00020 -----
*      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '001' sorder_id = '0000020'
*        name = 'Graphics Card' description = 'High-end graphics card' reselase_date = '20240318' discount_date = '20241020'
*        price = '799.00' currency_code = 'USD' height = '12.00' width = '3.00' depth = '10.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '002' sorder_id = '0000020'
*        name = 'Smartphone' description = 'Latest model smartphone' reselase_date = '20240707' discount_date = '20250115'
*        price = '999.99' currency_code = 'USD' height = '0.30' width = '3.00' depth = '6.00' quantity = '1' unit_measure = 'ST' )
*      ( client = sy-dbcnt  order_uuid = 'DB7A5CD29F8E49B1842F5E49DFB6DBC5' order_item_id = '003' sorder_id = '0000020'
*        name = 'Mouse' description = 'Optical wireless mouse' reselase_date = '20240121' discount_date = '20240803'
*        price = '49.95' currency_code = 'USD' height = '4.50' width = '6.00' depth = '2.20' quantity = '4' unit_measure = 'ST' )
*    ).

    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CDDA0F3DFD394BD3A7B00C090D4079E4' order_item_uuid = 'FF306E5DEB0847C29AFC723B7BAF3557' order_item_id = 1 sorder_id = 1001 name = 'Desktop PC' description = 'Desktop PC - high performance' reselase_date
= '20250602' discount_date = '20250617' price = '417.88' currency_code = 'USD' height = '9.43' width = '8.36' depth = '15.97' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CDDA0F3DFD394BD3A7B00C090D4079E4' order_item_uuid = '373FBD433AE144A8A6C74EA4CFBF5DA5' order_item_id = 2 sorder_id = 1001 name = 'Monitor' description = 'Monitor - high performance' reselase_date =
'20250601' discount_date = '20250617' price = '697.84' currency_code = 'EUR' height = '7.64' width = '9.95' depth = '6.65' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CDDA0F3DFD394BD3A7B00C090D4079E4' order_item_uuid = 'D3BDBAB377734B40A566B82F5FD6E23A' order_item_id = 3 sorder_id = 1001 name = 'Keyboard' description = 'Keyboard - high performance' reselase_date =
'20250531' discount_date = '20250617' price = '1115.97' currency_code = 'USD' height = '7.90' width = '2.14' depth = '15.85' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '83B0146F25FF4A23852F85A16F780DEC' order_item_uuid = '6B7BFAF558544AA4A0C8CB01AC5CD4DE' order_item_id = 1 sorder_id = 1002 name = 'Monitor' description = 'Monitor - high performance' reselase_date =
'20250603' discount_date = '20250618' price = '166.99' currency_code = 'EUR' height = '8.51' width = '3.46' depth = '4.89' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '83B0146F25FF4A23852F85A16F780DEC' order_item_uuid = '9E55EB36F8954439B855235BE47183F7' order_item_id = 2 sorder_id = 1002 name = 'Keyboard' description = 'Keyboard - high performance' reselase_date =
'20250602' discount_date = '20250618' price = '781.58' currency_code = 'EUR' height = '8.24' width = '5.38' depth = '12.79' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '83B0146F25FF4A23852F85A16F780DEC' order_item_uuid = '5BC82F62D0B3468A924FA126D0B63FBD' order_item_id = 3 sorder_id = 1002 name = 'Mouse' description = 'Mouse - high performance' reselase_date =
'20250601' discount_date = '20250618' price = '608.96' currency_code = 'USD' height = '6.08' width = '9.91' depth = '9.43' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '8A0C8D83F36547219AAA50EB0A072C44' order_item_uuid = '8832BE63407D412CBDD4E8160E39CB64' order_item_id = 1 sorder_id = 1003 name = 'Keyboard' description = 'Keyboard - high performance' reselase_date =
'20250604' discount_date = '20250619' price = '383.41' currency_code = 'EUR' height = '2.44' width = '2.65' depth = '10.67' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '8A0C8D83F36547219AAA50EB0A072C44' order_item_uuid = '249B90D11B484F099C39DEBE3C35BDB1' order_item_id = 2 sorder_id = 1003 name = 'Mouse' description = 'Mouse - high performance' reselase_date =
'20250603' discount_date = '20250619' price = '1350.20' currency_code = 'USD' height = '8.77' width = '2.82' depth = '18.80' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '8A0C8D83F36547219AAA50EB0A072C44' order_item_uuid = '8C9B4E5F0325432B83DFADD374329508' order_item_id = 3 sorder_id = 1003 name = 'Printer' description = 'Printer - high performance' reselase_date =
'20250602' discount_date = '20250619' price = '179.24' currency_code = 'EUR' height = '6.79' width = '2.78' depth = '4.51' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BBC9CDD16520464AB9313E8D31035FF8' order_item_uuid = 'CB317A1262D84C94BDCC959DC73638CB' order_item_id = 1 sorder_id = 1004 name = 'Mouse' description = 'Mouse - high performance' reselase_date =
'20250605' discount_date = '20250620' price = '121.31' currency_code = 'USD' height = '1.85' width = '5.31' depth = '1.15' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BBC9CDD16520464AB9313E8D31035FF8' order_item_uuid = 'C39D513AFFFD40528D2424F1A14D2A7B' order_item_id = 2 sorder_id = 1004 name = 'Printer' description = 'Printer - high performance' reselase_date =
'20250604' discount_date = '20250620' price = '711.08' currency_code = 'USD' height = '8.37' width = '3.50' depth = '18.71' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BBC9CDD16520464AB9313E8D31035FF8' order_item_uuid = 'F546F73322444608BBD79ABDF2FB882B' order_item_id = 3 sorder_id = 1004 name = 'Webcam' description = 'Webcam - high performance' reselase_date =
'20250603' discount_date = '20250620' price = '608.37' currency_code = 'EUR' height = '2.68' width = '6.49' depth = '14.11' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '54E0116E1B4F4448AD1B4D40ABA5C165' order_item_uuid = 'E0C7FAB9FA5B4095804D3FA21E6D8C8A' order_item_id = 1 sorder_id = 1005 name = 'Printer' description = 'Printer - high performance' reselase_date =
'20250606' discount_date = '20250621' price = '889.89' currency_code = 'USD' height = '3.91' width = '9.87' depth = '3.41' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '54E0116E1B4F4448AD1B4D40ABA5C165' order_item_uuid = '77F9F8994F62405E8F1C35283EE81B49' order_item_id = 2 sorder_id = 1005 name = 'Webcam' description = 'Webcam - high performance' reselase_date =
'20250605' discount_date = '20250621' price = '529.76' currency_code = 'EUR' height = '7.43' width = '1.74' depth = '10.68' quantity = 1 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '54E0116E1B4F4448AD1B4D40ABA5C165' order_item_uuid = '92056BA256ED4C1DB7235A7227538C3F' order_item_id = 3 sorder_id = 1005 name = 'External HDD' description = 'External HDD - high performance'
reselase_date = '20250604' discount_date = '20250621' price = '1419.20' currency_code = 'EUR' height = '6.87' width = '6.16' depth = '13.45' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A7EEF550F8F64B8BA56FA368E4D1E09B' order_item_uuid = 'A6DCD903BCCF4D2F97F1E759EFA29D9F' order_item_id = 1 sorder_id = 1006 name = 'Webcam' description = 'Webcam - high performance' reselase_date =
'20250607' discount_date = '20250622' price = '1482.79' currency_code = 'EUR' height = '3.78' width = '9.48' depth = '18.88' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A7EEF550F8F64B8BA56FA368E4D1E09B' order_item_uuid = 'B7642EBC8A5E46DB8F202294EE53D463' order_item_id = 2 sorder_id = 1006 name = 'External HDD' description = 'External HDD - high performance'
reselase_date = '20250606' discount_date = '20250622' price = '699.85' currency_code = 'EUR' height = '3.98' width = '4.49' depth = '8.15' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A7EEF550F8F64B8BA56FA368E4D1E09B' order_item_uuid = 'AD8F4D2D4677479CAC0220900E9464BC' order_item_id = 3 sorder_id = 1006 name = 'SSD' description = 'SSD - high performance' reselase_date = '20250605'
discount_date = '20250622' price = '419.42' currency_code = 'EUR' height = '5.75' width = '2.22' depth = '18.76' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '1696503A34BA4E6B897B3234CD9FCAE2' order_item_uuid = '92CC9CC796CC455291FA51891197B7E1' order_item_id = 1 sorder_id = 1007 name = 'External HDD' description = 'External HDD - high performance'
reselase_date = '20250608' discount_date = '20250623' price = '852.37' currency_code = 'USD' height = '4.00' width = '9.63' depth = '7.44' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '1696503A34BA4E6B897B3234CD9FCAE2' order_item_uuid = '2383FB57B47040FE8170F7F3A7617B5A' order_item_id = 2 sorder_id = 1007 name = 'SSD' description = 'SSD - high performance' reselase_date = '20250607'
discount_date = '20250623' price = '424.45' currency_code = 'EUR' height = '3.00' width = '4.33' depth = '12.36' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '1696503A34BA4E6B897B3234CD9FCAE2' order_item_uuid = 'E5B838D4953141E4BAB37C4D60D20301' order_item_id = 3 sorder_id = 1007 name = 'Router' description = 'Router - high performance' reselase_date =
'20250606' discount_date = '20250623' price = '448.07' currency_code = 'EUR' height = '5.20' width = '3.98' depth = '18.47' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '69BBB8F9CB3F40C4A13BDCCAA03598B9' order_item_uuid = 'EA2B898E0A904A1DBB9F776FCFC66CBC' order_item_id = 1 sorder_id = 1008 name = 'SSD' description = 'SSD - high performance' reselase_date = '20250609'
discount_date = '20250624' price = '999.03' currency_code = 'EUR' height = '3.54' width = '1.71' depth = '12.77' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '69BBB8F9CB3F40C4A13BDCCAA03598B9' order_item_uuid = 'BCC3383272594E428F89438646A6DE3D' order_item_id = 2 sorder_id = 1008 name = 'Router' description = 'Router - high performance' reselase_date =
'20250608' discount_date = '20250624' price = '836.14' currency_code = 'EUR' height = '3.91' width = '1.05' depth = '14.79' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '69BBB8F9CB3F40C4A13BDCCAA03598B9' order_item_uuid = '61E70D7FEB82459A8F07B7F5763CC6F7' order_item_id = 3 sorder_id = 1008 name = 'Graphics Card' description = 'Graphics Card - high performance'
reselase_date = '20250607' discount_date = '20250624' price = '1058.52' currency_code = 'EUR' height = '5.92' width = '7.76' depth = '10.79' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '00357263290848129BDBC47854349697' order_item_uuid = '6BDF6E79CFAD47F88DD9F4D92E72444A' order_item_id = 1 sorder_id = 1009 name = 'Router' description = 'Router - high performance' reselase_date =
'20250610' discount_date = '20250625' price = '1196.59' currency_code = 'USD' height = '4.58' width = '2.53' depth = '4.83' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '00357263290848129BDBC47854349697' order_item_uuid = '0E1BDF8B1F974A65AAF6BBF62ECBE802' order_item_id = 2 sorder_id = 1009 name = 'Graphics Card' description = 'Graphics Card - high performance'
reselase_date = '20250609' discount_date = '20250625' price = '561.97' currency_code = 'EUR' height = '7.62' width = '8.30' depth = '3.53' quantity = 1 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '00357263290848129BDBC47854349697' order_item_uuid = 'EA421D686C5340A28B4E95187103F02C' order_item_id = 3 sorder_id = 1009 name = 'Motherboard' description = 'Motherboard - high performance'
reselase_date = '20250608' discount_date = '20250625' price = '309.72' currency_code = 'USD' height = '1.09' width = '2.27' depth = '4.95' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '27D04E307DB24B5FA51C02E4BAF70C3F' order_item_uuid = '26125A14983F4DB2A606600B71CEAD3A' order_item_id = 1 sorder_id = 1010 name = 'Graphics Card' description = 'Graphics Card - high performance'
reselase_date = '20250611' discount_date = '20250626' price = '839.69' currency_code = 'EUR' height = '7.54' width = '2.26' depth = '10.82' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '27D04E307DB24B5FA51C02E4BAF70C3F' order_item_uuid = '3FFF7090DE994019A90254440332F52F' order_item_id = 2 sorder_id = 1010 name = 'Motherboard' description = 'Motherboard - high performance'
reselase_date = '20250610' discount_date = '20250626' price = '958.27' currency_code = 'USD' height = '2.63' width = '8.30' depth = '1.53' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '27D04E307DB24B5FA51C02E4BAF70C3F' order_item_uuid = 'CC089BBAA27B4715BFC705EA1404E64B' order_item_id = 3 sorder_id = 1010 name = 'RAM' description = 'RAM - high performance' reselase_date = '20250609'
discount_date = '20250626' price = '769.38' currency_code = 'USD' height = '2.77' width = '2.75' depth = '19.80' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '90EF3A6E500A435F8AB4EDA1BD03FF1E' order_item_uuid = '9A57A2D51CF94D08961D3976680649EF' order_item_id = 1 sorder_id = 1011 name = 'Motherboard' description = 'Motherboard - high performance'
reselase_date = '20250612' discount_date = '20250627' price = '898.55' currency_code = 'USD' height = '7.15' width = '4.54' depth = '6.34' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '90EF3A6E500A435F8AB4EDA1BD03FF1E' order_item_uuid = 'D7417EC4C3BC4C5E892A2836EEA37EDB' order_item_id = 2 sorder_id = 1011 name = 'RAM' description = 'RAM - high performance' reselase_date = '20250611'
discount_date = '20250627' price = '446.77' currency_code = 'EUR' height = '9.47' width = '9.42' depth = '16.27' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '90EF3A6E500A435F8AB4EDA1BD03FF1E' order_item_uuid = '87B0EB7E59234883A0D483675537D2AE' order_item_id = 3 sorder_id = 1011 name = 'Power Supply' description = 'Power Supply - high performance'
reselase_date = '20250610' discount_date = '20250627' price = '1035.40' currency_code = 'EUR' height = '8.09' width = '7.22' depth = '13.95' quantity = 2 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '053574EA13AA4FE7A214A5C9FBBF8D30' order_item_uuid = 'C42D6054CC8D4F01B6E417762AD359A0' order_item_id = 1 sorder_id = 1012 name = 'RAM' description = 'RAM - high performance' reselase_date = '20250613'
discount_date = '20250628' price = '677.14' currency_code = 'USD' height = '8.19' width = '9.47' depth = '9.14' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '053574EA13AA4FE7A214A5C9FBBF8D30' order_item_uuid = 'A5686BD17F2F47F295E6036C40B30572' order_item_id = 2 sorder_id = 1012 name = 'Power Supply' description = 'Power Supply - high performance'
reselase_date = '20250612' discount_date = '20250628' price = '963.67' currency_code = 'USD' height = '3.69' width = '4.69' depth = '15.67' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '053574EA13AA4FE7A214A5C9FBBF8D30' order_item_uuid = '4F0B7230353A4A5E80B17B91724603E0' order_item_id = 3 sorder_id = 1012 name = 'CPU' description = 'CPU - high performance' reselase_date = '20250611'
discount_date = '20250628' price = '319.54' currency_code = 'EUR' height = '7.90' width = '4.55' depth = '19.28' quantity = 9 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '0C2F8C23569247C98CC80796C3274C2C' order_item_uuid = 'C35E40E572EE485BA620EFC5A15535EE' order_item_id = 1 sorder_id = 1013 name = 'Power Supply' description = 'Power Supply - high performance'
reselase_date = '20250614' discount_date = '20250629' price = '1475.97' currency_code = 'EUR' height = '6.01' width = '8.48' depth = '2.92' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '0C2F8C23569247C98CC80796C3274C2C' order_item_uuid = 'C978138900114986BE5F694B222670BE' order_item_id = 2 sorder_id = 1013 name = 'CPU' description = 'CPU - high performance' reselase_date = '20250613'
discount_date = '20250629' price = '1093.61' currency_code = 'EUR' height = '9.03' width = '8.99' depth = '1.56' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '0C2F8C23569247C98CC80796C3274C2C' order_item_uuid = 'A52063CF3E2345828EB657DA8DCA39F2' order_item_id = 3 sorder_id = 1013 name = 'Cooling Fan' description = 'Cooling Fan - high performance'
reselase_date = '20250612' discount_date = '20250629' price = '157.76' currency_code = 'EUR' height = '2.92' width = '8.95' depth = '8.71' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A13167F46F4E4CAC9A942D7049BDF323' order_item_uuid = '574E16F0EE1241CF96D3BF0F5B95CBDD' order_item_id = 1 sorder_id = 1014 name = 'CPU' description = 'CPU - high performance' reselase_date = '20250615'
discount_date = '20250630' price = '1088.09' currency_code = 'USD' height = '5.65' width = '1.74' depth = '9.45' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A13167F46F4E4CAC9A942D7049BDF323' order_item_uuid = 'D61B2D73F7F64B9AA02627C9F297BA9F' order_item_id = 2 sorder_id = 1014 name = 'Cooling Fan' description = 'Cooling Fan - high performance'
reselase_date = '20250614' discount_date = '20250630' price = '803.18' currency_code = 'EUR' height = '2.36' width = '8.19' depth = '3.28' quantity = 5 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'A13167F46F4E4CAC9A942D7049BDF323' order_item_uuid = 'ACDDB810BFB94A3AA8B711A4EFD15B25' order_item_id = 3 sorder_id = 1014 name = 'Headset' description = 'Headset - high performance' reselase_date =
'20250613' discount_date = '20250630' price = '283.62' currency_code = 'USD' height = '4.74' width = '6.78' depth = '11.64' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '4F429AB446914B19A82DCA6FB885EA88' order_item_uuid = '6C528C12D38A4BC4A379A3BFD4DB4570' order_item_id = 1 sorder_id = 1015 name = 'Cooling Fan' description = 'Cooling Fan - high performance'
reselase_date = '20250616' discount_date = '20250701' price = '447.51' currency_code = 'USD' height = '5.89' width = '3.93' depth = '19.40' quantity = 9 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '4F429AB446914B19A82DCA6FB885EA88' order_item_uuid = '9A3EB56920E74710BCA7FA0E29A61477' order_item_id = 2 sorder_id = 1015 name = 'Headset' description = 'Headset - high performance' reselase_date =
'20250615' discount_date = '20250701' price = '682.20' currency_code = 'USD' height = '9.90' width = '3.68' depth = '4.74' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '4F429AB446914B19A82DCA6FB885EA88' order_item_uuid = '6EB8324B2A2643748865DD93A8AB8888' order_item_id = 3 sorder_id = 1015 name = 'Microphone' description = 'Microphone - high performance' reselase_date
= '20250614' discount_date = '20250701' price = '1191.65' currency_code = 'EUR' height = '7.04' width = '2.20' depth = '17.04' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '46B2027799924659AB326F4950B36894' order_item_uuid = '74FD47758ECF4E7581F0429CC2D3675F' order_item_id = 1 sorder_id = 1016 name = 'Headset' description = 'Headset - high performance' reselase_date =
'20250617' discount_date = '20250702' price = '1096.22' currency_code = 'EUR' height = '4.35' width = '5.87' depth = '15.28' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '46B2027799924659AB326F4950B36894' order_item_uuid = 'D5432DCE28654685B6CE68783818BA61' order_item_id = 2 sorder_id = 1016 name = 'Microphone' description = 'Microphone - high performance' reselase_date
= '20250616' discount_date = '20250702' price = '323.79' currency_code = 'EUR' height = '2.92' width = '6.12' depth = '19.33' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = '46B2027799924659AB326F4950B36894' order_item_uuid = '47E23B6E5647411D89BDA57AF1F649C3' order_item_id = 3 sorder_id = 1016 name = 'Docking Station' description = 'Docking Station - high performance'
reselase_date = '20250615' discount_date = '20250702' price = '1011.19' currency_code = 'USD' height = '3.57' width = '1.91' depth = '19.24' quantity = 8 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CF5F77D7B1F84CF08ED563E29C06DA6F' order_item_uuid = 'EA2A488681F94C77AA50C4726486642B' order_item_id = 1 sorder_id = 1017 name = 'Microphone' description = 'Microphone - high performance' reselase_date
= '20250618' discount_date = '20250703' price = '1286.44' currency_code = 'USD' height = '3.65' width = '5.51' depth = '17.72' quantity = 4 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CF5F77D7B1F84CF08ED563E29C06DA6F' order_item_uuid = '8AC1093642AA46B3AEAE5240B542B8FE' order_item_id = 2 sorder_id = 1017 name = 'Docking Station' description = 'Docking Station - high performance'
reselase_date = '20250617' discount_date = '20250703' price = '1224.22' currency_code = 'USD' height = '8.38' width = '4.86' depth = '15.02' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'CF5F77D7B1F84CF08ED563E29C06DA6F' order_item_uuid = '374BB2E4ECD24914BB911D25BB40F909' order_item_id = 3 sorder_id = 1017 name = 'Tablet' description = 'Tablet - high performance' reselase_date =
'20250616' discount_date = '20250703' price = '696.31' currency_code = 'EUR' height = '1.97' width = '7.28' depth = '3.52' quantity = 7 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'F1884078FBF24F8AA4738B07006B9323' order_item_uuid = 'D7C9EC2FDFA041DC802F0DD7D769265E' order_item_id = 1 sorder_id = 1018 name = 'Docking Station' description = 'Docking Station - high performance'
reselase_date = '20250619' discount_date = '20250704' price = '695.27' currency_code = 'USD' height = '7.91' width = '4.29' depth = '4.03' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'F1884078FBF24F8AA4738B07006B9323' order_item_uuid = 'F75DC8C4D9A14165A7E3E8A13FBA4135' order_item_id = 2 sorder_id = 1018 name = 'Tablet' description = 'Tablet - high performance' reselase_date =
'20250618' discount_date = '20250704' price = '328.54' currency_code = 'EUR' height = '1.89' width = '8.80' depth = '17.06' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'F1884078FBF24F8AA4738B07006B9323' order_item_uuid = 'AC3ADFC4AB374976BCFE556520F6ECBF' order_item_id = 3 sorder_id = 1018 name = 'Laptop' description = 'Laptop - high performance' reselase_date =
'20250617' discount_date = '20250704' price = '605.48' currency_code = 'EUR' height = '6.98' width = '3.62' depth = '1.63' quantity = 1 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'E44EB62EDDF8424F833AF61A1C8B286D' order_item_uuid = 'C563D8FA4E8D4DACA722DB88B11229F1' order_item_id = 1 sorder_id = 1019 name = 'Tablet' description = 'Tablet - high performance' reselase_date =
'20250620' discount_date = '20250705' price = '764.22' currency_code = 'EUR' height = '6.77' width = '8.55' depth = '12.16' quantity = 10 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'E44EB62EDDF8424F833AF61A1C8B286D' order_item_uuid = 'F97F9700760341108384EEE6536E3719' order_item_id = 2 sorder_id = 1019 name = 'Laptop' description = 'Laptop - high performance' reselase_date =
'20250619' discount_date = '20250705' price = '1110.17' currency_code = 'USD' height = '5.98' width = '2.66' depth = '7.48' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'E44EB62EDDF8424F833AF61A1C8B286D' order_item_uuid = '7142BD01F6164CF5AA07CF5E4E27408B' order_item_id = 3 sorder_id = 1019 name = 'Desktop PC' description = 'Desktop PC - high performance' reselase_date
= '20250618' discount_date = '20250705' price = '859.55' currency_code = 'USD' height = '5.59' width = '3.20' depth = '19.26' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BC817B98065C477AB443EC8BD907EF92' order_item_uuid = '068D0DBE94DA45EF804919206D728F1D' order_item_id = 1 sorder_id = 1020 name = 'Laptop' description = 'Laptop - high performance' reselase_date =
'20250621' discount_date = '20250706' price = '568.41' currency_code = 'USD' height = '3.31' width = '1.21' depth = '5.01' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BC817B98065C477AB443EC8BD907EF92' order_item_uuid = '2FCFD206BCF74B0F9F70E74D2D11C24D' order_item_id = 2 sorder_id = 1020 name = 'Desktop PC' description = 'Desktop PC - high performance' reselase_date
= '20250620' discount_date = '20250706' price = '370.03' currency_code = 'USD' height = '3.53' width = '4.82' depth = '10.49' quantity = 6 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.
    APPEND VALUE #( client = sy-dbcnt order_uuid = 'BC817B98065C477AB443EC8BD907EF92' order_item_uuid = '15A7A97BA47046EE858B8498FCDCE61D' order_item_id = 3 sorder_id = 1020 name = 'Monitor' description = 'Monitor - high performance' reselase_date =
'20250619' discount_date = '20250706' price = '1272.61' currency_code = 'EUR' height = '9.78' width = '9.60' depth = '18.07' quantity = 3 unit_measure = 'EA' last_changed_at = 20250620100000 ) TO lt_sorder_item.

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
