@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view of ZWASTECENTRE'

define root view entity ZI_WASTECENTRE
  as select from zwastecentre as WasteCentre
    association to ZI_RECYCLE_ITEMS as _RecycleItems
    on $projection.Id = _RecycleItems.Wastecentre_id
{
  key id                    as Id,
      name                  as Name,
      streetnumber          as Streetnumber,
      streetname            as Streetname,
      city                  as City,
      postalcode            as Postalcode,
      county                as County,
      telephonenumber       as Telephonenumber,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _RecycleItems

}

