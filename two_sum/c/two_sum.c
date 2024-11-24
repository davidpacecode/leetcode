#include <stdio.h>
#include <stdlib.h>

int*
twoSum(int*, int, int, int*);

int
main (void) {

  int nums[] = {2,7,11,15};
  int target = 9;
  int returnSize;
  int *indices;

  indices = twoSum(nums,4,target,&returnSize);
  printf("%d, %d\n",indices[0],indices[1]);

  return 0;
}

int*
twoSum(int* nums, int numsSize, int target, int* returnSize) {
  
  *returnSize = 2;
  int i=0, j=1;
  int *ret_ptr = (int*)malloc(2*sizeof(int));

  for(i=0;i<numsSize-1;i++)
    for(j=i+1;j<numsSize;j++)
      if(nums[i]+nums[j] == target) {
        ret_ptr[0]=i;
        ret_ptr[1]=j;
        return ret_ptr;
      }
  return ret_ptr; /* technically this is an error condition */
}
