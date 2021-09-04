CLASS zcl_ral_eml_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RAL_EML_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  DATA: it_mytravels TYPE TABLE OF ZC_RAP_Travel_01.
*
*  it_mytravels = VALUE #( ( TravelUUID ='33EA25C040B1A5A11700070244FEA7D4' TravelID ='00000032' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000599' CustomerName ='Ryan' BeginDate ='20210501' EndDate ='20210501' BookingFee ='20.00 '
*TotalPrice ='1406.00 ' CurrencyCode ='USD' Description ='Vacation' TravelStatus ='O' CreatedBy ='Jeremias' CreatedAt ='20210407074124.0000000 ' LastChangedBy ='Heller' LastChangedAt ='20210407003056.0000000 ' LocalLastChangedAt ='20210407003056.0000000 '
*)
* ( TravelUUID ='7BEA25C040B1A5A11700070244FEA7D4' TravelID ='00000104' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000440' CustomerName ='Gahl' BeginDate ='20210427' EndDate ='20210427' BookingFee ='10.00 ' TotalPrice ='1597.00 '
*CurrencyCode ='EUR' Description ='Vacation' TravelStatus ='O' CreatedBy ='Kramer' CreatedAt ='20210405143323.0000000 ' LastChangedBy ='Weiss' LastChangedAt ='20210405125200.0000000 ' LocalLastChangedAt ='20210405125200.0000000 '  )
* ( TravelUUID ='8BEA25C040B1A5A11700070244FEA7D4' TravelID ='00000120' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000100' CustomerName ='Detemple' BeginDate ='20210427' EndDate ='20210427' BookingFee ='20.00 ' TotalPrice ='3305.00 '
*CurrencyCode ='EUR' Description ='Vacation' TravelStatus ='O' CreatedBy ='Kreiss' CreatedAt ='20210410143006.0000000 ' LastChangedBy ='Miguel' LastChangedAt ='20210410102546.0000000 ' LocalLastChangedAt ='20210410102546.0000000 '  )
* ( TravelUUID ='A7EA25C040B1A5A11700070244FEA7D4' TravelID ='00000148' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000696' CustomerName ='Leisert' BeginDate ='20210427' EndDate ='20210427' BookingFee ='10.00 ' TotalPrice ='2144.00 '
*CurrencyCode ='EUR' Description ='Vacation' TravelStatus ='O' CreatedBy ='Detemple' CreatedAt ='20210407061057.0000000 ' LastChangedBy ='Goelke' LastChangedAt ='20210407022918.0000000 ' LocalLastChangedAt ='20210407022918.0000000 '  )
* ( TravelUUID ='D8EA25C040B1A5A11700070244FEA7D4' TravelID ='00000197' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000166' CustomerName ='Hoffen' BeginDate ='20210429' EndDate ='20210429' BookingFee ='20.00 ' TotalPrice ='10313.00 '
*CurrencyCode ='SGD' Description ='Vacation' TravelStatus ='O' CreatedBy ='Zimmermann' CreatedAt ='20210405091539.0000000 ' LastChangedBy ='D´Oultrement' LastChangedAt ='20210405124919.0000000 ' LocalLastChangedAt ='20210405124919.0000000 '  )
* ( TravelUUID ='129627A4B4771EDBBB94E8D49B5A2739' TravelID ='65777549' AgencyID ='070001' AgencyName ='Sunshine Travel' CustomerID ='000002' CustomerName ='Buchholm' BeginDate ='20210724' EndDate ='20210729' BookingFee ='1450.00 ' TotalPrice ='1450.00 '
*CurrencyCode ='USD' Description ='Test' TravelStatus ='A' CreatedBy ='CB9980000118' CreatedAt ='20210724174756.5300700 ' LastChangedBy ='CB9980000118' LastChangedAt ='20210724174848.7421390 ' LocalLastChangedAt ='20210724174848.7421390 '  )
* ).

*    "step 1 - READ
*        read ENTITIES of zi_rap_travel_01
*            ENTITY Travel
*                from value #( ( TravelUUID = '1DEA25C040B1A5A11700070244FEA7D4' ) )
*        RESULT data(travels).
*
*        out->write( travels ).

*    "step 2 - Read with fields
*    READ ENTITIES OF zi_rap_travel_01
*        ENTITY Travel
*            FIELDS ( AgencyID CustomerID )
*           WITH VALUE #( ( TravelUUID = '1DEA25C040B1A5A11700070244FEA7D4' ) )
*    RESULT DATA(travels).

*    out->write( travels ).

*   "step 3 - Read with all fields
*    READ ENTITIES OF zi_rap_travel_01
*        ENTITY Travel
*            ALL FIELDS WITH VALUE #( ( TravelUUID = '1DEA25C040B1A5A11700070244FEA7D4' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

**    "step 4 - Read with all fields from association
*    READ ENTITIES OF zi_rap_travel_01
*        ENTITY Travel BY \_Booking
*            ALL FIELDS WITH VALUE #( ( TravelUUID = '1DEA25C040B1A5A11700070244FEA7D4' ) )
*    RESULT DATA(bookings).
*
*    out->write( bookings ).

*    "step 5 - Unsuccessful Read
*    READ ENTITIES OF zi_rap_travel_01
*        ENTITY Travel
*            ALL FIELDS WITH VALUE #( ( TravelUUID = 'DEA25C040B1A5A11700070244FEA7D4' ) )
*    RESULT DATA(travels)
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).
*    out->write( reported ).

*    "   step 6 - Modify update
*    MODIFY ENTITIES OF ZI_RAP_Travel_01
*        ENTITY travel
*            UPDATE
*                SET FIELDS WITH VALUE
*                #( ( TravelUUID  = '1DEA25C040B1A5A11700070244FEA7D4'
*                     Description = 'Test modify 01' ) )
*
*            FAILED DATA(failed)
*            REPORTED DATA(reported).
*
*    out->write( failed ).
*    out->write( reported ).
*
*    out->write( 'Update done' ).
*
*
*      COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_01
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).


        "   step 6 - Modify update
    MODIFY ENTITIES OF ZI_RAP_Travel_01
        ENTITY travel
            DELETE FROM
               VALUE
                #( ( TravelUUID  = '1DEA25C040B1A5A11700070244FEA7D4'  ) )
            FAILED DATA(failed)
            REPORTED DATA(reported).

    out->write( failed ).
    out->write( reported ).

    out->write( 'Update done' ).


      COMMIT ENTITIES
      RESPONSE OF ZI_RAP_Travel_01
      FAILED     DATA(failed_commit)
      REPORTED   DATA(reported_commit).

    out->write( 'Delete done' ).



*        " step 6 - MODIFY Update
*     MODIFY ENTITIES OF ZI_RAP_Travel_01
*       ENTITY travel
*         UPDATE
*           SET FIELDS WITH VALUE
*             #( ( TravelUUID  = '1DEA25C040B1A5A11700070244FEA7D4'
*                  Description = 'I like RAP@openSAP' ) )
*
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*     out->write( 'Update done' ).

  ENDMETHOD.
ENDCLASS.
