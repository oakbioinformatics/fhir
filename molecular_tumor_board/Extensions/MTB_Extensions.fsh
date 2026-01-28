// =============================================================================
// Molecular Tumor Board (MTB) FHIR Extensions
// Oak Bioinformatics LLC
// =============================================================================
// This file contains FHIR extension definitions for genomic annotation data
// that cannot be represented using standard FHIR elements or existing
// HL7 Genomics Reporting IG profiles.
// =============================================================================

// -----------------------------------------------------------------------------
// ALIASES
// -----------------------------------------------------------------------------
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $genomics-reporting = http://hl7.org/fhir/uv/genomics-reporting
Alias: $tbd-codes = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs


// =============================================================================
// EXTENSION: Cancer Hotspot Cancer Types
// =============================================================================
// Used by: CancerHotspots annotation module
// Purpose: Represents cancer types and their occurrence counts at a variant position
// -----------------------------------------------------------------------------

Extension: CancerHotspotCancerTypes
Id: cancer-hotspot-cancer-types
Title: "Cancer Hotspot Cancer Types"
Description: "An extension to capture the distinct cancer types and their occurrence counts associated with a variant position in cancer hotspot databases."
Context: Observation

* ^url = "http://oakbioinformatics.com/fhir/StructureDefinition/cancer-hotspot-cancer-types"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Oak Bioinformatics LLC"

* extension contains
    cancerType 0..* MS

* extension[cancerType] ^short = "Individual cancer type with count"
* extension[cancerType].extension contains
    type 1..1 MS and
    count 1..1 MS

* extension[cancerType].extension[type] ^short = "Cancer type name"
* extension[cancerType].extension[type].value[x] only CodeableConcept
* extension[cancerType].extension[type].valueCodeableConcept from CancerHotspotCancerTypeVS (extensible)

* extension[cancerType].extension[count] ^short = "Number of occurrences"
* extension[cancerType].extension[count].value[x] only integer


// =============================================================================
// EXTENSION: GRASP NHLBI Key
// =============================================================================
// Used by: GRASP annotation module
// Purpose: Represents the NHLBI (NIH) unique identifier for GRASP records
// -----------------------------------------------------------------------------

Extension: GraspNhlbiKey
Id: grasp-nhlbi-key
Title: "GRASP NHLBI Key"
Description: "An extension to capture the NHLBI (NIH) unique identifier for records in the GRASP (Genome-Wide Repository of Associations Between SNPs and Phenotypes) database."
Context: Observation

* ^url = "http://oakbioinformatics.com/fhir/StructureDefinition/grasp-nhlbi-key"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Oak Bioinformatics LLC"

* value[x] only string
* valueString 1..1 MS
* valueString ^short = "NHLBI Key (e.g., GRASP_290123)"


// =============================================================================
// EXTENSION: PubMed Reference
// =============================================================================
// Used by: GRASP, OncoKB, and other annotation modules
// Purpose: References to PubMed publications supporting annotations
// -----------------------------------------------------------------------------

Extension: PubMedReference
Id: pubmed-reference
Title: "PubMed Reference"
Description: "An extension to capture PubMed IDs (PMIDs) of publications that support a genomic annotation or finding."
Context: Observation, Observation.component

* ^url = "http://oakbioinformatics.com/fhir/StructureDefinition/pubmed-reference"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Oak Bioinformatics LLC"

* extension contains
    pmid 1..* MS and
    citation 0..1

* extension[pmid] ^short = "PubMed ID"
* extension[pmid].value[x] only integer
* extension[pmid].valueInteger 1..1

* extension[citation] ^short = "Optional citation text"
* extension[citation].value[x] only string


// =============================================================================
// EXTENSION: OMIM Entry Reference
// =============================================================================
// Used by: OMIM annotation module
// Purpose: References to OMIM database entries
// -----------------------------------------------------------------------------

Extension: OmimEntryReference
Id: omim-entry-reference
Title: "OMIM Entry Reference"
Description: "An extension to capture OMIM (Online Mendelian Inheritance in Man) entry IDs that provide disease and gene association information for variants."
Context: Observation, Condition

* ^url = "http://oakbioinformatics.com/fhir/StructureDefinition/omim-entry-reference"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Oak Bioinformatics LLC"

* extension contains
    entryId 1..1 MS and
    entryType 0..1 and
    title 0..1

* extension[entryId] ^short = "OMIM Entry ID"
* extension[entryId].value[x] only string
* extension[entryId].valueString 1..1

* extension[entryType] ^short = "Type of OMIM entry"
* extension[entryType].value[x] only code
* extension[entryType].valueCode from OmimEntryTypeVS (required)

* extension[title] ^short = "OMIM entry title"
* extension[title].value[x] only string


// =============================================================================
// EXTENSION: Prognostic Implication Level
// =============================================================================
// Used by: OncoKB annotation module
// Purpose: Captures prognostic level evidence that extends diagnostic implication
// -----------------------------------------------------------------------------

Extension: PrognosticImplicationLevel
Id: prognostic-implication-level
Title: "Prognostic Implication Level"
Description: "An extension to capture the highest prognostic level of evidence for a variant, as defined by OncoKB or similar knowledge bases. This extends the diagnostic-implication profile when prognostic information is available."
Context: Observation

* ^url = "http://oakbioinformatics.com/fhir/StructureDefinition/prognostic-implication-level"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Oak Bioinformatics LLC"

* extension contains
    level 1..1 MS and
    description 0..1 and
    source 0..1

* extension[level] ^short = "Prognostic evidence level"
* extension[level].value[x] only CodeableConcept
* extension[level].valueCodeableConcept from PrognosticLevelVS (extensible)

* extension[description] ^short = "Narrative description of prognostic significance"
* extension[description].value[x] only string

* extension[source] ^short = "Source knowledge base"
* extension[source].value[x] only CodeableConcept
