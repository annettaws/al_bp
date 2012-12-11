################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/al_bp_implementations/al_bp_dtn.c \
../src/al_bp_implementations/al_bp_dtn_conversions.c \
../src/al_bp_implementations/al_bp_ion.c \
../src/al_bp_implementations/al_bp_ion_conversions.c 

OBJS += \
./src/al_bp_implementations/al_bp_dtn.o \
./src/al_bp_implementations/al_bp_dtn_conversions.o \
./src/al_bp_implementations/al_bp_ion.o \
./src/al_bp_implementations/al_bp_ion_conversions.o 

C_DEPS += \
./src/al_bp_implementations/al_bp_dtn.d \
./src/al_bp_implementations/al_bp_dtn_conversions.d \
./src/al_bp_implementations/al_bp_ion.d \
./src/al_bp_implementations/al_bp_ion_conversions.d 


# Each subdirectory must supply rules for building sources it contributes
src/al_bp_implementations/%.o: ../src/al_bp_implementations/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I/usr/dtn2/applib -I/usr/ion/bp/library -I/usr/ion/bp/utils -I/home/annetta/DTN/bp_abstraction_layer/bp_abstraction_layer/src -I/usr/dtn2 -I/home/annetta/DTN/bp_abstraction_layer/bp_abstraction_layer/src/bp_implementations -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


