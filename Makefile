# Makefile
VENV_SITE_PACKAGES=$(PWD)/venv/lib/python3.8/site-packages

TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/test.v
TOPLEVEL = dff
MODULE = test-verilog

export COCOTB_SHARE_DIR=$(VENV_SITE_PACKAGES)/cocotb/share

include $(shell cocotb-config --makefiles)/Makefile.sim
