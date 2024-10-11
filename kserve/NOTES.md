# KServe

- Kind of difficult to use as docs are out of date

  - Assumes GCP, GKE resources, with no good generalized deployment instructions

- vLLM serving engine is outdated and broken
- KNative adds a lot of overhead

  - Hardening burden
  - Adds webhooks that invalidate necessary values, like `runtimeClassName`
