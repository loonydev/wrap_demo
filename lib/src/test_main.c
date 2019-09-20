#include "include.h"

int sum(struct_test param_in_struct){
  return param_in_struct.a+param_in_struct.b;
}

int minus(struct_test param_in_struct){
  return param_in_struct.a-param_in_struct.b;
}
