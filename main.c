





 int initialised_global = 2;
 int uninitialised_global ;


// static int static_uninitialised_global;
// static int static_initialised_global = 3;

// int __attribute__((section("ram"))) initialised_global;
// initialised_global = 5;



int foo(int local){
    // int local_variable =4;
// static int static_uninitialised_local_variable ;
// static int static_initialised_local_variable = 5;

return local + uninitialised_global + initialised_global ;
}

extern char _src_start_data_;
extern char _dst_start_data_;
extern char _dst_end_data_;
extern char _dst_start_bss_;
extern char _dst_end_bss_;
// extern int a;
// extern int b;
// extern int c;
// extern int d;
// extern int e;







void __attribute__((section("AXAY"))) xyz(){    /* define a section name*/
   char *src= &_src_start_data_;
   char *dst= &_dst_start_data_;
   char *dst_end= &_dst_end_data_;
    char *dst_bss= &_dst_start_bss_;
    char *end_bss= &_dst_end_bss_;


    while(dst !=dst_end){
        *dst = *src;
        dst++;
        src++;
    }

      while(dst_bss != &end_bss){
        *dst_bss = 0 ;
        dst_bss++;

    }

}