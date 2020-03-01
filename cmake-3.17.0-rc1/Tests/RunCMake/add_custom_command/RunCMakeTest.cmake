include(RunCMake)

run_cmake(AppendLiteralQuotes)
run_cmake(AppendNoOutput)
run_cmake(AppendNotOutput)
run_cmake(BadArgument)
run_cmake(BadByproduct)
run_cmake(BadOutput)
run_cmake(GeneratedProperty)
run_cmake(LiteralQuotes)
run_cmake(NoArguments)
run_cmake(NoOutputOrTarget)
run_cmake(OutputAndTarget)
run_cmake(SourceByproducts)
run_cmake(SourceUsesTerminal)
run_cmake(TargetImported)
run_cmake(TargetLiteralQuotes)
run_cmake(TargetNotInDir)

if(${RunCMake_GENERATOR} MATCHES "Visual Studio ([^89]|[89][0-9])")
  run_cmake(RemoveEmptyCommands)
endif()

run_cmake(AssigningMultipleTargets)
set(RunCMake_TEST_BINARY_DIR ${RunCMake_BINARY_DIR}/AssigningMultipleTargets-build)
set(RunCMake_TEST_NO_CLEAN 1)
run_cmake_command(AssigningMultipleTargets-build ${CMAKE_COMMAND} --build .)
unset(RunCMake_TEST_BINARY_DIR)
unset(RunCMake_TEST_NO_CLEAN)