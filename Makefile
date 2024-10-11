.PHONY: all

create-cluster:
	uds deploy k3d-core-slim-dev:0.28.0 \
		--set K3D_EXTRA_ARGS="--gpus=all --image=ghcr.io/justinthelaw/uds-k3d/cuda-k3s:v1.30.4-k3s1-cuda-12.1.0-base-ubuntu22.04" \
		--confirm --no-progress
