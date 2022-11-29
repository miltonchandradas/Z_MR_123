CLASS zcl_toothbrush DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_TOOTHBRUSH IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  DELETE FROM zraptoothbrush.
  DATA wa_toothbrush TYPE zraptoothbrush.
  DATA it_toothbrush_data type STANDARD TABLE OF zraptoothbrush.

    DATA it_zraptoothbrush_data type STANDARD TABLE OF zraptoothbrush.

*     key alternativecode : mandt not null;
*  key id_object       : sysuuid_x16 not null;
*  name1               : abap.char(100);
*  info                : abap.char(100);
*  shop1               : abap.char(100);
*  shop2               : abap.char(100);

wa_toothbrush-alternativecode = 't2'.

*  wa_toothbrush-id_object = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).

    wa_toothbrush-name1 = 'only brush to replace'.

    wa_toothbrush-info = 'this toothbrush offers a replacement for the brush but still is possible to use the handle'.

    wa_toothbrush-shop1 = 'T shop'.

    wa_toothbrush-shop2 = 'A shop'.



    APPEND wa_toothbrush TO it_zraptoothbrush_data.
      INSERT zraptoothbrush FROM TABLE @it_zraptoothbrush_data.


    COMMIT WORK.


  ENDMETHOD.
ENDCLASS.
