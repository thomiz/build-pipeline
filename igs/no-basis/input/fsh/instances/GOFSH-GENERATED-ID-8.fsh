Instance: GOFSH-GENERATED-ID-8
InstanceOf: Observation
Usage: #example
* status = #registered
* code.coding[0] = $loinc#29463-7 "Body Weight"
* code.coding[+] = $loinc#3141-9 "Body weight Measured"
* code.coding[+] = $sct#27113001 "Body weight"
* code.coding[+] = $clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/592410)
* effectiveDateTime = "2020-01-22"
* valueQuantity = 99000 'g' "gram"