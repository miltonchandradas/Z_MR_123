@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption view for lookup table'
define root view entity ZC_TOOTHBRUSH
  as select from ZI_TOOTHBRUSH
  --composition of target_data_source_name as _association_name
{
  key  id_object as id_object,
    name1     as name1,
      info      as info,
      shop1     as shop1,
      shop2     as shop2

}

