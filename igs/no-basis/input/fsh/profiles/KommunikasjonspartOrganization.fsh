Profile: KommunikasjonspartOrganization
Parent: NoBasisOrganization
Id: kommunikasjonspart-Organization
Title: "kommunikasjonspart-Organization"
Description: "Use case specific profile for Norwegian services defined in the Norwegian address register, kommunikasjonspart-Organization. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare services as defined in the Norwegian adress register. The use-case profile is specific for the use case of identifying relevant services defined in the address register for electronic communication."
* ^version = "0.2"
* ^status = #draft
* ^date = "2019-05-15"
* . ^definition = "The details of a kommunikasjonspart (communication party) defined in the Norwegian Address Registry for Health care. \r\n\r\nOther kinds of healthcare services not registered in Adresseregisteret (clinical services) shold not use this profile. The standard HL7 Resource or the no-basis-HealthcareService can be used."
* . ^comment = "Definition of \"kommunikasjonspart\" from the Standard HIS 1153-1:2016 (Norwegian text only):\r\nLogisk avgrenset del av en virksomhet i helse- og omsorgstjenesten, som sender og/eller mottar elektroniske meldinger.\r\nMerk 1: En kommunikasjonspart har alltid en HER-id.\r\nMerk 2: En kommunikasjonspart vil som hovedregel være knyttet til en tjenestetype."
* . ^alias = "kommunikasjonspart"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains TbaOrganizationcoverage named organizationcoverage 0..*
* extension[organizationcoverage] ^alias = "dekningsområde"
* identifier ..1
* identifier.system ^short = "The official name of the RESH id namespace"
* identifier contains HER 1..1
* identifier[HER] ^definition = "HER id for this tba-Organization, should be identified according to the predefined HERid naming system."
* identifier[HER].system 1..
* identifier[HER].system = "urn:oid:2.16.578.1.12.4.1.2" (exactly)
* identifier[HER].system ^short = "The official name of the HERid namespace"
* identifier[HER].value 1..
* identifier[HER].value ^short = "The actual HER-id from the Norwegian Adresseregister"
* identifier[HER].value ^definition = "The actual HER-id from the Norwegian Adresseregister"
* type 1..1
* type from NoBasisServiceType (required)
* type ^alias = "tjenestetype"
* type ^binding.description = "Tjenestetype CodeSystems"
* partOf 1..
* endpoint 1..
* endpoint only Reference(NoBasisEndpoint)