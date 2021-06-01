#include<stdio.h>
#include <stdint.h>


uint32_t arr[]={0,0};
void code(uint32_t * v, uint32_t * k) 
{ 
uint32_t  y=v[0] ;
uint32_t  z=v[1];
uint32_t  sum=0; /* set up */ 
uint32_t  delta=0x9e3779b9; /* a key schedule constant */ 
int n=32 ; 
    while (n-->0) 
    { /* basic cycle start */ 
    sum += delta ; 
    y += ((z<<4)+k[0]) ^ (z+sum) ^ ((z>>5)+k[1]) ; 
    z += ((y<<4)+k[2]) ^ (y+sum) ^ ((y>>5)+k[3]) ; 
    } 

v[0]=y ; v[1]=z ;

arr[0]=y;
arr[1]=z; 
} 

int main(){
    uint32_t  v[]={0xFFFFFFFF,0xFFFFFFFF};
    uint32_t  k[]={0,0,0,0};
    code(v,k);
    printf("%x %x",arr[1],arr[0]);
    ///arr[1]= 1335b5b8
    ///arr[0]= f6f4bf6e
    return 0;
}