@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption view for lookup table'
define root view entity ZC_LOOKUP
  as select from ZI_LOOKUP
  --composition of target_data_source_name as _association_name
{
  key  Id_object as Id_object,
       Name1,
       Name2,
       Name3,
       Info,
       LastChangedAt,
       LocalLastChangedAt

       -- _association_name // Make association public
}
