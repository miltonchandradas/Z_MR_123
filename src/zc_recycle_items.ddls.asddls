@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption view for lookup table'
define root view entity ZC_RECYCLE_ITEMS
  as select from ZI_RECYCLE_ITEMS
  --composition of target_data_source_name as _association_name
{
  key  Id as Id,
  key  Code as Code,
       Type1,
       Type2,
       Type3,
       Type4,
       LastChangedAt,
       LocalLastChangedAt

}
