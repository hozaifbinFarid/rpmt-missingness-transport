# RPMT: Rate Preserving Missingness Transport

Code, locked protocol and result tables for the manuscript
**"RPMT: Rate Preserving Missingness Transport for Multisensor Models Robust to Missing Sensors"**
(single author: Hozaif Bin Farid).

- Archived release (DOI): `[ZENODO DOI - add after the first release]`
- Protocol identifier (SHA-256): `1bdeb9821e7d64bf4ff9e78978739b13901ac7ff3cf5e53a630b4b55c39bc1bf`

## What is in this repository

| Path | Content |
|---|---|
| `notebook/RPMT_Complete_Research_Notebook.ipynb` | The Colab notebook that ran the full study (293 fits), with its saved outputs. |
| `protocol/` | Locked protocol and selection records (`protocol_*.json`, `selection_*.json`, `criteria.json`, `test_evaluation_started.json`, `study_status.json`). |
| `results/` | Result tables used in the paper: `run_completion.csv`, `paired_comparisons.csv`, `cluster_intervals.csv`, `shared_mechanisms.csv`, `metrics.csv`, `native_gap_sensitivity.json`, `smoke_checks.json`, `timing_pilot.json`, `artifact_manifest.json`. |
| `results/results_bundle.zip` | Complete export bundle, including the large files `results.json` and `subject_metrics.csv`, the risk-curve plots and `rpmt_inference.zip`. |
| `SHA256SUMS.txt` | Checksums of every file in this repository. |

## Datasets (not redistributed here)

The study uses public UCI Machine Learning Repository datasets. Download them from the source pages; the notebook downloads them automatically in `pilot` and `study` mode.

- MHEALTH: https://archive.ics.uci.edu/dataset/319/mhealth+dataset
- PAMAP2 Physical Activity Monitoring: https://archive.ics.uci.edu/dataset/231/pamap2+physical+activity+monitoring
- Multiple Features: https://archive.ics.uci.edu/dataset/72/multiple+features

All three are listed under CC BY 4.0; please keep attribution when reusing them.

## How to reproduce

1. Open the notebook in Google Colab and choose a GPU runtime (the study was run on a free-tier GPU).
2. In the configuration cell set `MODE = "smoke"` (about one minute, synthetic data), then `"pilot"`, then `"study"`.
3. Keep the protocol settings unchanged for `study`. The notebook records a configuration hash and refuses to resume under a changed configuration.

Recorded environment: Python 3.13.15, PyTorch 2.11.0+cu128, NumPy 2.1.3, SciPy 1.16.3, pandas 2.2.3, Matplotlib 3.10.0 (see `results/timing_pilot.json`).

## Scope and limits

- Baselines are compact re-implementations, not the original authors' code.
- The protocol lock was internal (a hash recorded before test evaluation). It is not an independently timestamped public preregistration.
- Per-step training histories and full model checkpoints are not included in this archive.

## License

Code: MIT (see `LICENSE`). Result tables and documentation: CC BY 4.0.

## Citation

See `CITATION.cff`, or cite the Zenodo DOI above.
