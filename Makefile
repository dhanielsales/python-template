MAIN_FILE=main.py
VENV_NAME=venv
PYTHON=${VENV_NAME}/bin/python3.10

.ONESHELL:
SHELL=/bin/bash

start: run
run:
	@echo Running MicroService in Development
	@venv/bin/python3.10 $(MAIN_FILE)

setup:
	@echo Setup project
	@python3.10 -m venv venv
	@chmod +x venv/bin/activate
	@echo done.

install:
	@echo Install dependencies
	@${PYTHON} -m pip install -r requirements.txt
	@echo done.
