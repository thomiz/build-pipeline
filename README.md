# FHIR build

Document how to build a CI/CD pipeline for your FHIR Implementationu Guide using FSH, SUSHI, docker some scripts and tasks.

## Prerequisites

To run the Docker images, install Docker, a personal license should suffice.
[Docker](https://www.docker.com/get-started)

### Build Docker image

Build a docker image using the vscode task or command-line:

~~~bash
docker build -t [your docker image name here] .
~~~

The docker image settings is contained in the "Dockerfile" configuration file of the repo. The docker file defines how to build a docker image to run the FHIR validator, IG Publishing and SUSHI, including all dependencies.

### Setup your GitHub repo

You will need a gh-pages branch to contain the files produced from you IG build process.  
Goto the Settings->Pages, choose none and press "choose a theme", commit the autogenerated README.md (or edit it first).

>If you add github pages to your repo you have to: 
Choose a theme AND commit the README.md file that is autogenerated by github if Github is to make a separate **gh-pages** branch in your repo.  After this you only have to make the result of the build process available in the gh-pages branch to make this work.

Clone the gh-pages branch to a catalog on your local drive (e.g. "gh-pages") and clone the master branches to a separate directory locally (e.g. "master"). The "gh-pages" catalog is where you store all the files from the IG-generation "output" directory. The "master" directory is where you develop and store the artifacts for your IG and the directory that you point IG-publisher for input files to generate the IG.


### Make an ImplementationGuide

In a separate folder under "igs", define your IG and the FHIR artifacts (profiles, extensions etc.). Artifacts goes in the input folder.  FHIR artifacts can be converted from xml/json to FSH or written by hand using the FSH language.

You need three files to get started with IG build process:
* ig.ini - Defines the template for the IG and where the generated ImplementationGuide resouces is to be found.
* sushi-config.yaml - Defines configuration for your implementation guide to the SUSHI IG generation part of the IG-Publisher
* input/pages/index.md - The starting page of your implementation guide, usually written i markdown

The actual FHIR definitions goes into the fsh folder, full writeup of the catalog structure for [IG-generation](https://fshschool.org/docs/sushi/project/#ig-projects):
* input/fsh/* - All the fsh files defining your FHIR artifacts (profiles, search parameters, codesystems etc.)

### Run the IG-publisher

When you have created the necessary files you can run the IG-publisher to generate an actual implementation guide.

~~~bash
docker run -it --rm -v package-cache:/root/.fhir -v [ig directory]:/data [name of docker image] publisher -ig /data/ig.ini
~~~

## Setup a CI GitHub workflow


## Projects and documentation

* [FSH/SUSHI School](https://fshschool.org/docs/)
* [Guidance for FHIR IG Creation](http://build.fhir.org/ig/FHIR/ig-guidance/index.html)
* [NAV's writeup of the buildprocess](https://github.com/navikt/fhir)
* [The official HL7 auto IG builder](https://github.com/FHIR/auto-ig-builder)
* [Dockerized build image for IG publisher](https://github.com/NIH-NCPI/hl7-fhir-ig-publisher)
* [IG release pipeline walkthroug (HL7 Belgium)](https://github.com/hl7-be/fhir-ig-release-publication)
* [An important script for the GitHub workflow](https://github.com/hl7-be/tutorial_ig/tree/master/.github/workflows)
* [Docker build alternative](https://github.com/logicahealth/fhir-ig-base)
  * [The actual Docker image for download](https://hub.docker.com/r/logicahealth/fhir-ig-base)
