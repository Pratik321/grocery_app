@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCAGROCERY'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZCAC_GROCERY
  provider contract TRANSACTIONAL_QUERY
  as projection on ZCAR_GROCERY
  association [1..1] to ZCAR_GROCERY as _BaseEntity on $projection.ID = _BaseEntity.ID
{
  key ID,
  Product,
  Category,
  Brand,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  Quantity,
  Purchasedate,
  Expirationdate,
  Expired,
  Rating,
  Note,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  Createdat,
  @Semantics: {
    User.Lastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchanged,
  _BaseEntity
}
