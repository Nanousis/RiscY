/*
 ****************************************************************************
 *
 *                   "DHRYSTONE" Benchmark Program
 *                   -----------------------------
 *                                                                            
 *  Version:    C, Version 2.1
 *                                                                            
 *  File:       dhry_1.c (part 2 of 3)
 *
 *  Date:       May 25, 1988
 *
 *  Author:     Reinhold P. Weicker
 *
 ****************************************************************************
 */

/*
  Original from https://github.com/sifive/benchmark-dhrystone
  Modified from https://github.com/stnolting/RISCY/tree/v1.9.0/sw/example/dhrystone
  Modified for the RISC-Y core
*/

#define TIME

#include "riscYstdio.h"
#include <string.h>
#include "dhry.h"
#include <stdint.h>
#include "tinyprintf.h"

#ifndef DHRY_ITERS
#define DHRY_ITERS 10000
#endif
#define CLOCKS_PER_SEC 27000000
/* Global Variables: */

Rec_Pointer     Ptr_Glob,
                Next_Ptr_Glob;
int             Int_Glob;
Boolean         Bool_Glob;
char            Ch_1_Glob,
                Ch_2_Glob;
int             Arr_1_Glob [50];
int             Arr_2_Glob [50] [50];

//extern char     *malloc ();
Enumeration Func_1(Capital_Letter Ch_1_Par_Val, Capital_Letter Ch_2_Par_Val);
  /* forward declaration necessary since Enumeration may not simply be int */

#ifndef REG
        Boolean Reg = false;
#define REG
        /* REG becomes defined as empty */
        /* i.e. no register variables   */
#else
        Boolean Reg = true;
#endif

/* variables for time measurement: */

#ifdef TIMES
struct tms      time_info;
extern  int     times ();
                /* see library function "times" */
#define Too_Small_Time (2*HZ)
                /* Measurements should last at least about 2 seconds */
#endif
#ifdef TIME
extern long     time();
                /* see library function "time"  */
#define Too_Small_Time 2
                /* Measurements should last at least 2 seconds */
#endif
#ifdef MSC_CLOCK
extern clock_t	clock();
#define Too_Small_Time (2*HZ)
#endif

long            Begin_Time,
                End_Time,
                User_Time;
float           Microseconds,
                Dhrystones_Per_Second;

/* end of variables for time measurement */


int main (void)
/*****/

  /* main program, corresponds to procedures        */
  /* Main and Proc_0 in the Ada version             */
{
    init_printf (NULL, tfp_putc);      /* set output sink */
        One_Fifty       Int_1_Loc;
  REG   One_Fifty       Int_2_Loc;
        One_Fifty       Int_3_Loc;
  REG   char            Ch_Index;
        Enumeration     Enum_Loc;
        Str_30          Str_1_Loc;
        Str_30          Str_2_Loc;
  REG   int             Run_Index;
  REG   int             Number_Of_Runs;


  { /* *****  RISCY-SPECIFIC ***** */
    tfp_printf("RISCY: Processor running at %d Hz\r\n", 27000000);
    tfp_printf("RISCY: Executing Dhrystone (%d iterations). This may take some time...\r\n\r\n", (uint32_t)DHRY_ITERS);

#ifndef RUN_DHRYSTONE
    #warning DHRYSTONE HAS NOT BEEN COMPILED! Use >>make USER_FLAGS+=-DRUN_DHRYSTONE clean_all exe<< to compile it.

    // inform the user if you are actually executing this
    tfp_printf("ERROR! DhryStone has not been compiled. Use >>make USER_FLAGS+=-RUN_DHRYSTONE clean_all exe<< to compile it.\r\n");

    while(1);
#endif
  } /* ***** /RISCY-SPECIFIC ***** */


  /* Initializations */
  { /* *****  RISCY-SPECIFIC ***** */
    // use static memory allocation, no dynamic malloc
    //Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
    //Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
    static Rec_Type Rec_Type_v0, Rec_Type_v1;
    Next_Ptr_Glob = &Rec_Type_v0;
    Ptr_Glob = &Rec_Type_v1;
  } /* ***** /RISCY-SPECIFIC ***** */


  Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
  Ptr_Glob->Discr                       = Ident_1;
  Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
  Ptr_Glob->variant.var_1.Int_Comp      = 40;
  strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
          "DHRYSTONE PROGRAM, SOME STRING");
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");

  Arr_2_Glob [8][7] = 10;
        /* Was missing in published program. Without this statement,    */
        /* Arr_2_Glob [8][7] would have an undefined value.             */
        /* Warning: With 16-Bit processors and Number_Of_Runs > 32000,  */
        /* overflow may occur for this array element.                   */

  tfp_printf ("\r\n");
  tfp_printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\r\n");
  tfp_printf ("\r\n");
  if (Reg)
  {
    tfp_printf ("Program compiled with 'register' attribute\r\n");
    tfp_printf ("\r\n");
  }
  else
  {
    tfp_printf ("Program compiled without 'register' attribute\r\n");
    tfp_printf ("\r\n");
  }

  Number_Of_Runs = DHRY_ITERS;

  tfp_printf ("Execution starts, %d runs through Dhrystone\r\n", (uint32_t)Number_Of_Runs);

  /***************/
  /* Start timer */
  /***************/

