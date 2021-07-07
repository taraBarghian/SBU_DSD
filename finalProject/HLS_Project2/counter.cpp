#include "HLS/hls.h"
#include<stdio.h>
#include <stdint.h>

using namespace ihc;

component void count(long  v[2], long k[4]) { 
long  y=v[0] ;
long  z=v[1];
long  sum=0; /* set up */ 
long  delta = 0x9e3779b9; /* a key schedule constant */ 
int n=32 ; 
    while (n-->0) { /* basic cycle start */ 
    sum += delta ; 
    y += ((z<<4)+k[0]) ^ (z+sum) ^ ((z>>5)+k[1]) ; 
    z += ((y<<4)+k[2]) ^ (y+sum) ^ ((y>>5)+k[3]) ; 
    } 

v[0] =y;
v[1] =z;

} 

int main(){
    
    long  v[2] = { 0xFFFFFFFF,0xFFFFFFFF };
	long  k[4] = { 0,0,0,0 };
    
    ihc_hls_enqueue_noret(count , v , k);
    ihc_hls_component_run_all(count);
   

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