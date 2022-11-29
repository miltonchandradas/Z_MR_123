@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface view of toothbrush'
define root view entity ZI_TOOTHBRUSH
  as select from zraptoothbrush as toothbrush
  association to ZI_LOOKUP as _lookup on $projection.id_object = _lookup.Id_object
{

  key id_object as id_object,
      name1     as name1,
      info      as info,
      shop1     as shop1,
      shop2     as shop2

}



