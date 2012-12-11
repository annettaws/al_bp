################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/al_bp_api.c 

OBJS += \
./src/al_bp_api.o 

C_DEPS += \
./src/al_bp_api.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -I/usr/dtn2/applib -I/usr/ion/bp/library -I/usr/ion/bp/utils -I/home/annetta/DTN/bp_abstraction_layer/bp_abstraction_layer/src -I/usr/dtn2 -I/home/annetta/DTN/bp_abstraction_layer/bp_abstraction_layer/src/bp_implementations -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


