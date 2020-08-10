#include "src/libfuzzer/libfuzzer_macro.h"
#include "scratch.pb.h"

#include <string>
#include <iostream>
#include <stdio.h>

DEFINE_PROTO_FUZZER(const fuzz_package::FuzzData& fuzz_data){

    if(fuzz_data.a() > 100 && 
       fuzz_data.b() < 30  &&
       fuzz_data.c() == 10 &&
       fuzz_data.d() == "abc" ){
           std::cout << "hello there!" << std::endl;
           abort();
       }

}
