install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello --cov=greeting \
		--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipnyb

debug:
	python -m pytest -vv -pdb

format:
	black *.py

lint:
	pylint --disable=R,C *.py

deploy:
	echo "deploy command goes here"

all: install lint test format deploy