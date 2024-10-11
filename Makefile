.PHONY: all

create-cluster:
	uds zarf package deploy oci://ghcr.io/justinthelaw/packages/uds-k3d:0.11.3-cuda --confirm --no-progress

create-uds-cluster:
	uds deploy k3d-core-slim-dev:0.28.0 \
		--set K3D_EXTRA_ARGS="--gpus=all --image=ghcr.io/justinthelaw/uds-k3d/cuda-k3s:v1.30.4-k3s1-cuda-12.1.0-base-ubuntu22.04" \
		--confirm --no-progress
