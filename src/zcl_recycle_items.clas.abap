CLASS zcl_recycle_items DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RECYCLE_ITEMS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DELETE FROM zrecycle_items.
  DATA wa_recycle_items TYPE zrecycle_items.
 DATA it_recycle_items_data type STANDARD TABLE OF zrecycle_items.

   DATA it_zrecycle_items_data type STANDARD TABLE OF zrecycle_items.

wa_recycle_items-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).

    wa_recycle_items-code = 'wood'.

   wa_recycle_items-type1 = 'leftover from building site'.

    wa_recycle_items-type2 = 'cannot be recycled as fuel'.

    wa_recycle_items-type3 = ''.

    wa_recycle_items-type4 = ''.

    wa_recycle_items-type5 = ''.

    wa_recycle_items-wastecentre_id = ''.


    APPEND wa_recycle_items TO it_zrecycle_items_data.

    INSERT zrecycle_items FROM TABLE @it_zrecycle_items_data.


    COMMIT WORK.


  ENDMETHOD.
ENDCLASS.
