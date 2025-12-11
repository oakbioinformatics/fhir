# PharmGKB

| COLUMN NAME  | TYPE  | DESCRIPTION | EXAMPLE | FHIR PROFILE |  |
| --- | --- | --- | --- | --- | --- |
| ID | STR | Unique PharmGKB identifier for the annotation, variant, or relationship. | PA123456789 | Therapeutic Implication |  |
| Phenotype Category | STR | Clinical phenotype affectedy by the variant or gene-drug interaction | Metabolizer status | Therapeutic Implication | *NEEDS A NEW CODING SYSTEM  |
| Chemicals | STR | Drug involved in the gene-drug interaction or annotation | "Warfarin", "Clopidogrel" | Therapeutic Implication | *USE RXNORM CODING SYSTEM  |
