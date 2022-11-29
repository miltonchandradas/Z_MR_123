@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption view for lookup table'
define root view entity ZC_WASTECENTRE
  as select from ZI_WASTECENTRE
  --composition of target_data_source_name as _association_name
{
  key  Id as Id,
       Name,
       Streetnumber,
       Streetname,
       City,
       Postalcode,
       County,
       Telephonenumber,
       LastChangedAt,
       LocalLastChangedAt

}
