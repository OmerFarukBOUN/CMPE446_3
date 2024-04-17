set SynModuleInfo {
  {SRCNAME OP_AL_32I MODELNAME OP_AL_32I RTLNAME top_module_OP_AL_32I}
  {SRCNAME hart MODELNAME hart RTLNAME top_module_hart}
  {SRCNAME top_module MODELNAME top_module RTLNAME top_module IS_TOP 1
    SUBMODULES {
      {MODELNAME top_module_sparsemux_65_5_32_1_1 RTLNAME top_module_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
}
