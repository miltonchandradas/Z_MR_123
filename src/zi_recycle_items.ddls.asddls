@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface view of ZRECYCLE_ITEMS'

define root view entity ZI_RECYCLE_ITEMS
  as select from zrecycle_items as items
  association to ZI_WASTECENTRE as _wastecentre on $projection.Wastecentre_id = _wastecentre.Id
{
  key id                    as Id,
  key code                  as Code,
      type1                 as Type1,
      type2                 as Type2,
      type3                 as Type3,
      type4                 as Type4,
      type5                 as Type5,
      wastecentre_id        as Wastecentre_id,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,
      _wastecentre

}
