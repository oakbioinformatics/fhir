// =============================================================================
// Molecular Tumor Board (MTB) FHIR CodeSystems
// Oak Bioinformatics LLC
// =============================================================================
// This file contains CodeSystem definitions for genomic annotation terminology
// used by the MTB Implementation Guide.
// =============================================================================


// -----------------------------------------------------------------------------
// CodeSystem: Cancer Hotspot Cancer Types
// -----------------------------------------------------------------------------

CodeSystem: CancerHotspotCancerTypeCS
Id: cancer-hotspot-cancer-type-cs
Title: "Cancer Hotspot Cancer Types CodeSystem"
Description: "Cancer types as categorized in cancer hotspot databases (e.g., cancerhotspots.org)."

* ^url = "http://oakbioinformatics.com/fhir/CodeSystem/cancer-hotspot-cancer-type"
* ^version = "1.0.0"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Oak Bioinformatics LLC"

* #blood "Blood" "Hematologic malignancies including leukemia and lymphoma"
* #bowel "Bowel" "Colorectal and intestinal cancers"
* #cnsbrain "CNS/Brain" "Central nervous system and brain tumors"
* #breast "Breast" "Breast carcinoma"
* #lung "Lung" "Lung cancers including NSCLC and SCLC"
* #skin "Skin" "Skin cancers including melanoma"
* #prostate "Prostate" "Prostate carcinoma"
* #ovary "Ovary" "Ovarian cancers"
* #pancreas "Pancreas" "Pancreatic cancers"
* #liver "Liver" "Hepatocellular and liver cancers"
* #kidney "Kidney" "Renal cell carcinoma and kidney cancers"
* #bladder "Bladder" "Bladder cancers"
* #thyroid "Thyroid" "Thyroid carcinoma"
* #stomach "Stomach" "Gastric cancers"
* #esophagus "Esophagus" "Esophageal cancers"
* #head_neck "Head and Neck" "Head and neck squamous cell carcinomas"
* #uterus "Uterus" "Uterine and endometrial cancers"
* #cervix "Cervix" "Cervical cancers"
* #bone "Bone" "Bone cancers including osteosarcoma"
* #soft_tissue "Soft Tissue" "Soft tissue sarcomas"
* #other "Other" "Other cancer types not otherwise categorized"


// -----------------------------------------------------------------------------
// CodeSystem: PharmGKB Phenotype Categories
// -----------------------------------------------------------------------------

CodeSystem: PharmGKBPhenotypeCategoryCS
Id: pharmgkb-phenotype-category-cs
Title: "PharmGKB Phenotype Category CodeSystem"
Description: "Clinical phenotype categories used by PharmGKB to classify gene-drug interactions and pharmacogenomic effects."

* ^url = "http://oakbioinformatics.com/fhir/CodeSystem/pharmgkb-phenotype-category"
* ^version = "1.0.0"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Oak Bioinformatics LLC"

* #metabolizer-status "Metabolizer Status" "Classification of drug metabolizing enzyme activity (e.g., poor, intermediate, normal, rapid, ultra-rapid metabolizer)"
* #efficacy "Efficacy" "Drug efficacy or therapeutic response"
* #toxicity "Toxicity" "Adverse drug reactions or toxicity risk"
* #dosage "Dosage" "Drug dosage requirements based on genotype"
* #pk "Pharmacokinetics" "Drug absorption, distribution, metabolism, or excretion"
* #pd "Pharmacodynamics" "Drug mechanism of action or target interaction"
* #other "Other" "Other pharmacogenomic phenotype categories"


// -----------------------------------------------------------------------------
// CodeSystem: OMIM Entry Types
// -----------------------------------------------------------------------------

CodeSystem: OmimEntryTypeCS
Id: omim-entry-type-cs
Title: "OMIM Entry Type CodeSystem"
Description: "Types of entries in the OMIM (Online Mendelian Inheritance in Man) database."

* ^url = "http://oakbioinformatics.com/fhir/CodeSystem/omim-entry-type"
* ^version = "1.0.0"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Oak Bioinformatics LLC"

* #gene "Gene" "Gene entry describing a gene locus"
* #phenotype "Phenotype" "Phenotype entry describing a clinical phenotype or disease"
* #gene-phenotype "Gene/Phenotype" "Combined entry with both gene and phenotype information"
* #predominantly-phenotype "Predominantly Phenotype" "Entry where the phenotype is the primary focus"
* #moved-removed "Moved/Removed" "Entry that has been moved or removed"


// -----------------------------------------------------------------------------
// CodeSystem: Prognostic Evidence Levels
// -----------------------------------------------------------------------------

CodeSystem: PrognosticLevelCS
Id: prognostic-level-cs
Title: "Prognostic Evidence Level CodeSystem"
Description: "Evidence levels for prognostic significance of genomic variants, based on OncoKB classification."

* ^url = "http://oakbioinformatics.com/fhir/CodeSystem/prognostic-level"
* ^version = "1.0.0"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Oak Bioinformatics LLC"

* #Px1 "Level Px1" "Guideline-recognized biomarker prognostic in the specific type of tumor with well-powered studies"
* #Px2 "Level Px2" "Guideline-recognized biomarker prognostic in the specific type of tumor with limited data"
* #Px3 "Level Px3" "Investigational prognostic biomarker"


// -----------------------------------------------------------------------------
// CodeSystem: GRASP
// -----------------------------------------------------------------------------

CodeSystem: GraspCS
Id: grasp-cs
Title: "GRASP CodeSystem"
Description: "Codes for GRASP (Genome-Wide Repository of Associations Between SNPs and Phenotypes) annotation elements."

* ^url = "http://oakbioinformatics.com/fhir/CodeSystem/grasp"
* ^version = "1.0.0"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Oak Bioinformatics LLC"

* #nhlbi-key "NHLBI Key" "NHLBI (NIH) unique identifier for the GRASP record"
* #pmid "PMID" "PubMed ID of the publication supporting the association"
* #phenotype "Phenotype" "Disease or trait associated with the variant"
