@AbapCatalog.sqlViewName: 'IBUPADDRILN'
@AbapCatalog.compiler.compareFilter: true
@ClientHandling.algorithm : #SESSION_VARIABLE
@VDM.viewType: #BASIC
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #REQUIRED
@AccessControl.privilegedAssociations: '_AddressDefaultRepresentation'
@ObjectModel.supportedCapabilities: [#SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET]
@EndUserText.label: 'Business Partner Address-Dependent ILN'
@ObjectModel.representativeKey:'AddressID'
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER

define view I_BPAddrDepdntIntlLocNumber
  as select from but022 as BusinessPartnerAddrDepILN

  association [1..1] to I_BusinessPartner as _BusinessPartner              on  $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [1..1] to I_Address_2       as _AddressDefaultRepresentation on  $projection.AddressID                                   = _AddressDefaultRepresentation.AddressID
                                                                           and _AddressDefaultRepresentation.AddressRepresentationCode = ' '
{
  key BusinessPartner,
  key AddressID,
      InternationalLocationNumber1,
      InternationalLocationNumber2,
      InternationalLocationNumber3,
      AuthorizationGroup
}