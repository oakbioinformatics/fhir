# MTB FHIR Extensions and Terminology

This directory contains FHIR extension definitions and terminology (CodeSystems/ValueSets) for the Molecular Tumor Board Implementation Guide that are not available in the standard HL7 Genomics Reporting IG.

## Overview

The extensions defined here support genomic annotation data from various bioinformatics databases that cannot be represented using standard FHIR elements or existing profiles.

## Extensions

### 1. Cancer Hotspot Cancer Types

**URL:** `http://oakbioinformatics.com/fhir/StructureDefinition/cancer-hotspot-cancer-types`

**Purpose:** Captures cancer types and their occurrence counts for variant hotspots.

**Context:** Observation

**Structure:**
```
Extension
└── cancerType (0..*)
    ├── type: CodeableConcept (1..1) - Cancer type code
    └── count: integer (1..1) - Number of occurrences
```

**Usage Example:**
```json
{
  "url": "http://oakbioinformatics.com/fhir/StructureDefinition/cancer-hotspot-cancer-types",
  "extension": [
    {
      "url": "cancerType",
      "extension": [
        { "url": "type", "valueCodeableConcept": { "coding": [{ "system": "...", "code": "blood" }] } },
        { "url": "count", "valueInteger": 5 }
      ]
    }
  ]
}
```

---

### 2. PubMed Reference

**URL:** `http://oakbioinformatics.com/fhir/StructureDefinition/pubmed-reference`

**Purpose:** References to PubMed publications supporting genomic annotations.

**Context:** Observation, Observation.component

**Structure:**
```
Extension
├── pmid: integer (1..*) - PubMed ID(s)
└── citation: string (0..1) - Optional citation text
```

**Usage Example:**
```json
{
  "url": "http://oakbioinformatics.com/fhir/StructureDefinition/pubmed-reference",
  "extension": [
    { "url": "pmid", "valueInteger": 19430479 },
    { "url": "citation", "valueString": "Smith et al., Nature 2019" }
  ]
}
```

---

### 3. OMIM Entry Reference

**URL:** `http://oakbioinformatics.com/fhir/StructureDefinition/omim-entry-reference`

**Purpose:** References to OMIM database entries for gene/disease associations.

**Context:** Observation, Condition

**Structure:**
```
Extension
├── entryId: string (1..1) - OMIM Entry ID (e.g., "613732")
├── entryType: code (0..1) - Type of OMIM entry
└── title: string (0..1) - OMIM entry title
```

**Usage Example:**
```json
{
  "url": "http://oakbioinformatics.com/fhir/StructureDefinition/omim-entry-reference",
  "extension": [
    { "url": "entryId", "valueString": "613732" },
    { "url": "entryType", "valueCode": "gene-phenotype" },
    { "url": "title", "valueString": "JANUS KINASE 1; JAK1" }
  ]
}
```

---

### 4. Prognostic Implication Level

**URL:** `http://oakbioinformatics.com/fhir/StructureDefinition/prognostic-implication-level`

**Purpose:** Captures prognostic evidence levels for variants (extends diagnostic-implication profile).

**Context:** Observation

**Structure:**
```
Extension
├── level: CodeableConcept (1..1) - Prognostic evidence level (Px1, Px2, Px3)
├── description: string (0..1) - Narrative description
└── source: CodeableConcept (0..1) - Source knowledge base
```

**Usage Example:**
```json
{
  "url": "http://oakbioinformatics.com/fhir/StructureDefinition/prognostic-implication-level",
  "extension": [
    { "url": "level", "valueCodeableConcept": { "coding": [{ "system": "...", "code": "Px2" }] } },
    { "url": "description", "valueString": "Guideline-recognized with limited data" }
  ]
}
```

---

## CodeSystems

### 1. PharmGKB Phenotype Category

**URL:** `http://oakbioinformatics.com/fhir/CodeSystem/pharmgkb-phenotype-category`

