#!/bin/bash

g++ -c -fPIC  greet.cpp -o greet.o
g++ -c -fPIC -I/home/angray/.julia/packages/CxxWrap/sarOk/deps/usr/include/ -I/usr/local/opt/julia-1.0.2/include/julia/ greet_wrap.cpp -o greet_wrap.o
g++ -shared -fPIC -D_GLIBCXX_USE_CXX11_ABI=0 -I/home/angray/.julia/packages/CxxWrap/sarOk/deps/usr/include/ -I/usr/local/opt/julia-1.0.2/include/julia/ greet.o greet_wrap.o -L/home/angray/.julia/packages/CxxWrap/sarOk/deps/usr/lib/  -L/usr/local/opt/julia-1.0.2/lib/ -ljulia -lcxxwrap_julia -o greet_wrap.so


# link
# https://github.com/JuliaInterop/CxxWrap.jl