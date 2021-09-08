Extension: TbaOrganizationcoverage
Id: tba-organizationcoverage
Description: "The coverage of a service hosted by one of the organizations. Specifically used by norwegian Municipalities"
* ^version = "0.1"
* ^status = #draft
* ^date = "2019-05-15"
* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only Reference(NoBasisOrganization)