################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Scan.obj: ../Scan.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="Scan.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

deepsleep.obj: ../deepsleep.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="deepsleep.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio_if.obj: ../gpio_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="gpio_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

pinmux.obj: ../pinmux.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="pinmux.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

socket_creat.obj: ../socket_creat.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="socket_creat.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

socket_send.obj: ../socket_send.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="socket_send.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/startup_ccs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="startup_ccs.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer_if.obj: ../timer_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="timer_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart_if.obj: D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/uart_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="uart_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

udma_if.obj: D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common/udma_if.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff --include_path="C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/include" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/simplelink/source" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/common" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/driverlib" --include_path="D:/ti/CC3200SDK_1.0.0/cc3200-sdk/inc" -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="udma_if.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


