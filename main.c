#include <stdio.h>

extern float testDeliverable1();
extern float testDeliverable2();
extern float testDeliverable3();

int main()
{
    float marks = testDeliverable1();
    printf("Del 1 Marks %.f\n", marks);
    marks = testDeliverable2();
    printf("Del 2 Marks %.f\n", marks);
    //if (testDeliverable1() < 29 || testDeliverable2() < 29)
    //{
    //    printf("Warning: Previous Deliverables are not fully correct and might affect Deliverable 3\n");
    //}

    //float marks = testDeliverable3();
    //printf("Total Marks %.f\n", marks);

    return 0;
}