| Code | Display | Definition |
|------|---------|------------|
| metabolizer-status | Metabolizer Status | Drug metabolizing enzyme activity classification |
| efficacy | Efficacy | Drug efficacy or therapeutic response |
| toxicity | Toxicity | Adverse drug reactions or toxicity risk |
| dosage | Dosage | Drug dosage requirements based on genotype |
| pk | Pharmacokinetics | Drug absorption, distribution, metabolism, or excretion |
| pd | Pharmacodynamics | Drug mechanism of action or target interaction |
| other | Other | Other pharmacogenomic phenotype categories |

---

### 2. Cancer Hotspot Cancer Types

**URL:** `http://oakbioinformatics.com/fhir/CodeSystem/cancer-hotspot-cancer-type`

| Code | Display |
|------|---------|
| blood | Blood |
| bowel | Bowel |
| cnsbrain | CNS/Brain |
| breast | Breast |
| lung | Lung |
| skin | Skin |
| prostate | Prostate |
| ovary | Ovary |
| pancreas | Pancreas |
| liver | Liver |
| kidney | Kidney |
| bladder | Bladder |
| thyroid | Thyroid |
| stomach | Stomach |
| esophagus | Esophagus |
| head_neck | Head and Neck |
| uterus | Uterus |
| cervix | Cervix |
| bone | Bone |
| soft_tissue | Soft Tissue |
| other | Other |

---

### 3. OMIM Entry Types

**URL:** `http://oakbioinformatics.com/fhir/CodeSystem/omim-entry-type`

| Code | Display | Definition |
|------|---------|------------|
| gene | Gene | Gene entry describing a gene locus |
| phenotype | Phenotype | Phenotype entry describing a clinical phenotype or disease |
| gene-phenotype | Gene/Phenotype | Combined entry with both gene and phenotype information |
| predominantly-phenotype | Predominantly Phenotype | Entry where the phenotype is the primary focus |
| moved-removed | Moved/Removed | Entry that has been moved or removed |

---

### 4. Prognostic Evidence Levels

**URL:** `http://oakbioinformatics.com/fhir/CodeSystem/prognostic-level`

| Code | Display | Definition |
|------|---------|------------|
| Px1 | Level Px1 | Guideline-recognized biomarker prognostic in the specific type of tumor with well-powered studies |
| Px2 | Level Px2 | Guideline-recognized biomarker prognostic in the specific type of tumor with limited data |
| Px3 | Level Px3 | Investigational prognostic biomarker |

---

### 5. GRASP

**URL:** `http://oakbioinformatics.com/fhir/CodeSystem/grasp`

| Code | Display | Definition |
|------|---------|------------|
| nhlbi-key | NHLBI Key | NHLBI (NIH) unique identifier for the GRASP record |
| pmid | PMID | PubMed ID of the publication supporting the association |
| phenotype | Phenotype | Disease or trait associated with the variant |

---

## File Inventory

### FSH Definitions
- `MTB_Extensions.fsh` - Complete FHIR Shorthand definitions for all extensions and terminologies

### StructureDefinition (JSON)
- `StructureDefinition-cancer-hotspot-cancer-types.json`
- `StructureDefinition-pubmed-reference.json`
- `StructureDefinition-omim-entry-reference.json`
- `StructureDefinition-prognostic-implication-level.json`

### CodeSystem (JSON)
- `CodeSystem-pharmgkb-phenotype-category.json`
- `CodeSystem-cancer-hotspot-cancer-type.json`
- `CodeSystem-omim-entry-type.json`
- `CodeSystem-prognostic-level.json`
- `CodeSystem-grasp.json`

---

## Integration with HL7 Genomics Reporting IG

These extensions are designed to work alongside the following HL7 Genomics Reporting IG profiles:

| Profile | Used By |
|---------|---------|
| genomic-annotation | CancerHotspots, OMIM |
| molecular-consequence | GRASP, SIFT |
| diagnostic-implication | OncoKB |
| therapeutic-implication | PharmGKB |

---

## Versioning

All extensions and CodeSystems are currently at version **1.0.0** with status **draft**.

## Publisher

Oak Bioinformatics LLC
