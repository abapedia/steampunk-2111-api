@AbapCatalog.sqlViewName: 'IBUPAIS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@AccessControl.personalData.blocking: #NOT_REQUIRED
@EndUserText.label: 'Core View for BUT0IS'
@VDM.viewType: #BASIC
@ObjectModel.usageType.serviceQuality: #A
@ObjectModel.usageType.sizeCategory: #XL
@ObjectModel.usageType.dataClass: #MASTER
@ClientHandling.algorithm: #SESSION_VARIABLE

define view I_BusinessPartnerIndustry
  as select from but0is
  
    association [1..1] to I_BusinessPartner as _BusinessPartner    on _BusinessPartner.BusinessPartner  = $projection.BusinessPartner
    association [1..1] to I_Industrykeysystemtexts as _Text on  $projection.IndustrySystemType = _Text.IndustrySystemType
                                                            and $projection.IndustrySector = _Text.IndustrySector
                                                            and _Text.Language = $session.system_language
{
  key IndustrySector,
  key IndustrySystemType,
  key BusinessPartner,
      IsStandardIndustry,
      IndustryKeyDescription
}