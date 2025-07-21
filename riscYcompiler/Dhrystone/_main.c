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


#ifndef DHRY_ITERS
#define DHRY_ITERS 10000
#endif

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
Enumeration     Func_1 ();
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
    uart_printf("RISCY: Processor running at %d Hz\n", 27000000);
    uart_printf("RISCY: Executing Dhrystone (%d iterations). This may take some time...\n\n", (uint32_t)DHRY_ITERS);

#ifndef RUN_DHRYSTONE
    #warning DHRYSTONE HAS NOT BEEN COMPILED! Use >>make USER_FLAGS+=-DRUN_DHRYSTONE clean_all exe<< to compile it.

    // inform the user if you are actually executing this
    uart_printf("ERROR! DhryStone has not been compiled. Use >>make USER_FLAGS+=-RUN_DHRYSTONE clean_all exe<< to compile it.\n");

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

  uart_printf ("\n");
  uart_printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
  uart_printf ("\n");
  if (Reg)
  {
    uart_printf ("Program compiled with 'register' attribute\n");
    uart_printf ("\n");
  }
  else
  {
    uart_printf ("Program compiled without 'register' attribute\n");
    uart_printf ("\n");
  }

  Number_Of_Runs = DHRY_ITERS;

  uart_printf ("Execution starts, %d runs through Dhrystone\n", (uint32_t)Number_Of_Runs);

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
  

  uart_printf ("Execution ends\n");
  uart_printf ("\n");
  uart_printf ("Final values of the variables used in the benchmark:\n");
  uart_printf ("\n");
  uart_printf ("Int_Glob:            %d\n", (uint32_t)Int_Glob);
  uart_printf ("        should be:   %d\n", 5);
  uart_printf ("Bool_Glob:           %d\n", (uint32_t)Bool_Glob);
  uart_printf ("        should be:   %d\n", 1);
  uart_printf ("Ch_1_Glob:           %c\n", (uint32_t)Ch_1_Glob);
  uart_printf ("        should be:   %c\n", 'A');
  uart_printf ("Ch_2_Glob:           %c\n", (uint32_t)Ch_2_Glob);
  uart_printf ("        should be:   %c\n", 'B');
  uart_printf ("Arr_1_Glob[8]:       %d\n", (uint32_t)Arr_1_Glob[8]);
  uart_printf ("        should be:   %d\n", 7);
  uart_printf ("Arr_2_Glob[8][7]:    %d\n", (uint32_t)Arr_2_Glob[8][7]);
  uart_printf ("        should be:   Number_Of_Runs + 10\n");
  uart_printf ("Ptr_Glob->\n");
  uart_printf ("  Ptr_Comp:          %d\n", (uint32_t) Ptr_Glob->Ptr_Comp);
  uart_printf ("        should be:   (implementation-dependent)\n");
  uart_printf ("  Discr:             %d\n", (uint32_t)Ptr_Glob->Discr);
  uart_printf ("        should be:   %d\n", 0);
  uart_printf ("  Enum_Comp:         %d\n", (uint32_t)Ptr_Glob->variant.var_1.Enum_Comp);
  uart_printf ("        should be:   %d\n", 2);
  uart_printf ("  Int_Comp:          %d\n", (uint32_t)Ptr_Glob->variant.var_1.Int_Comp);
  uart_printf ("        should be:   %d\n", 17);
  uart_printf ("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
  uart_printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  uart_printf ("Next_Ptr_Glob->\n");
  uart_printf ("  Ptr_Comp:          %d\n", (uint32_t) Next_Ptr_Glob->Ptr_Comp);
  uart_printf ("        should be:   (implementation-dependent), same as above\n");
  uart_printf ("  Discr:             %d\n", (uint32_t)Next_Ptr_Glob->Discr);
  uart_printf ("        should be:   %d\n", 0);
  uart_printf ("  Enum_Comp:         %d\n", (uint32_t)Next_Ptr_Glob->variant.var_1.Enum_Comp);
  uart_printf ("        should be:   %d\n", 1);
  uart_printf ("  Int_Comp:          %d\n", (uint32_t)Next_Ptr_Glob->variant.var_1.Int_Comp);
  uart_printf ("        should be:   %d\n", 18);
  uart_printf ("  Str_Comp:          %s\n",
                                Next_Ptr_Glob->variant.var_1.Str_Comp);
  uart_printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  uart_printf ("Int_1_Loc:           %d\n", (uint32_t)Int_1_Loc);
  uart_printf ("        should be:   %d\n", 5);
  uart_printf ("Int_2_Loc:           %d\n", (uint32_t)Int_2_Loc);
  uart_printf ("        should be:   %d\n", 13);
  uart_printf ("Int_3_Loc:           %d\n", (uint32_t)Int_3_Loc);
  uart_printf ("        should be:   %d\n", 7);
  uart_printf ("Enum_Loc:            %d\n", (uint32_t)Enum_Loc);
  uart_printf ("        should be:   %d\n", 1);
  uart_printf ("Str_1_Loc:           %s\n", Str_1_Loc);
  uart_printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
  uart_printf ("Str_2_Loc:           %s\n", Str_2_Loc);
  uart_printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
  uart_printf ("\n");

  User_Time = End_Time - Begin_Time;

//  if (User_Time < Too_Small_Time)
//  {
//    uart_printf ("Measured time too small to obtain meaningful results\n");
//    uart_printf ("Please increase number of runs\n");
//    uart_printf ("\n");
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
      uart_printf ("Microseconds for one run through Dhrystone: %d \n", (uint32_t)((User_Time * (Mic_secs_Per_Second / Number_Of_Runs)) / RISCY_SYSINFO->CLK));

      uint32_t dhry_per_sec = (uint32_t)(RISCY_SYSINFO->CLK / (User_Time / Number_Of_Runs));

      uart_printf ("Dhrystones per Second:                      %d \n\n", (uint32_t)dhry_per_sec);

      uart_printf("RISCY: << DETAILED RESULTS (integer parts only) >>\n");
      uart_printf("RISCY: Total cycles:      %d\n", (uint32_t)User_Time);
      uart_printf("RISCY: Cycles per second: %d\n", (uint32_t)RISCY_SYSINFO->CLK);
      uart_printf("RISCY: Total runs:        %d\n", (uint32_t)Number_Of_Runs);

      uart_printf("\n");
      uart_printf("RISCY: DMIPS/s:           %d\n", (uint32_t)dhry_per_sec);
      uart_printf("RISCY: DMIPS/s/MHz:       %d\n", (uint32_t)(dhry_per_sec / (RISCY_SYSINFO->CLK / 1000000)));

      uart_printf("\n");
      uart_printf("RISCY: VAX DMIPS/s:       %d\n", (uint32_t)dhry_per_sec/1757);
      uart_printf("RISCY: VAX DMIPS/s/MHz:   %d/1757\n", (uint32_t)(dhry_per_sec / (RISCY_SYSINFO->CLK / 1000000)));
    } /* ***** /RISCY-SPECIFIC ***** */
    /*
      uart_printf ("Microseconds for one run through Dhrystone: ");
      //uart_printf ("%6.1f \n", Microseconds);
      uart_printf ("%d \n", (int)Microseconds);
      uart_printf ("Dhrystones per Second:                      ");
      //uart_printf ("%6.1f \n", Dhrystones_Per_Second);
      uart_printf ("%d \n", (int)Dhrystones_Per_Second);
      uart_printf ("\n");
    */
  }

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
