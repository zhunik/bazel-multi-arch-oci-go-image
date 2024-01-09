build:
	bazel build :tarball --verbose_failures 
	docker load --input $$(bazel cquery --output=files :tarball)
	docker run --rm gcr.io/example:latest