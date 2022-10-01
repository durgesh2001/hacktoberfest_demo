#include <stdio.h>

int main() {
    int group, workhours, overtime, sallary, insurance, total;
    float allowance;
    
    printf("\n==== Sallary Counter ====\n");
    printf("Input Group \t : ");
    scanf("%d", &group);
    printf("Input workhours \t : ");
    scanf("%d", &workhours); 
    
    if(group==1) { 
                if(workhours>200) {
                overtime=(workhours-200)*10000; }
                else { 
                     overtime=0; } 
                
                sallary=600000;
                allowance=sallary*0.10;
                insurance=75000;
                total=sallary+overtime+allowance-insurance;
                
                printf("sallary \t : %d", sallary); 
                printf("\nallowance \t : %.0f", allowance);
                printf("\ninsurance \t : %d", insurance);
                printf("\nTotal sallary \t : %d", total);
                }
                
    if(group==2) { 
                if(workhours>200) {
                overtime=(workhours-200)*20000; }
                else { 
                     overtime=0; } 
                
                sallary=800000;
                allowance=sallary*0.15;
                insurance=75000;
                total=sallary+overtime+allowance-insurance;
                
                printf("sallary \t : %d", sallary);
                printf("\nallowance \t : %.0f", allowance);
                printf("\ninsurance \t : %d", insurance);
                printf("\nTotal sallary \t : %d", total);
                }
                
    if(group==3) { 
                if(workhours>200) {
                overtime=(workhours-200)*30000; }
                else { 
                     overtime=0; } 
                
                sallary=1000000;
                allowance=sallary*0.15;
                insurance=75000;
                total=sallary+overtime+allowance-insurance;
                
                printf("sallary \t : %d", sallary); //menampilkan hasil
                printf("\nallowance \t : %.0f", allowance);
                printf("\ninsurance \t : %d", insurance);
                printf("\nTotal sallary \t : %d", total);
                }
                
    if(group!=1 && group!=2 && group!=3) {
         if(workhours>200) {
                overtime=(workhours-200)*5000; }
                else { 
                     overtime=0; } 
                
                sallary=500000;
                allowance=sallary*0.10;
                insurance=75000;
                total=sallary+overtime+allowance-insurance;
                
                printf("sallary \t : %d", sallary);
                printf("\nallowance \t : %.0f", allowance);
                printf("\ninsurance \t : %d", insurance);
                printf("\nTotal sallary \t : %d", total);
                }
     
     printf("\n===================================");    
     fflush(stdin); getchar(); 
     return 0;
}