/*
#ifdef TIMES
  times (&time_info);
  Begin_Time = (long) time_info.tms_utime;
#endif
#ifdef TIME
  Begin_Time = time ( (long *) 0);
#endif
#ifdef MSC_CLOCK
  Begin_Time = clock();
#endif
*/

  { /* *****  RISCY-SPECIFIC ***** */
    Begin_Time = (long)get_time();
  } /* ***** /RISCY-SPECIFIC ***** */

  for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
  {

    Proc_5();
    Proc_4();
      /* Ch_1_Glob == 'A', Ch_2_Glob == 'B', Bool_Glob == true */
    Int_1_Loc = 2;
    Int_2_Loc = 3;
    strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
    Enum_Loc = Ident_2;
    Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
      /* Bool_Glob == 1 */
    while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
    {
      Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
        /* Int_3_Loc == 7 */
      Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
        /* Int_3_Loc == 7 */
      Int_1_Loc += 1;
    } /* while */
      /* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
    Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
      /* Int_Glob == 5 */
    Proc_1 (Ptr_Glob);
    for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                             /* loop body executed twice */
    {
      if (Enum_Loc == Func_1 (Ch_Index, 'C'))
          /* then, not executed */
        {
        Proc_6 (Ident_1, &Enum_Loc);
        strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
        Int_2_Loc = Run_Index;
        Int_Glob = Run_Index;
        }
    }
      /* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
    Int_2_Loc = Int_2_Loc * Int_1_Loc;
    Int_1_Loc = Int_2_Loc / Int_3_Loc;
    Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
      /* Int_1_Loc == 1, Int_2_Loc == 13, Int_3_Loc == 7 */
    Proc_2 (&Int_1_Loc);
      /* Int_1_Loc == 5 */

  } /* loop "for Run_Index" */

  /**************/
  /* Stop timer */
  /**************/

