cdef extern from "include/include.h":

  ctypedef struct struct_test:
    int a
    int b

  int sum(struct_test param_in_struct);
  int minus(struct_test param_in_struct);
