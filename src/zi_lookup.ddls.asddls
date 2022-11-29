@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface view of lookup table'
define root view entity ZI_LOOKUP as select from zraplookup
--composition of target_data_source_name as _association_name
 {
  --codeid as codeId,
 key  id_object as Id_object,
  name1 as Name1,
  name2 as Name2,
  name3 as Name3,
  info as Info,
     @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
  --_association_name // Make association public
}

