# FHIR build

Document how to build a CI/CD pipeline for your FHIR Implementationu Guide using FSH, SUSHI, docker some scripts and tasks.

## Prerequisites

To run the Docker images, install Docker, a personal license should suffice.
[Docker](https://www.docker.com/get-started)

### Build Docker image

Build a docker image using the vscode task or command-line:

~~~bash
docker build -t navikt/fhir-ig-dev .
~~~

The docker image settings is contained in the "Dockerfile" configuration file of the repo.

### Setup your GitHub repo

You will need a gh-pages branch to contain the files produced from you IG build process.
[gh-pages setup](https://gist.github.com/chrisjacob/833223)

### Make an ImplementationGuide

In a separate folder under "igs", define your IG and the FHIR artifacts (profiles, extensions etc.). Artifacts goes in the input folder

Artifacts can be converted from xml/json to FSH or written by hand using the FSH language

First run on no-basis roundtrip did result in some errors, but mostly easy to fix (probably, some examples are wrong)
Errors in AllergyIntolerance, HealtcareService, KommunikasjonspartOrganization (not normative), NoBasisHumanName, NoBasisPatient, NoBasisPropertyinformation and NoBasisPractitioner


## Projects and documentation

* [NAV's writeup of the buildprocess](https://github.com/navikt/fhir)
* [The official HL7 auto IG builder](https://github.com/FHIR/auto-ig-builder)
* [Dockerized build image for IG publisher](https://github.com/NIH-NCPI/hl7-fhir-ig-publisher)
* [IG release pipeline walkthroug (HL7 Belgium)](https://github.com/hl7-be/fhir-ig-release-publication)
* [An important script for the GitHub workflow](https://github.com/hl7-be/tutorial_ig/tree/master/.github/workflows)
* [Docker build alternative](https://github.com/logicahealth/fhir-ig-base)
  * [The actual Docker image for download](https://hub.docker.com/r/logicahealth/fhir-ig-base)
