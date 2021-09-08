Instance: 3401-use-mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "http://ehelse.no/fhir/ConceptMap/3401-mapping"
* version = "4.0.1"
* name = "MappingUse3401"
* title = "Mapping 3401 to Address use"
* status = #draft
* experimental = true
* date = "2021-05-31"
* publisher = "Direktoratet for e-Helse"
* description = "An example mapping"
* purpose = "To illustrate mapping features"
* sourceUri = "http://hl7.org/fhir/address-use"
* targetUri = "urn:oid:2.16.578.1.12.4.1.1.3401"
* group.source = "http://hl7.org/fhir/address-use"
* group.target = "urn:oid:2.16.578.1.12.4.1.1.3401"
* group.element[0].code = #home
* group.element[=].target.code = #H
* group.element[=].target.display = "Bostedsadresse"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "Både Bosted og folkeregisteradresse mapper til home"
* group.element[=].target.dependsOn.property = "Address.official"
* group.element[=].target.dependsOn.value = "false"
* group.element[+].code = #home
* group.element[=].target.code = #HP
* group.element[=].target.display = "Folkeregisteradresse"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "Både Bosted og folkeregisteradresse mapper til home"
* group.element[=].target.dependsOn.property = "Address.official"
* group.element[=].target.dependsOn.value = "true"
* group.element[+].code = #work
* group.element[=].target.code = #WP
* group.element[=].target.display = "Arbeidsadresse"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #temp
* group.element[=].target.code = #HV
* group.element[=].target.display = "Ferieadresse"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "Både ferieadresse og midlertidig adresse mapper til temp"
* group.element[+].code = #temp
* group.element[=].target.code = #TMP
* group.element[=].target.display = "Midlertidig adresse"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "Både ferieadresse og midlertidig adresse mapper til temp"
* group.element[+].code = #old
* group.element[=].target.code = #BAD
* group.element[=].target.display = "Ubrukelig adresse"
* group.element[=].target.equivalence = #inexact
* group.element[=].target.comment = "Gammel er relatert til ubrukelig men ikke lik"
* group.element[+].code = #home
* group.element[=].target.code = #INV
* group.element[=].target.display = "Faktureringsadresse"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.dependsOn.property = "Address.type"
* group.element[=].target.dependsOn.value = "billing"
* group.element[+].code = #home
* group.element[=].target.code = #PST
* group.element[=].target.display = "Postadresse"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.dependsOn.property = "Address.type"
* group.element[=].target.dependsOn.value = "postal"
* group.element[+].code = #home
* group.element[=].target.code = #RES
* group.element[=].target.display = "Besøksadresse"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.dependsOn.property = "Address.type"
* group.element[=].target.dependsOn.value = "physical"