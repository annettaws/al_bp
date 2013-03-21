# Makefile for compiling libbp_abstraction_layer.a

LIB=static
#LIB=dynamic
LIB_NAME_BASE=libal_bp
CC=gcc
DIR_BP_IMPL=./src/bp_implementations/

ifeq ($(strip $(LIB)),static)
LIB_NAME=$(LIB_NAME_BASE).a
LIB_CC=ar crs
else
LIB_NAME=$(LIB_NAME_BASE).so
LIB_CC=gcc -shared -o
endif

ifeq ($(or $(ION_DIR),$(DTN_DIR)),)
# NOTHING
all: help
else 
all: lib
endif 

ifeq ($(strip $(DTN_DIR)),)
# ION
INC=-I$(ION_DIR) -I$(ION_DIR)/bp/include -I$(ION_DIR)/bp/library
OPT=-DION_IMPLEMENTATION -fPIC
else ifeq ($(strip $(ION_DIR)),)
# DTN
INC=-I$(DTN_DIR) -I$(DTN_DIR)/applib/
OPT=-DDTN_IMPLEMENTATION -fPIC
else ifneq ($(and $(ION_DIR),$(DTN_DIR)),)
# BOTH
INC=-I$(DTN_DIR) -I$(DTN_DIR)/applib/ -I$(ION_DIR)/bp/include -I$(ION_DIR)/bp/library
OPT=-DION_IMPLEMENTATION -DDTN_IMPLEMENTATION -fPIC
endif

lib: objs
	$(LIB_CC) $(LIB_NAME) *.o
	
install: 
	cp $(LIB_NAME) /usr/lib/

uninstall: 
	rm -rf /usr/lib/$(LIB_NAME)

objs:
	$(CC) -I$(DIR_BP_IMPL) $(INC) $(OPT) -c src/*.c
	$(CC) $(INC) $(OPT) -c src/bp_implementations/*.c

help:
	@echo "Usage:"
	@echo "For Only DTN2 Impl: 	make DTN_DIR=<dtn2_dir>"
	@echo "For Only ION Impl:	make ION_DIR=<ion_dir>"
	@echo "For both Impl: 		make DTN_DIR=<dtn2_dir> ION_DIR=<ion_dir>"

clean:
	@rm -rf *.o *.so *.a
