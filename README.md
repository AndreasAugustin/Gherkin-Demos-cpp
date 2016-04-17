Cpp this demo contains a usage for gherkin with cpp
===========

[![Join the chat at https://gitter.im/AndreasAugustin/Gherkin-Demos](https://badges.gitter.im/AndreasAugustin/Gherkin-Demos.svg)](https://gitter.im/AndreasAugustin/Gherkin-Demos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Windows build status](https://ci.appveyor.com/api/projects/status/6m25id54pe7dhdv6?svg=true)](https://ci.appveyor.com/project/AndreasAugustin/gherkin-demos-cpp)

[![Linux build Status](https://travis-ci.org/AndreasAugustin/Gherkin-Demos-cpp.svg?branch=master)](https://travis-ci.org/AndreasAugustin/Gherkin-Demos-cpp)

# Requirements
- Cmake
- Boost
- Ruby gem (for gherkin with the wire protocol)
    - cucumber
- Cppspec
- Google mock (included in package)
    - https://github.com/google/googletest
- Cucumber-Cpp (included in package)
    - https://github.com/paoloambrosio/cucumber-cpp

# Project setup (Linux with make)
     $ git clone https://github.com/AndreasAugustin/Gherkin-Demos-cpp.git
     $ cd cpp
     $ mkdir build
     $ cd build
     $ cmake ..
     $ make
     $ cd devel/lib/soundex/test
     $ ./FeatureShowcaseSteps &
     $ cd <git repo>/cpp/lib/soundex/test
     $ cucumber


# The soundex algorithm
The example in c++ is from book
    Modern C++ Programming with Test-Driven Development: Code Better, Sleep Better
    Jeff Langr
https://github.com/jlangr/
