// =============================================================================
// Molecular Tumor Board (MTB) FHIR ValueSets
// Oak Bioinformatics LLC
// =============================================================================
// This file contains ValueSet definitions for genomic annotation terminology
// used by the MTB Implementation Guide.
// =============================================================================


// -----------------------------------------------------------------------------
// ValueSet: Cancer Hotspot Cancer Types
// -----------------------------------------------------------------------------

ValueSet: CancerHotspotCancerTypeVS
Id: cancer-hotspot-cancer-type-vs
Title: "Cancer Hotspot Cancer Types ValueSet"
Description: "Cancer types used in Cancer Hotspot databases."

* ^url = "http://oakbioinformatics.com/fhir/ValueSet/cancer-hotspot-cancer-type"
* ^version = "1.0.0"
* ^status = #draft

* include codes from system CancerHotspotCancerTypeCS


// -----------------------------------------------------------------------------
// ValueSet: PharmGKB Phenotype Categories
// -----------------------------------------------------------------------------

ValueSet: PharmGKBPhenotypeCategoryVS
Id: pharmgkb-phenotype-category-vs
Title: "PharmGKB Phenotype Category ValueSet"
Description: "Phenotype categories for pharmacogenomic classifications."

* ^url = "http://oakbioinformatics.com/fhir/ValueSet/pharmgkb-phenotype-category"
* ^version = "1.0.0"
* ^status = #draft

* include codes from system PharmGKBPhenotypeCategoryCS


// -----------------------------------------------------------------------------
// ValueSet: OMIM Entry Types
// -----------------------------------------------------------------------------

ValueSet: OmimEntryTypeVS
Id: omim-entry-type-vs
Title: "OMIM Entry Type ValueSet"
Description: "Types of OMIM database entries."

* ^url = "http://oakbioinformatics.com/fhir/ValueSet/omim-entry-type"
* ^version = "1.0.0"
* ^status = #draft

* include codes from system OmimEntryTypeCS


// -----------------------------------------------------------------------------
// ValueSet: Prognostic Evidence Levels
// -----------------------------------------------------------------------------

ValueSet: PrognosticLevelVS
Id: prognostic-level-vs
Title: "Prognostic Evidence Level ValueSet"
Description: "Evidence levels for prognostic significance."

* ^url = "http://oakbioinformatics.com/fhir/ValueSet/prognostic-level"
* ^version = "1.0.0"
* ^status = #draft

* include codes from system PrognosticLevelCS