/*
#ifdef TIMES
  times (&time_info);
  End_Time = (long) time_info.tms_utime;
#endif
#ifdef TIME
  End_Time = time ( (long *) 0);
#endif
#ifdef MSC_CLOCK
  End_Time = clock();
#endif
*/

  { /* *****  RISCY-SPECIFIC ***** */
    End_Time = (long)get_time();
  } /* ***** /RISCY-SPECIFIC ***** */
  

  tfp_printf ("Execution ends\r\n");
  tfp_printf ("\r\n");
  tfp_printf ("Final values of the variables used in the benchmark:\r\n");
  tfp_printf ("\r\n");
  tfp_printf ("Int_Glob:            %d\r\n", (uint32_t)Int_Glob);
  tfp_printf ("        should be:   %d\r\n", 5);
  tfp_printf ("Bool_Glob:           %d\r\n", (uint32_t)Bool_Glob);
  tfp_printf ("        should be:   %d\r\n", 1);
  tfp_printf ("Ch_1_Glob:           %c\r\n", (uint32_t)Ch_1_Glob);
  tfp_printf ("        should be:   %c\r\n", 'A');
  tfp_printf ("Ch_2_Glob:           %c\r\n", (uint32_t)Ch_2_Glob);
  tfp_printf ("        should be:   %c\r\n", 'B');
  tfp_printf ("Arr_1_Glob[8]:       %d\r\n", (uint32_t)Arr_1_Glob[8]);
  tfp_printf ("        should be:   %d\r\n", 7);
  tfp_printf ("Arr_2_Glob[8][7]:    %d\r\n", (uint32_t)Arr_2_Glob[8][7]);
  tfp_printf ("        should be:   Number_Of_Runs + 10\r\n");
  tfp_printf ("Ptr_Glob->\r\n");
  tfp_printf ("  Ptr_Comp:          %d\r\n", (uint32_t) Ptr_Glob->Ptr_Comp);
  tfp_printf ("        should be:   (implementation-dependent)\r\n");
  tfp_printf ("  Discr:             %d\r\n", (uint32_t)Ptr_Glob->Discr);
  tfp_printf ("        should be:   %d\r\n", 0);
  tfp_printf ("  Enum_Comp:         %d\r\n", (uint32_t)Ptr_Glob->variant.var_1.Enum_Comp);
  tfp_printf ("        should be:   %d\r\n", 2);
  tfp_printf ("  Int_Comp:          %d\r\n", (uint32_t)Ptr_Glob->variant.var_1.Int_Comp);
  tfp_printf ("        should be:   %d\r\n", 17);
  tfp_printf ("  Str_Comp:          %s\r\n", Ptr_Glob->variant.var_1.Str_Comp);
  tfp_printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
  tfp_printf ("Next_Ptr_Glob->\r\n");
  tfp_printf ("  Ptr_Comp:          %d\r\n", (uint32_t) Next_Ptr_Glob->Ptr_Comp);
  tfp_printf ("        should be:   (implementation-dependent), same as above\r\n");
  tfp_printf ("  Discr:             %d\r\n", (uint32_t)Next_Ptr_Glob->Discr);
  tfp_printf ("        should be:   %d\r\n", 0);
  tfp_printf ("  Enum_Comp:         %d\r\n", (uint32_t)Next_Ptr_Glob->variant.var_1.Enum_Comp);
  tfp_printf ("        should be:   %d\r\n", 1);
  tfp_printf ("  Int_Comp:          %d\r\n", (uint32_t)Next_Ptr_Glob->variant.var_1.Int_Comp);
  tfp_printf ("        should be:   %d\r\n", 18);
  tfp_printf ("  Str_Comp:          %s\r\n",
                                Next_Ptr_Glob->variant.var_1.Str_Comp);
  tfp_printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
  tfp_printf ("Int_1_Loc:           %d\r\n", (uint32_t)Int_1_Loc);
  tfp_printf ("        should be:   %d\r\n", 5);
  tfp_printf ("Int_2_Loc:           %d\r\n", (uint32_t)Int_2_Loc);
  tfp_printf ("        should be:   %d\r\n", 13);
  tfp_printf ("Int_3_Loc:           %d\r\n", (uint32_t)Int_3_Loc);
  tfp_printf ("        should be:   %d\r\n", 7);
  tfp_printf ("Enum_Loc:            %d\r\n", (uint32_t)Enum_Loc);
  tfp_printf ("        should be:   %d\r\n", 1);
  tfp_printf ("Str_1_Loc:           %s\r\n", Str_1_Loc);
  tfp_printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\r\n");
  tfp_printf ("Str_2_Loc:           %s\r\n", Str_2_Loc);
  tfp_printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\r\n");
  tfp_printf ("\r\n");

  User_Time = End_Time - Begin_Time;

//  if (User_Time < Too_Small_Time)
//  {
//    tfp_printf ("Measured time too small to obtain meaningful results\r\n");
//    tfp_printf ("Please increase number of runs\r\n");
//    tfp_printf ("\r\n");
//  }
//  else
  {
/*
#ifdef TIME
    Microseconds = (float) User_Time * Mic_secs_Per_Second 
                        / (float) Number_Of_Runs;
    Dhrystones_Per_Second = (float) Number_Of_Runs / (float) User_Time;
#else
    Microseconds = (float) User_Time * Mic_secs_Per_Second 
                        / ((float) HZ * ((float) Number_Of_Runs));
    Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
                        / (float) User_Time;
#endif
*/
    { /* *****  RISCY-SPECIFIC ***** */
      tfp_printf ("Microseconds for one run through Dhrystone: %d \r\n", (uint32_t)((User_Time * (Mic_secs_Per_Second / Number_Of_Runs)) / CLOCKS_PER_SEC));

      uint32_t dhry_per_sec = (uint32_t)(CLOCKS_PER_SEC / (User_Time / Number_Of_Runs));

      tfp_printf ("Dhrystones per Second:                      %d \r\n\r\n", (uint32_t)dhry_per_sec);

      tfp_printf("RISCY: << DETAILED RESULTS (integer parts only) >>\r\n");
      tfp_printf("RISCY: Total cycles:      %d\r\n", (uint32_t)User_Time);
      tfp_printf("RISCY: Cycles per second: %d\r\n", (uint32_t)CLOCKS_PER_SEC);
      tfp_printf("RISCY: Total runs:        %d\r\n", (uint32_t)Number_Of_Runs);

      tfp_printf("\r\n");
      tfp_printf("RISCY: DMIPS/s:           %d\r\n", (uint32_t)dhry_per_sec);
      tfp_printf("RISCY: DMIPS/s/MHz:       %d\r\n", (uint32_t)(dhry_per_sec / (CLOCKS_PER_SEC / 1000000)));

      tfp_printf("\r\n");
      tfp_printf("RISCY: VAX DMIPS/s:       %d\r\n", (uint32_t)dhry_per_sec/1757);
      tfp_printf("RISCY: VAX DMIPS/s/MHz:   %d/1757\r\n", (uint32_t)(dhry_per_sec / (CLOCKS_PER_SEC / 1000000)));
    } /* ***** /RISCY-SPECIFIC ***** */
    /*
      tfp_printf ("Microseconds for one run through Dhrystone: ");
      //tfp_printf ("%6.1f \r\n", Microseconds);
      tfp_printf ("%d \r\n", (int)Microseconds);
      tfp_printf ("Dhrystones per Second:                      ");
      //tfp_printf ("%6.1f \r\n", Dhrystones_Per_Second);
      tfp_printf ("%d \r\n", (int)Dhrystones_Per_Second);
      tfp_printf ("\r\n");
    */
  }
  printf("RISCY: Dhrystone benchmark completed successfully.\r\n");
  while(1);
  return 0;
}


