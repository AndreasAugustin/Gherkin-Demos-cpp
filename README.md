Cpp this demo contains a usage for gherkin with cpp
===========

[![Join the chat at https://gitter.im/AndreasAugustin/Gherkin-Demos](https://badges.gitter.im/AndreasAugustin/Gherkin-Demos.svg)](https://gitter.im/AndreasAugustin/Gherkin-Demos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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
