@AbapCatalog.sqlViewName: 'IBUPATAXNUMBER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm : #SESSION_VARIABLE
@VDM.viewType: #BASIC
@AbapCatalog.compiler.compareFilter: true
@EndUserText.label: 'Core view for Tax Number'
@AccessControl.personalData.blocking: #NOT_REQUIRED

@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XXL
@ObjectModel.usageType.dataClass: #MASTER

define view I_Businesspartnertaxnumber
  as select from dfkkbptaxnum as BusinessPartnerTaxNumber

  association [1..1] to I_BusinessPartner    as _BusinessPartner on $projection.BusinessPartner = _BusinessPartner.BusinessPartner
  association [0..*] to I_BusPartTaxTypeText as _TaxCategoryText on $projection.BPTaxType = _TaxCategoryText.BPTaxType
{
  key BusinessPartner,
  key BPTaxType,
      BPTaxNumber,
      BPTaxLongNumber,
      AuthorizationGroup
}