void Proc_1 (Ptr_Val_Par)
/******************/

REG Rec_Pointer Ptr_Val_Par;
    /* executed once */
{
  REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
                                        /* == Ptr_Glob_Next */
  /* Local variable, initialized with Ptr_Val_Par->Ptr_Comp,    */
  /* corresponds to "rename" in Ada, "with" in Pascal           */
  
  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
  Next_Record->variant.var_1.Int_Comp 
        = Ptr_Val_Par->variant.var_1.Int_Comp;
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
  Proc_3 (&Next_Record->Ptr_Comp);
    /* Ptr_Val_Par->Ptr_Comp->Ptr_Comp 
                        == Ptr_Glob->Ptr_Comp */
  if (Next_Record->Discr == Ident_1)
    /* then, executed */
  {
    Next_Record->variant.var_1.Int_Comp = 6;
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
           &Next_Record->variant.var_1.Enum_Comp);
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
           &Next_Record->variant.var_1.Int_Comp);
  }
  else /* not executed */
    structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
} /* Proc_1 */


void Proc_2 (Int_Par_Ref)
/******************/
    /* executed once */
    /* *Int_Par_Ref == 1, becomes 4 */

One_Fifty   *Int_Par_Ref;
{
  One_Fifty  Int_Loc;  
  Enumeration   Enum_Loc;

  Int_Loc = *Int_Par_Ref + 10;
  do /* executed once */
    if (Ch_1_Glob == 'A')
      /* then, executed */
    {
      Int_Loc -= 1;
      *Int_Par_Ref = Int_Loc - Int_Glob;
      Enum_Loc = Ident_1;
    } /* if */
  while (Enum_Loc != Ident_1); /* true */
} /* Proc_2 */


void Proc_3 (Ptr_Ref_Par)
/******************/
    /* executed once */
    /* Ptr_Ref_Par becomes Ptr_Glob */

Rec_Pointer *Ptr_Ref_Par;

{
  if (Ptr_Glob != Null)
    /* then, executed */
    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
} /* Proc_3 */


void Proc_4 (void) /* without parameters */
/*******/
    /* executed once */
{
  Boolean Bool_Loc;

  Bool_Loc = Ch_1_Glob == 'A';
  Bool_Glob = Bool_Loc | Bool_Glob;
  Ch_2_Glob = 'B';
} /* Proc_4 */


void Proc_5 (void) /* without parameters */
/*******/
    /* executed once */
{
  Ch_1_Glob = 'A';
  Bool_Glob = false;
} /* Proc_5 */


        /* Procedure for the assignment of structures,          */
        /* if the C compiler doesn't support this feature       */
#ifdef  NOSTRUCTASSIGN
memcpy (d, s, l)
register char   *d;
register char   *s;
register int    l;
{
        while (l--) *d++ = *s++;
}
#endif


/* Compare S1 and S2, returning less than, equal to or
   greater than zero if S1 is lexicographically less than,
   equal to or greater than S2. [from glibc] */
int strcmp(const char *p1, const char *p2)
{
  const unsigned char *s1 = (const unsigned char *) p1;
  const unsigned char *s2 = (const unsigned char *) p2;
  unsigned char c1, c2;
  do
    {
      c1 = (unsigned char) *s1++;
      c2 = (unsigned char) *s2++;
      if (c1 == '\0')
        return c1 - c2;
    }
  while (c1 == c2);
  return c1 - c2;
}
