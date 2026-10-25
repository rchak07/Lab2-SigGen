#include <verilated.h>
#include <verilated_vcd_c.h>
#include <Vsinegen.h>
#include <vbuddy.cpp>

#define MAX_SIM_CYC 1000000
#define ADDRESS_WIDTH 8
#define ROM_SZ 256

int main(argc)