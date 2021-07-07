#include "HLS/hls.h"
#include <stdio.h>
#include <stdint.h>

using namespace ihc;

component void count(uint32_t v[2], uint32_t k[4])
{

	static uint32_t sum;
	static uint32_t y , z ;
	static bool initialized =0;
	if(!initialized){
		y = v[0];
		z = v[1];
		sum = 0;
		initialized=1;

	}
	
	uint32_t  delta = 0x9e3779b9; /* a key schedule constant */
	

		sum += delta;
		y += ((z << 4) + k[0]) ^ (z + sum) ^ ((z >> 5) + k[1]);
		z += ((y << 4) + k[2]) ^ (y + sum) ^ ((y >> 5) + k[3]);
	
	v[0] = y;
	v[1] = z;

}

int main() {

	uint32_t  v[2] = { 0xFFFFFFFF,0xFFFFFFFF };
	uint32_t  k[4] = { 0,0,0,0 };
	const int SIZE = 32;
    uint32_t resultV[SIZE][SIZE];
    resultV[0][0]= 0xFFFFFFFF;
    resultV[0][1]= 0xFFFFFFFF;
    for(unsigned int i=0; i<SIZE; ++i) {
      ihc_hls_enqueue_noret(count , resultV[i] , k);
    }

    ihc_hls_component_run_all(count);



 
  bool pass = false;
  if(resultV[31][1]==0x1335b5b8 && resultV[31][0]==0xf6f4bf6e){
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

