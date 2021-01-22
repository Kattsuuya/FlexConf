.PHONY: deploy
deploy: build
	twine upload dist/*

.PHONY: test-deploy
test-deploy: build
	twine upload --repository testpypi dist/*

.PHONY: build
build:
	python setup.py sdist bdist_wheel
