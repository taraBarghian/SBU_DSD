#include "HLS/hls.h"
#include <stdio.h>
#include <stdint.h>

using namespace ihc;

component void count(uint32_t v[2], uint32_t k[4])
{

	uint32_t  y = v[0];
	uint32_t  z = v[1];
	uint32_t  sum = 0; /* set up */
	uint32_t  delta = 0x9e3779b9; /* a key schedule constant */
	int n = 32;
	while (n-->0)
	{ /* basic cycle start */
		sum += delta;
		y += ((z << 4) + k[0]) ^ (z + sum) ^ ((z >> 5) + k[1]);
		z += ((y << 4) + k[2]) ^ (y + sum) ^ ((y >> 5) + k[3]);
	}
	v[0] = y;
	v[1] = z;

}

int main() {

	uint32_t  v[2] = { 0xFFFFFFFF,0xFFFFFFFF };
	uint32_t  k[4] = { 0,0,0,0 };
	count(v, k);



 
  bool pass = false;
  if(v[1]==0x1335b5b8 && v[0]==0xf6f4bf6e){
  	pass = true;
  }

  if (pass) {
    printf("PASSED\n");
  }
  else {
    printf("FAILED\n");
  }

  return 0;

}

