CLASS zcl_initial_data_lookup DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INITIAL_DATA_LOOKUP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  DELETE FROM zraplookup.



DATA: wa_lookup TYPE zraplookup.
DATA: it_lookup_data TYPE STANDARD TABLE OF zraplookup.

DATA: it_zlookup_data TYPE STANDARD TABLE OF zraplookup.


wa_lookup-codeid = NEW cl_system_uuid( )->if_system_uuid~create_uuid_x16( ).

wa_lookup-name1 = 'toothbrush'.

wa_lookup-name2 = 'usable for 3/4 months only'.

wa_lookup-name3 = 'not recycle as made from different elements'.

wa_lookup-info = 'thrown after use'.



APPEND wa_lookup TO it_lookup_data.



INSERT zraplookup FROM TABLE @it_lookup_data.


COMMIT WORK.



out->write( 'WasteCenter demo data inserted...' ).
  ENDMETHOD.
ENDCLASS.
