################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./Scan.obj" \
"./deepsleep.obj" \
"./gpio_if.obj" \
"./main.obj" \
"./pinmux.obj" \
"./socket_creat.obj" \
"./socket_send.obj" \
"./startup_ccs.obj" \
"./timer_if.obj" \
"./uart_if.obj" \
"./udma_if.obj" \
"../cc3200v1p32.cmd" \
-l"libc.a" \
-l"D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/tcp_socket/ccs//../../../simplelink/ccs/NON_OS/simplelink.a" \
-l"D:/ti/CC3200SDK_1.0.0/cc3200-sdk/example/tcp_socket/ccs//../../../driverlib/ccs/Release/driverlib.a" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
scan_and_send.out \

EXE_OUTPUTS__QUOTED += \
"scan_and_send.out" \

BIN_OUTPUTS += \
scan_and_send.hex \

BIN_OUTPUTS__QUOTED += \
"scan_and_send.hex" \


# All Target
all: scan_and_send.out

# Tool invocations
scan_and_send.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linker'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armcl" -mv7M4 --code_state=16 --float_support=fpalib --abi=eabi -me -Ooff -g --gcc --define=ccs --define=USER_INPUT_ENABLE --define=cc3200 --display_error_number --diag_warning=225 --diag_wrap=off -z -m"scan_and_send.map" --heap_size=0x800 --stack_size=0x800 -i"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/lib" -i"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/include" --reread_libs --warn_sections --display_error_number --diag_wrap=off --xml_link_info="scan_and_send_linkInfo.xml" --rom_model -o "scan_and_send.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '
	@$(MAKE) --no-print-directory post-build

scan_and_send.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: ARM Hex Utility'
	"C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armhex"  -o "scan_and_send.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)$(BIN_OUTPUTS__QUOTED)
	-$(RM) "Scan.pp" "deepsleep.pp" "gpio_if.pp" "main.pp" "pinmux.pp" "socket_creat.pp" "socket_send.pp" "startup_ccs.pp" "timer_if.pp" "uart_if.pp" "udma_if.pp" 
	-$(RM) "Scan.obj" "deepsleep.obj" "gpio_if.obj" "main.obj" "pinmux.obj" "socket_creat.obj" "socket_send.obj" "startup_ccs.obj" "timer_if.obj" "uart_if.obj" "udma_if.obj" 
	-@echo 'Finished clean'
	-@echo ' '

post-build:
	-"C:/ti/ccs6/ccsv6/utils/tiobj2bin/tiobj2bin" "scan_and_send.out" "scan_and_send.bin" "C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armofd" "C:/ti/ccs6/ccsv6/tools/compiler/arm_5.1.6/bin/armhex" "C:/ti/ccs6/ccsv6/utils/tiobj2bin/mkhex4bin"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

