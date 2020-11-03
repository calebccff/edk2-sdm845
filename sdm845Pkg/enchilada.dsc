[Defines]
  PLATFORM_NAME                  = sdm845Pkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = sdm845Pkg/enchilada.fdf

!include sdm845Pkg/sdm845Pkg.dsc

[PcdsFixedAtBuild.common]
  # System Memory (5GB)
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x140000000
  #gsdm845PkgTokenSpaceGuid.PcdSmbiosSystemModel|"OnePlus 6"
  #gsdm845PkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Qualcomm Snapdragon 845 Processor"

  #gsdm845PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x9D469780

  gsdm845PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080
  gsdm845PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2200

  #gsdm845PkgTokenSpaceGuid.SynapticsCtlrAddress|0x4b
  #gsdm845PkgTokenSpaceGuid.SynapticsCtlrResetPin|99
  #gsdm845PkgTokenSpaceGuid.SynapticsCtlrIntPin|125
  #gsdm845PkgTokenSpaceGuid.SynapticsCtlrI2cDevice|1
