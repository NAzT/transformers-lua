# based on https://github.com/fikin/squirrels-trap/blob/master/Makefile

PRJ_DIR := $(shell pwd)
SOURCE_FOLDER:=$(PRJ_DIR)/transformers
LUA_PATH := $(SOURCE_FOLDER)/?.lua
LUA_TEST_CASES := $(wildcard $(PRJ_DIR)/tests/test*.lua)

.PHONY: help clean test $(LUA_TEST_CASES)

help:
	@echo type: make test

init :
	git submodule update --init --recursive

all : init test

$(LUA_TEST_CASES):
	@echo [INFO] : Running tests in $@ ...
	@export LUA_PATH=$(LUA_PATH) && lua $@

test: $(SOURCE_FOLDER) $(LUA_TEST_CASES)