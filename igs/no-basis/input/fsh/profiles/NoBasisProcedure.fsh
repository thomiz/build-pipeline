Profile: NoBasisProcedure
Parent: Procedure
Id: no-basis-Procedure
Title: "no-basis-Procedure"
Description: "Basis profile for a procedure, to be used in Norway. The profile is adapted to include norwegian specific features and constraints.\""
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2021-06-02T13:43:40.793+00:00"
* ^url = "http://hl7.no/fhir/StructureDefinition/no-basis-procedure"
* ^status = #draft
* ^date = "2021-06-02T13:44:04.7410316+00:00"
* ^abstract = true
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    NKPK 0..1 and
    SNOMED-CT 0..1 and
    ICPC-2 0..1
* code.coding[NKPK] ^short = "Norsk Klinisk Prosedyrekodeverk (NCMP, NCSP og NCRP)"
* code.coding[NKPK] ^patternCoding.system = "urn:oid:2.16.578.1.12.4.1.1.7275"
* code.coding[SNOMED-CT] ^patternCoding.system = "http://snomed.info/sct"
* code.coding[ICPC-2] ^patternCoding.system = "urn:oid:2.16.578.1.12.4.1.1.7275"
* subject only Reference(NoBasisPatient)
* performer.actor only Reference(NoBasisPractitioner)
* bodySite ^binding.strength = #extensible