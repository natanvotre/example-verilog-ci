# Makefile
VENV_SITE_PACKAGES=$(VENV)/lib/python3.8/site-packages

TOPLEVEL_LANG = verilog
VERILOG_SOURCES = $(shell pwd)/../register.v
TOPLEVEL = dff
MODULE = test-case

export COCOTB_SHARE_DIR=$(VENV_SITE_PACKAGES)/cocotb/share

include $(shell cocotb-config --makefiles)/Makefile.sim
