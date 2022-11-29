CLASS zcl_initial_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_INITIAL_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   DELETE FROM zwastecentre.
  DATA wa_wastecenter TYPE zwastecentre.
  DATA it_wastecentre_data type STANDARD TABLE OF zwastecentre.


    wa_wastecenter-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).

    wa_wastecenter-name = 'Waste Center A'.

    wa_wastecenter-streetnumber = 101.

    wa_wastecenter-streetname = 'Street Name - A'.

    wa_wastecenter-city = 'City A'.

    wa_wastecenter-postalcode = '55555'.

    wa_wastecenter-county = 'County A'.

    wa_wastecenter-telephonenumber = '555 555 5555'.



    APPEND wa_wastecenter TO it_wastecentre_data.

wa_wastecenter-id = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).

    wa_wastecenter-name = 'Waste Center B'.

    wa_wastecenter-streetnumber = 101.

    wa_wastecenter-streetname = 'Street Name - B'.

    wa_wastecenter-city = 'City B'.

    wa_wastecenter-postalcode = '55575'.

    wa_wastecenter-county = 'County B'.

    wa_wastecenter-telephonenumber = '555 555 5554'.



    APPEND wa_wastecenter TO it_wastecentre_data.

    INSERT zwastecentre FROM TABLE @it_wastecentre_data.



    COMMIT WORK.



    out->write( 'WasteCenter demo data inserted...' ).
  ENDMETHOD.
ENDCLASS.
