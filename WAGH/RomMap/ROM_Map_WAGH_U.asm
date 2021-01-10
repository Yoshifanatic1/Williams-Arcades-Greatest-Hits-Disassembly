
macro WAGH_GameSpecificAssemblySettings()
	!ROM_WAGH_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_WAGH_E = $0002							;/

	%SetROMToAssembleForHack(WAGH_U, !ROMID)
endmacro

macro WAGH_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_WAGH.asm
	incsrc ../RAM_Map_WAGH.asm
	incsrc ../Routine_Macros_WAGH.asm
	incsrc ../SNES_Macros_WAGH.asm
endmacro

macro WAGH_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_WAGH.asm
	incsrc ../Misc_Defines_WAGH.asm
	incsrc ../SPC700/SPC700_Macros_WAGH.asm
endmacro

macro WAGH_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro WAGH_LoadGameSpecificMSU1Files()
endmacro

macro WAGH_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Williams"
	!Define_Global_DeveloperName = "Digital Eclipse"
	!Define_Global_ReleaseDate = "October 1996"
	!Define_Global_BaseROMMD5Hash = "67f764afb3cd56cf3d96fb328353d511"

	!Define_Global_MakerCode = "5D"
	!Define_Global_GameCode = "AW8E"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "Arcades Greatest Hits"
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_512KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $E15C
	!UnusedNativeModeVector1 = $FFFF
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = $FFFF
	!NativeModeBRKVector = $FFFF
	!NativeModeAbortVector = $FFFF
	!NativeModeNMIVector = $0020
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_809BCD
	!UnusedEmulationModeVector1 = $0000
	!UnusedEmulationModeVector2 = $0000
	!EmulationModeCOPVector = $0000
	!EmulationModeBRKVector = $0000
	!EmulationModeAbortVector = $0000
	!EmulationModeNMIVector = $0000
	!EmulationModeResetVector = CODE_808000
	!EmulationModeIRQVector = $0000
	%LoadExtraRAMFile("SRAM_Map_WAGH.asm")
endmacro

macro WAGH_LoadROMMap()
	%WAGHBank80Macros(!BANK_00, !BANK_00)
	%WAGHBank81Macros(!BANK_01, !BANK_01)
	%WAGHBank82Macros(!BANK_02, !BANK_02)
	%WAGHBank83Macros(!BANK_03, !BANK_03)
	%WAGHBank84Macros(!BANK_04, !BANK_04)
	%WAGHBank85Macros(!BANK_05, !BANK_05)
	%WAGHBank86Macros(!BANK_06, !BANK_06)
	%WAGHBank87Macros(!BANK_07, !BANK_07)
	%WAGHBank88Macros(!BANK_08, !BANK_08)
	%WAGHBank89Macros(!BANK_09, !BANK_09)
	%WAGHBank8AMacros(!BANK_0A, !BANK_0A)
	%WAGHBank8BMacros(!BANK_0B, !BANK_0B)
	%WAGHBank8CMacros(!BANK_0C, !BANK_0C)
	%WAGHBank8DMacros(!BANK_0D, !BANK_0D)
	%WAGHBank8EMacros(!BANK_0E, !BANK_0E)
	%WAGHBank8FMacros(!BANK_0F, !BANK_0F)
endmacro
