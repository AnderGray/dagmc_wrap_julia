#include "jlcxx/jlcxx.hpp"
#include "greet.hpp"

JLCXX_MODULE define_julia_module(jlcxx::Module &mod)
{
    mod.method("greet", &greet);
}