# SIFT

| COLUMN NAME  | TYPE  | DESCRIPTION | EXAMPLE | FHIR PROFILE |
| --- | --- | --- | --- | --- |
| Transcript | STR | Ensembl Transcript ID | "ENST00000367770" | Molecular Consequence |
| Prediction | STR | Tolerated if Score > 0.05. Damaging if Score <= 0.05 | "deleterious" | Molecular Consequence |
| Confidence | STR | Low if Median Info > 3.25 | "high" | Molecular Consequence |
| Score | FLOAT | Ranges from 0 to 1. The amino acid substitution is predicted damaging is the score is <= 0.05, and tolerated if the score is > 0.05. | 0.02 | Molecular Consequence |
| Rank Score | FLOAT | Max rank score across all transcripts. The ratio of the rank of the score over the total number of SIFT scores. | 0.91 | Molecular Consequence |
| Median Info | FLOAT | Ranges from 0 to 4.32, ideally the number would be between 2.75 and 3.5. This is used to measure the diversity of the sequences used for prediction. A value over 3.25 indicates that the prediction was based on closely related sequences. | 2.34 | Molecular Consequence |
| Seqs at Position | Int | This is the number of sequences that have an amino acid at the position of prediction. SIFT automatically chooses the sequence for you, but if the substitution is located at the beginning or end of the protein, there may be only a few sequences represented at that position, and this column indicates this. | 47 | Molecular Consequence |
| ACMG/AMP Benign (BP4) | STR | Strength of evidence for benignity. | "not triggered" | Molecular Consequence |
| ACMG/AMP Pathogenic (PP3) | STR | Strength of evidence for pathogenicity. | "supporting" | Molecular Consequence |
