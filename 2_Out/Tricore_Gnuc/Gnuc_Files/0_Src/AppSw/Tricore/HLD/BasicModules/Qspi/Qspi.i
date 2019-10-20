# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
# 1 "C:\\Google drive\\RH_Workspace\\_AccumuatorManager_TC237//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
# 12 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 1
# 14 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/AppSw/CpuGeneric/Config/Ifx_Cfg.h" 1
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 65 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
# 1 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/CompilerGnuc.h" 2
# 66 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h" 2
# 113 "0_Src/BaseSw/Infra/Platform/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef struct
{
    float32 real;
    float32 imag;
} cfloat32;

typedef struct
{
    sint32 real;
    sint32 imag;
} csint32;

typedef sint64 Ifx_TickTime;
# 68 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 140 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;
# 154 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count
} Ifx_Pwm_Mode;
# 172 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 173 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 2
# 15 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 2
# 1 "0_Src/AppSw/Tricore/Cfg_Illd/Configuration.h" 1
# 35 "0_Src/AppSw/Tricore/Cfg_Illd/Configuration.h"
# 1 "0_Src/AppSw/Tricore/Cfg_Illd/ConfigurationIsr.h" 1
# 36 "0_Src/AppSw/Tricore/Cfg_Illd/Configuration.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGlobal_cfg.h" 1
# 37 "0_Src/AppSw/Tricore/Cfg_Illd/Configuration.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxPort_PinMap.h" 1
# 31 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxPort_PinMap.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 1
# 43 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __moveToDataParam0(unsigned int var)
{
 __asm__ volatile ("mov\t %%d4, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) void __moveToDataParamRet(unsigned int var)
{
 __asm__ volatile ("mov\t %%d2, %0"::"d"(var));
}

static inline __attribute__ ((always_inline)) unsigned int __getDataParamRet(void)
{
 unsigned int var;
 __asm__ volatile (" mov\t %0, %%d2":"=d"(var));
 return var;
}

static inline __attribute__ ((always_inline)) void __moveToAddrParam0(const void *var)
{
 __asm__ volatile ("mov.aa\t %%a4, %0"::"a"(var));
}

static inline __attribute__ ((always_inline)) void __jumpToFunction(const void *fun)
{
 __asm__ volatile ("ji %0"::"a"(fun));
}

static inline __attribute__ ((always_inline)) void __jumpToFunctionWithLink(const void *fun)
{
 __jump_and_link((void (*)(void))fun);
}

static inline __attribute__ ((always_inline)) void __jumpBackToLink(void)
{
 __asm__ volatile ("ji %a11");
}
# 130 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 220 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 382 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 420 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 472 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 506 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 568 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1203 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1274 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1327 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1373 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1453 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{

  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 1492 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}

static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}

static inline __attribute__ ((always_inline)) uint32 __crc32(uint32 b, uint32 a)
{
    uint32 returnvalue = 0;

    __asm__ volatile ("CRC32 %0,%1,%2" : "=d" (returnvalue) : "d"(b), "d"(a));

   return returnvalue;
}

static inline __attribute__ ((always_inline)) uint32 IfxCpu_calculateCrc32(uint32 *startaddress, uint8 length)
{
    uint32 returnvalue = 0;
    for (;length > 0; length--)
    {

        __asm__ ("CRC32 %0,%0,%1" : "+d" (returnvalue) : "d" (*startaddress));
        startaddress++;
    }
    return returnvalue;
}

static inline __attribute__ ((always_inline)) sint32 __popcnt(sint32 a)
{
 sint32 res;
 __asm__ volatile ("popcnt %0,%1":"=d"(res):"d"(a));
  return res;
}



static inline __attribute__ ((always_inline)) void __cacheai(uint8* p)
{
    __asm__ volatile("cachea.i [%0]0"::"a"(p));
}
# 37 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = __extru(cx, 16, 4);
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = __extru((int)addr, 28, 4) << 16;
    seg_idx = __extru((int)addr, 6, 16);
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 41 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h" 1
# 78 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/Ifx_TypesReg.h" 1
# 40 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h" 2





typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int reserved_3 : 6;
    unsigned int SEL9 : 1;
    unsigned int SEL10 : 1;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 671 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_64[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[96];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 79 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_reg.h" 2
# 42 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxPort_cfg.h"
typedef enum
{
    IfxPort_Index_00 = 0,
    IfxPort_Index_02 = 2,
    IfxPort_Index_10 = 10,
    IfxPort_Index_11 = 11,
    IfxPort_Index_13 = 13,
    IfxPort_Index_14 = 14,
    IfxPort_Index_15 = 15,
    IfxPort_Index_20 = 20,
    IfxPort_Index_21 = 21,
    IfxPort_Index_22 = 22,
    IfxPort_Index_23 = 23,
    IfxPort_Index_33 = 33,
    IfxPort_Index_34 = 34,
    IfxPort_Index_none = -1
} IfxPort_Index;







typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(13)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(13)];
# 44 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_bf.h" 1
# 37 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_bf.h" 1
# 38 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h" 2
# 1291 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h" 1
# 48 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int reserved_26 : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 22;
    unsigned int reserved_26 : 5;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int reserved_8 : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 10;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 4;
    unsigned int reserved_4 : 4;
    unsigned int SD33I : 4;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 4;
    unsigned int reserved_4 : 4;
    unsigned int TON : 8;
    unsigned int TOFF : 8;
    unsigned int SDSTEP : 4;
    unsigned int SYNCDIV : 3;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int STBS : 2;
    unsigned int STSP : 2;
    unsigned int NS : 2;
    unsigned int OL : 1;
    unsigned int PIAD : 1;
    unsigned int ADCMODE : 4;
    unsigned int ADCLPF : 2;
    unsigned int ADCLSB : 1;
    unsigned int reserved_23 : 1;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDOLCON : 7;
    unsigned int MODSEL : 1;
    unsigned int MODLOW : 7;
    unsigned int reserved_15 : 1;
    unsigned int SDVOKLVL : 6;
    unsigned int MODMAN : 2;
    unsigned int MODHIGH : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int reserved_2 : 2;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int reserved_6 : 1;
    unsigned int UVSWD : 1;
    unsigned int reserved_8 : 2;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 1;
    unsigned int SCMOD : 2;
    unsigned int reserved_14 : 18;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int reserved_21 : 2;
    unsigned int PORSTDF : 1;
    unsigned int reserved_24 : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int reserved_26 : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 14;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWCR3_Bits
{
    unsigned int WUTREL : 24;
    unsigned int reserved_24 : 4;
    unsigned int WUTDIV : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR3_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int reserved_8 : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int reserved_15 : 1;
    unsigned int WUTWKP : 1;
    unsigned int WUTOVRUN : 1;
    unsigned int reserved_18 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int reserved_23 : 4;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int WUTRUN : 1;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int reserved_8 : 8;
    unsigned int WUTWKPCLR : 1;
    unsigned int WUTOVRUNCLR : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_PMSWUTCNT_Bits
{
    unsigned int WUTCNT : 24;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_PMSWUTCNT_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR3_Bits B;
} Ifx_SCU_PMSWCR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWUTCNT_Bits B;
} Ifx_SCU_PMSWUTCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1779 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1805 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    unsigned char reserved_84[24];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    unsigned char reserved_B4[4];
    Ifx_SCU_EVR13CON EVR13CON;
    unsigned char reserved_BC[4];
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[1];
    unsigned char reserved_D8[8];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[1];
    unsigned char reserved_10C[24];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON0 LCLCON0;
    unsigned char reserved_138[4];
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[12];
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    unsigned char reserved_1BC[8];
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    unsigned char reserved_1C8[20];
    Ifx_SCU_PMSWUTCNT PMSWUTCNT;
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[188];
    Ifx_SCU_PMSWCR3 PMSWCR3;
    unsigned char reserved_304[244];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_reg.h" 2
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h" 2
# 69 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 96 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 109 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, const IfxScuWdt_Config *config);
# 122 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, const IfxScuWdt_Config *config);
# 145 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 158 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 170 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 181 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 197 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 209 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 219 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 229 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 249 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);





static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 270 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 284 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 295 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 305 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 316 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 326 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 336 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 346 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 356 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 365 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);




extern boolean IfxScuWdt_getCpuWatchdogEndInit(void);
# 379 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 389 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 399 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);
# 411 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
extern boolean IfxScuWdt_enableWatchdogWithDebugger(void);





static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (0 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (0 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getCpuWatchdogEndInitInline(Ifx_SCU_WDTCPU *watchdog)
{
    return (boolean)watchdog->CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU *)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = (1 << (0u)) |
                           (0 << (1u)) |
                           (password << (2u)) |
                           (watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = (1 << (0u)) |
                       (1 << (1u)) |
                       (password << (2u)) |
                       (watchdog->CON0.B.REL << (16u));


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                          (0 << (1u)) |
                          (password << (2u)) |
                          ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).U = (1 << (0u)) |
                      (1 << (1u)) |
                      (password << (2u)) |
                      ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.REL << (16u));


    while ((*(volatile Ifx_SCU_WDTS_CON0 *)0xF00360F0u).B.ENDINIT == 0)
    {}
}
# 45 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 2
# 54 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 149 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 187 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 202 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 217 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 231 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 246 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 262 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 277 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 300 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 318 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 334 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 349 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 373 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 392 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 402 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern Ifx_P *IfxPort_getAddress(IfxPort_Index port);





extern IfxPort_Index IfxPort_getIndex(Ifx_P *port);
# 424 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 441 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 457 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 474 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 485 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 32 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxPort_PinMap.h" 2





extern IfxPort_Pin IfxPort_P00_0;
extern IfxPort_Pin IfxPort_P00_1;
extern IfxPort_Pin IfxPort_P00_12;
extern IfxPort_Pin IfxPort_P00_2;
extern IfxPort_Pin IfxPort_P00_3;
extern IfxPort_Pin IfxPort_P00_4;
extern IfxPort_Pin IfxPort_P00_5;
extern IfxPort_Pin IfxPort_P00_6;
extern IfxPort_Pin IfxPort_P00_7;
extern IfxPort_Pin IfxPort_P00_8;
extern IfxPort_Pin IfxPort_P00_9;
extern IfxPort_Pin IfxPort_P02_0;
extern IfxPort_Pin IfxPort_P02_1;
extern IfxPort_Pin IfxPort_P02_2;
extern IfxPort_Pin IfxPort_P02_3;
extern IfxPort_Pin IfxPort_P02_4;
extern IfxPort_Pin IfxPort_P02_5;
extern IfxPort_Pin IfxPort_P02_6;
extern IfxPort_Pin IfxPort_P02_7;
extern IfxPort_Pin IfxPort_P02_8;
extern IfxPort_Pin IfxPort_P10_1;
extern IfxPort_Pin IfxPort_P10_2;
extern IfxPort_Pin IfxPort_P10_3;
extern IfxPort_Pin IfxPort_P10_5;
extern IfxPort_Pin IfxPort_P10_6;
extern IfxPort_Pin IfxPort_P11_10;
extern IfxPort_Pin IfxPort_P11_11;
extern IfxPort_Pin IfxPort_P11_12;
extern IfxPort_Pin IfxPort_P11_2;
extern IfxPort_Pin IfxPort_P11_3;
extern IfxPort_Pin IfxPort_P11_6;
extern IfxPort_Pin IfxPort_P11_8;
extern IfxPort_Pin IfxPort_P11_9;
extern IfxPort_Pin IfxPort_P13_0;
extern IfxPort_Pin IfxPort_P13_1;
extern IfxPort_Pin IfxPort_P13_2;
extern IfxPort_Pin IfxPort_P13_3;
extern IfxPort_Pin IfxPort_P14_0;
extern IfxPort_Pin IfxPort_P14_1;
extern IfxPort_Pin IfxPort_P14_2;
extern IfxPort_Pin IfxPort_P14_3;
extern IfxPort_Pin IfxPort_P14_4;
extern IfxPort_Pin IfxPort_P14_5;
extern IfxPort_Pin IfxPort_P14_6;
extern IfxPort_Pin IfxPort_P14_7;
extern IfxPort_Pin IfxPort_P14_8;
extern IfxPort_Pin IfxPort_P15_0;
extern IfxPort_Pin IfxPort_P15_1;
extern IfxPort_Pin IfxPort_P15_2;
extern IfxPort_Pin IfxPort_P15_3;
extern IfxPort_Pin IfxPort_P15_4;
extern IfxPort_Pin IfxPort_P15_5;
extern IfxPort_Pin IfxPort_P15_6;
extern IfxPort_Pin IfxPort_P15_7;
extern IfxPort_Pin IfxPort_P15_8;
extern IfxPort_Pin IfxPort_P20_0;
extern IfxPort_Pin IfxPort_P20_10;
extern IfxPort_Pin IfxPort_P20_11;
extern IfxPort_Pin IfxPort_P20_12;
extern IfxPort_Pin IfxPort_P20_13;
extern IfxPort_Pin IfxPort_P20_14;
extern IfxPort_Pin IfxPort_P20_3;
extern IfxPort_Pin IfxPort_P20_6;
extern IfxPort_Pin IfxPort_P20_7;
extern IfxPort_Pin IfxPort_P20_8;
extern IfxPort_Pin IfxPort_P20_9;
extern IfxPort_Pin IfxPort_P21_2;
extern IfxPort_Pin IfxPort_P21_3;
extern IfxPort_Pin IfxPort_P21_4;
extern IfxPort_Pin IfxPort_P21_5;
extern IfxPort_Pin IfxPort_P21_6;
extern IfxPort_Pin IfxPort_P21_7;
extern IfxPort_Pin IfxPort_P22_0;
extern IfxPort_Pin IfxPort_P22_1;
extern IfxPort_Pin IfxPort_P22_2;
extern IfxPort_Pin IfxPort_P22_3;
extern IfxPort_Pin IfxPort_P22_4;
extern IfxPort_Pin IfxPort_P23_1;
extern IfxPort_Pin IfxPort_P33_0;
extern IfxPort_Pin IfxPort_P33_1;
extern IfxPort_Pin IfxPort_P33_10;
extern IfxPort_Pin IfxPort_P33_11;
extern IfxPort_Pin IfxPort_P33_12;
extern IfxPort_Pin IfxPort_P33_2;
extern IfxPort_Pin IfxPort_P33_3;
extern IfxPort_Pin IfxPort_P33_4;
extern IfxPort_Pin IfxPort_P33_5;
extern IfxPort_Pin IfxPort_P33_6;
extern IfxPort_Pin IfxPort_P33_7;
extern IfxPort_Pin IfxPort_P33_8;
extern IfxPort_Pin IfxPort_P33_9;
extern IfxPort_Pin IfxPort_P34_0;
extern IfxPort_Pin IfxPort_P34_1;
extern IfxPort_Pin IfxPort_P34_2;
extern IfxPort_Pin IfxPort_P34_3;
extern IfxPort_Pin IfxPort_P40_11;
extern IfxPort_Pin IfxPort_P41_0;
extern IfxPort_Pin IfxPort_P41_2;
extern IfxPort_Pin IfxPort_P41_3;







extern const IfxPort_Pin *IfxPort_Pin_pinTable[42][15];
# 38 "0_Src/AppSw/Tricore/Cfg_Illd/Configuration.h" 2
# 16 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 2
# 1 "0_Src/AppSw/Tricore/Cfg_Illd/ConfigurationIsr.h" 1
# 17 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 1
# 491 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Irq/IfxCpu_Irq.h" 1
# 42 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Irq/IfxCpu_Irq.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_reg.h" 1
# 42 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MODREV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1271 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1318 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 43 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCpu_reg.h" 2
# 41 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h" 2
# 99 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_Id_0 = 0,
    IfxCpu_Id_none
} IfxCpu_Id;



typedef enum
{
    IfxCpu_Index_0 = 0,
    IfxCpu_Index_none
} IfxCpu_Index;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = IfxCpu_Index_0,
    IfxCpu_ResourceCpu_none = IfxCpu_Index_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(1)];
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 1;
    unsigned int reserved_12 : 4;
    unsigned int ECC : 5;
    unsigned int reserved_21 : 3;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CAN1
{
    Ifx_SRC_SRCR INT[8];
} Ifx_SRC_CAN1;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
    unsigned char reserved_4[28];
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[16];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_EVR
{
    Ifx_SRC_SRCR WUT;
    Ifx_SRC_SRCR SCDC;
} Ifx_SRC_EVR;


typedef volatile struct _Ifx_SRC_FFT
{
    Ifx_SRC_SRCR DONE;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR RFS;
} Ifx_SRC_FFT;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[1520];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    unsigned char reserved_4[364];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[1][8];
    unsigned char reserved_1A0[992];
    Ifx_SRC_SRCR TOM[2][8];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    Ifx_SRC_SRCR HC;
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[4];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    unsigned char reserved_8[88];
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[304];
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 306 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[2];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
    Ifx_SRC_CAN1 CAN1[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[1];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GEVR
{
    Ifx_SRC_EVR EVR[1];
} Ifx_SRC_GEVR;


typedef volatile struct _Ifx_SRC_GFFT
{
    Ifx_SRC_FFT FFT[1];
} Ifx_SRC_GFFT;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[1];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[1];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[4];
    unsigned char reserved_40[224];
    Ifx_SRC_VADCCG CG[1];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 469 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    Ifx_SRC_GEMEM EMEM;
    unsigned char reserved_24[28];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_98[248];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[352];
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_360[192];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_540[944];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_960[32];
    Ifx_SRC_GVADC VADC;
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[196];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[460];
    Ifx_SRC_GEVR EVR;
    unsigned char reserved_FB8[8];
    Ifx_SRC_GFFT FFT;
    unsigned char reserved_FCC[52];
    Ifx_SRC_GGPSR GPSR;
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1BC0[1088];
} Ifx_SRC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_reg.h" 2
# 52 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int MSTART0 : 5;
    unsigned int reserved_13 : 3;
    unsigned int MSIZE1 : 5;
    unsigned int reserved_21 : 3;
    unsigned int MSTART1 : 5;
    unsigned int reserved_29 : 3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL : 32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN : 1;
    unsigned int CMP0IR : 1;
    unsigned int CMP0OS : 1;
    unsigned int reserved_3 : 1;
    unsigned int CMP1EN : 1;
    unsigned int CMP1IR : 1;
    unsigned int CMP1OS : 1;
    unsigned int reserved_7 : 25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR : 1;
    unsigned int CMP0IRS : 1;
    unsigned int CMP1IRR : 1;
    unsigned int CMP1IRS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4 : 32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8 : 32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12 : 32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16 : 32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20 : 32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32 : 32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 429 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxStm_reg.h" 2
# 54 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 56 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h" 1
# 107 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 1
# 108 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h" 2


# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int VLD1 : 1;
    unsigned int VLD2 : 1;
    unsigned int VLD3 : 1;
    unsigned int VLD4 : 1;
    unsigned int VLD5 : 1;
    unsigned int VLD6 : 1;
    unsigned int VLD7 : 1;
    unsigned int VLD8 : 1;
    unsigned int VLD9 : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS : 8;
    unsigned int reserved_8 : 24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int DECENCDIS : 1;
    unsigned int PECENCDIS : 1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH : 4;
    unsigned int WSECPF : 2;
    unsigned int WSDFLASH : 6;
    unsigned int WSECDF : 3;
    unsigned int IDLE : 1;
    unsigned int ESLDIS : 1;
    unsigned int SLEEP : 1;
    unsigned int NSAFECC : 1;
    unsigned int STALL : 1;
    unsigned int RES21 : 2;
    unsigned int RES23 : 2;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int PROERM : 1;
    unsigned int reserved_27 : 3;
    unsigned int PR5V : 1;
    unsigned int EOBM : 1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP : 1;
    unsigned int PRODISP : 1;
    unsigned int PROIND : 1;
    unsigned int PRODISD : 1;
    unsigned int PROINHSMCOTP : 1;
    unsigned int RES5 : 1;
    unsigned int PROINOTP : 1;
    unsigned int RES7 : 1;
    unsigned int PROINDBG : 1;
    unsigned int PRODISDBG : 1;
    unsigned int PROINHSM : 1;
    unsigned int reserved_11 : 5;
    unsigned int DCFP : 1;
    unsigned int DDFP : 1;
    unsigned int DDFPX : 1;
    unsigned int reserved_19 : 1;
    unsigned int DDFD : 1;
    unsigned int reserved_21 : 1;
    unsigned int ENPE : 2;
    unsigned int reserved_24 : 8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY : 1;
    unsigned int D0BUSY : 1;
    unsigned int RES1 : 1;
    unsigned int P0BUSY : 1;
    unsigned int RES4 : 1;
    unsigned int RES5 : 1;
    unsigned int RES6 : 1;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int PFPAGE : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int PROER : 1;
    unsigned int PFSBER : 1;
    unsigned int PFDBER : 1;
    unsigned int PFMBER : 1;
    unsigned int RES17 : 1;
    unsigned int DFSBER : 1;
    unsigned int DFDBER : 1;
    unsigned int DFTBER : 1;
    unsigned int DFMBER : 1;
    unsigned int SRIADDERR : 1;
    unsigned int reserved_23 : 2;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int SLM : 1;
    unsigned int reserved_29 : 1;
    unsigned int ORIER : 1;
    unsigned int reserved_31 : 1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB : 2;
    unsigned int reserved_2 : 22;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int reserved_26 : 5;
    unsigned int EOBM : 1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int D1BUSY : 1;
    unsigned int reserved_3 : 4;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int reserved_9 : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int reserved_13 : 12;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int reserved_28 : 4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SELD1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN : 1;
    unsigned int SELD0 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 10;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0 : 1;
    unsigned int RES1 : 1;
    unsigned int RES2 : 1;
    unsigned int RES3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L : 1;
    unsigned int NSAFECC : 1;
    unsigned int RAMIN : 2;
    unsigned int RAMINSEL : 4;
    unsigned int RES8 : 1;
    unsigned int RES9 : 1;
    unsigned int RES10 : 1;
    unsigned int RES11 : 1;
    unsigned int RES12 : 1;
    unsigned int RES13 : 1;
    unsigned int RES14 : 1;
    unsigned int RES15 : 1;
    unsigned int ESR0CNT : 12;
    unsigned int RES29 : 2;
    unsigned int RES30 : 1;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int EDM : 2;
    unsigned int reserved_4 : 28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int TSTIFLCK : 1;
    unsigned int HSMTSTDIS : 1;
    unsigned int RES15 : 12;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN : 1;
    unsigned int SSWWAIT : 1;
    unsigned int HSMDX : 1;
    unsigned int HSM6X : 1;
    unsigned int HSM16X : 1;
    unsigned int HSM17X : 1;
    unsigned int S6ROM : 1;
    unsigned int HSMENPINS : 2;
    unsigned int HSMENRES : 2;
    unsigned int DESTDBG : 2;
    unsigned int BLKFLAN : 1;
    unsigned int BOOTSEL : 2;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int reserved_18 : 14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM : 1;
    unsigned int S1ROM : 1;
    unsigned int S2ROM : 1;
    unsigned int S3ROM : 1;
    unsigned int S4ROM : 1;
    unsigned int S5ROM : 1;
    unsigned int S6ROM : 1;
    unsigned int S7ROM : 1;
    unsigned int S8ROM : 1;
    unsigned int S9ROM : 1;
    unsigned int S10ROM : 1;
    unsigned int S11ROM : 1;
    unsigned int S12ROM : 1;
    unsigned int S13ROM : 1;
    unsigned int S14ROM : 1;
    unsigned int S15ROM : 1;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int S18ROM : 1;
    unsigned int S19ROM : 1;
    unsigned int S20ROM : 1;
    unsigned int S21ROM : 1;
    unsigned int S22ROM : 1;
    unsigned int S23ROM : 1;
    unsigned int S24ROM : 1;
    unsigned int S25ROM : 1;
    unsigned int S26ROM : 1;
    unsigned int reserved_27 : 2;
    unsigned int BML : 2;
    unsigned int TP : 1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L : 1;
    unsigned int S1L : 1;
    unsigned int S2L : 1;
    unsigned int S3L : 1;
    unsigned int S4L : 1;
    unsigned int S5L : 1;
    unsigned int S6L : 1;
    unsigned int S7L : 1;
    unsigned int S8L : 1;
    unsigned int S9L : 1;
    unsigned int S10L : 1;
    unsigned int S11L : 1;
    unsigned int S12L : 1;
    unsigned int S13L : 1;
    unsigned int S14L : 1;
    unsigned int S15L : 1;
    unsigned int S16L : 1;
    unsigned int S17L : 1;
    unsigned int S18L : 1;
    unsigned int S19L : 1;
    unsigned int S20L : 1;
    unsigned int S21L : 1;
    unsigned int S22L : 1;
    unsigned int S23L : 1;
    unsigned int S24L : 1;
    unsigned int S25L : 1;
    unsigned int S26L : 1;
    unsigned int reserved_27 : 4;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP : 1;
    unsigned int S1WOP : 1;
    unsigned int S2WOP : 1;
    unsigned int S3WOP : 1;
    unsigned int S4WOP : 1;
    unsigned int S5WOP : 1;
    unsigned int S6WOP : 1;
    unsigned int S7WOP : 1;
    unsigned int S8WOP : 1;
    unsigned int S9WOP : 1;
    unsigned int S10WOP : 1;
    unsigned int S11WOP : 1;
    unsigned int S12WOP : 1;
    unsigned int S13WOP : 1;
    unsigned int S14WOP : 1;
    unsigned int S15WOP : 1;
    unsigned int S16WOP : 1;
    unsigned int S17WOP : 1;
    unsigned int S18WOP : 1;
    unsigned int S19WOP : 1;
    unsigned int S20WOP : 1;
    unsigned int S21WOP : 1;
    unsigned int S22WOP : 1;
    unsigned int S23WOP : 1;
    unsigned int S24WOP : 1;
    unsigned int S25WOP : 1;
    unsigned int S26WOP : 1;
    unsigned int reserved_27 : 4;
    unsigned int DATM : 1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int reserved_1 : 31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 950 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
    unsigned char reserved_C[36];
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
    unsigned char reserved_C[36];
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
    unsigned char reserved_C[80];
} Ifx_FLASH_UBAB;
# 987 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[1];
    unsigned char reserved_1024[12];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[1];
    unsigned char reserved_103C[12];
    Ifx_FLASH_PROCONWOP PROCONWOP[1];
    unsigned char reserved_104C[12];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[1];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[1];
    unsigned char reserved_1098[12];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[1];
    Ifx_FLASH_UBAB UBAB[1];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxFlash_reg.h" 2
# 111 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 39 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxScu_PinMap.h"
typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P33_10_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0_DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2_EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ17_P33_11_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 138 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][4];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][5];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][2];
# 112 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h" 2
# 128 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 138 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;
# 704 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 797 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void);
# 830 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 965 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 974 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 989 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1014 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1025 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1034 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1 *)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getCanFrequency(void)
{
    float32 canFrequency;
    float32 sourceFrequency;

    sourceFrequency = IfxScuCcu_getSourceFrequency();

    if ((*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.CANDIV == 0)
    {
        canFrequency = 0.0;
    }
    else
    {
        canFrequency = sourceFrequency / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.CANDIV;
    }

    return canFrequency;
}
# 58 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h" 2
# 94 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;



typedef unsigned int IfxCpu_syncEvent;
# 112 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 140 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 174 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);






static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void);





static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 197 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 217 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 232 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 241 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 250 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 267 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 277 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 297 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 315 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 324 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 346 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 357 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 374 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 387 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 408 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 440 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 457 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 466 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 501 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 519 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 546 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);
# 561 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern uint32 IfxCpu_getRandomValue(uint32 *seed);







extern uint32 IfxCpu_getRandomValueWithinRange(uint32 *seed, uint32 min, uint32 max);
# 609 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_waitEvent(IfxCpu_syncEvent *event, uint32 timeoutMilliSec);
# 618 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_emitEvent(IfxCpu_syncEvent *event);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex]);



    checkRestrictionMask = ((uint16)1 << (7 - coreIndex)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu)
{
    Ifx_CPU *module;

    if (cpu < IfxCpu_ResourceCpu_none)
    {
        module = (Ifx_CPU *)IfxCpu_cfg_indexMap[cpu].module;
    }
    else
    {
        module = ((void *)0);
    }

    return module;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_Id IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_Id)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint16 address)
{
    Ifx_CPU_CCNT ccnt;

    if (address == 0xFC04)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC08)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC0C)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC10)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    }
    else if (address == 0xFC14)
    {
        ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    }

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreIndex = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreIndex], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;

    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    (*(Ifx_SCU *)0xF0036000u).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 43 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Irq/IfxCpu_Irq.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h" 1
# 95 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_dma = 1
} IfxSrc_Tos;
# 96 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h" 2
# 112 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 44 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Irq/IfxCpu_Irq.h" 2
# 84 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Irq/IfxCpu_Irq.h"
static inline __attribute__ ((always_inline)) IfxSrc_Tos IfxCpu_Irq_getTos(IfxCpu_ResourceCpu coreId)
{
    return (IfxSrc_Tos)coreId;
}
# 492 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h" 1
# 431 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxDma_cfg.h" 1
# 85 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxDma_cfg.h"
typedef enum
{
    IfxDma_ChannelId_none = -1,
    IfxDma_ChannelId_0 = 0,
    IfxDma_ChannelId_1,
    IfxDma_ChannelId_2,
    IfxDma_ChannelId_3,
    IfxDma_ChannelId_4,
    IfxDma_ChannelId_5,
    IfxDma_ChannelId_6,
    IfxDma_ChannelId_7,
    IfxDma_ChannelId_8,
    IfxDma_ChannelId_9,
    IfxDma_ChannelId_10,
    IfxDma_ChannelId_11,
    IfxDma_ChannelId_12,
    IfxDma_ChannelId_13,
    IfxDma_ChannelId_14,
    IfxDma_ChannelId_15
} IfxDma_ChannelId;
# 432 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h" 1
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_bf.h" 1
# 51 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_regdef.h"
typedef struct _Ifx_DMA_ACCEN00_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN00_Bits;


typedef struct _Ifx_DMA_ACCEN01_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN01_Bits;


typedef struct _Ifx_DMA_ACCEN10_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN10_Bits;


typedef struct _Ifx_DMA_ACCEN11_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN11_Bits;


typedef struct _Ifx_DMA_ACCEN20_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN20_Bits;


typedef struct _Ifx_DMA_ACCEN21_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN21_Bits;


typedef struct _Ifx_DMA_ACCEN30_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_DMA_ACCEN30_Bits;


typedef struct _Ifx_DMA_ACCEN31_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN31_Bits;


typedef struct _Ifx_DMA_BLK_CLRE_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int CSER : 1;
    unsigned int CDER : 1;
    unsigned int reserved_18 : 2;
    unsigned int CSPBER : 1;
    unsigned int CSRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int CRAMER : 1;
    unsigned int CSLLER : 1;
    unsigned int CDLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_CLRE_Bits;


typedef struct _Ifx_DMA_BLK_EER_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int ESER : 1;
    unsigned int EDER : 1;
    unsigned int reserved_18 : 6;
    unsigned int ERER : 1;
    unsigned int reserved_25 : 1;
    unsigned int ELER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_EER_Bits;


typedef struct _Ifx_DMA_BLK_ERRSR_Bits
{
    unsigned int LEC : 7;
    unsigned int reserved_7 : 9;
    unsigned int SER : 1;
    unsigned int DER : 1;
    unsigned int reserved_18 : 2;
    unsigned int SPBER : 1;
    unsigned int SRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int RAMER : 1;
    unsigned int SLLER : 1;
    unsigned int DLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_ERRSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_BLK_ME_ADICR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHCR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_BLK_ME_CHCR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int reserved_24 : 8;
} Ifx_DMA_BLK_ME_CHSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_BLK_ME_DADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_R0_Bits
{
    unsigned int RD00 : 8;
    unsigned int RD01 : 8;
    unsigned int RD02 : 8;
    unsigned int RD03 : 8;
} Ifx_DMA_BLK_ME_R0_Bits;


typedef struct _Ifx_DMA_BLK_ME_R1_Bits
{
    unsigned int RD10 : 8;
    unsigned int RD11 : 8;
    unsigned int RD12 : 8;
    unsigned int RD13 : 8;
} Ifx_DMA_BLK_ME_R1_Bits;


typedef struct _Ifx_DMA_BLK_ME_R2_Bits
{
    unsigned int RD20 : 8;
    unsigned int RD21 : 8;
    unsigned int RD22 : 8;
    unsigned int RD23 : 8;
} Ifx_DMA_BLK_ME_R2_Bits;


typedef struct _Ifx_DMA_BLK_ME_R3_Bits
{
    unsigned int RD30 : 8;
    unsigned int RD31 : 8;
    unsigned int RD32 : 8;
    unsigned int RD33 : 8;
} Ifx_DMA_BLK_ME_R3_Bits;


typedef struct _Ifx_DMA_BLK_ME_R4_Bits
{
    unsigned int RD40 : 8;
    unsigned int RD41 : 8;
    unsigned int RD42 : 8;
    unsigned int RD43 : 8;
} Ifx_DMA_BLK_ME_R4_Bits;


typedef struct _Ifx_DMA_BLK_ME_R5_Bits
{
    unsigned int RD50 : 8;
    unsigned int RD51 : 8;
    unsigned int RD52 : 8;
    unsigned int RD53 : 8;
} Ifx_DMA_BLK_ME_R5_Bits;


typedef struct _Ifx_DMA_BLK_ME_R6_Bits
{
    unsigned int RD60 : 8;
    unsigned int RD61 : 8;
    unsigned int RD62 : 8;
    unsigned int RD63 : 8;
} Ifx_DMA_BLK_ME_R6_Bits;


typedef struct _Ifx_DMA_BLK_ME_R7_Bits
{
    unsigned int RD70 : 8;
    unsigned int RD71 : 8;
    unsigned int RD72 : 8;
    unsigned int RD73 : 8;
} Ifx_DMA_BLK_ME_R7_Bits;


typedef struct _Ifx_DMA_BLK_ME_RDCRC_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_BLK_ME_RDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_BLK_ME_SADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SDCRC_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_BLK_ME_SDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_BLK_ME_SHADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SR_Bits
{
    unsigned int RS : 1;
    unsigned int reserved_1 : 3;
    unsigned int WS : 1;
    unsigned int reserved_5 : 11;
    unsigned int CH : 7;
    unsigned int reserved_23 : 9;
} Ifx_DMA_BLK_ME_SR_Bits;


typedef struct _Ifx_DMA_CH_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_CH_ADICR_Bits;


typedef struct _Ifx_DMA_CH_CHCFGR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_CH_CHCFGR_Bits;


typedef struct _Ifx_DMA_CH_CHCSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int SWB : 1;
    unsigned int CWRP : 1;
    unsigned int CICH : 1;
    unsigned int SIT : 1;
    unsigned int reserved_28 : 3;
    unsigned int SCH : 1;
} Ifx_DMA_CH_CHCSR_Bits;


typedef struct _Ifx_DMA_CH_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_CH_DADR_Bits;


typedef struct _Ifx_DMA_CH_RDCRCR_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_CH_RDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_CH_SADR_Bits;


typedef struct _Ifx_DMA_CH_SDCRCR_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_CH_SDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_CH_SHADR_Bits;


typedef struct _Ifx_DMA_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_DMA_CLC_Bits;


typedef struct _Ifx_DMA_ERRINTR_Bits
{
    unsigned int SIT : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_ERRINTR_Bits;


typedef struct _Ifx_DMA_HRR_Bits
{
    unsigned int HRP : 2;
    unsigned int reserved_2 : 30;
} Ifx_DMA_HRR_Bits;


typedef struct _Ifx_DMA_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_DMA_ID_Bits;


typedef struct _Ifx_DMA_MEMCON_Bits
{
    volatile unsigned int reserved_0 : 2;
    volatile unsigned int INTERR : 1;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int RMWERR : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int DATAERR : 1;
    volatile unsigned int reserved_7 : 1;
    volatile unsigned int PMIC : 1;
    volatile unsigned int ERRDIS : 1;
    volatile unsigned int reserved_10 : 22;
} Ifx_DMA_MEMCON_Bits;


typedef struct _Ifx_DMA_MODE_Bits
{
    unsigned int MODE : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_MODE_Bits;


typedef struct _Ifx_DMA_OTSS_Bits
{
    unsigned int TGS : 4;
    unsigned int reserved_4 : 3;
    unsigned int BS : 1;
    unsigned int reserved_8 : 24;
} Ifx_DMA_OTSS_Bits;


typedef struct _Ifx_DMA_PRR0_Bits
{
    unsigned int PAT00 : 8;
    unsigned int PAT01 : 8;
    unsigned int PAT02 : 8;
    unsigned int PAT03 : 8;
} Ifx_DMA_PRR0_Bits;


typedef struct _Ifx_DMA_PRR1_Bits
{
    unsigned int PAT10 : 8;
    unsigned int PAT11 : 8;
    unsigned int PAT12 : 8;
    unsigned int PAT13 : 8;
} Ifx_DMA_PRR1_Bits;


typedef struct _Ifx_DMA_SUSACR_Bits
{
    unsigned int SUSAC : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSACR_Bits;


typedef struct _Ifx_DMA_SUSENR_Bits
{
    unsigned int SUSEN : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSENR_Bits;


typedef struct _Ifx_DMA_TIME_Bits
{
    unsigned int COUNT : 32;
} Ifx_DMA_TIME_Bits;


typedef struct _Ifx_DMA_TSR_Bits
{
    unsigned int RST : 1;
    unsigned int HTRE : 1;
    unsigned int TRL : 1;
    unsigned int CH : 1;
    unsigned int reserved_4 : 4;
    unsigned int HLTREQ : 1;
    unsigned int HLTACK : 1;
    unsigned int reserved_10 : 6;
    unsigned int ECH : 1;
    unsigned int DCH : 1;
    unsigned int CTL : 1;
    unsigned int reserved_19 : 5;
    unsigned int HLTCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_DMA_TSR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN00_Bits B;
} Ifx_DMA_ACCEN00;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN01_Bits B;
} Ifx_DMA_ACCEN01;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN10_Bits B;
} Ifx_DMA_ACCEN10;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN11_Bits B;
} Ifx_DMA_ACCEN11;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN20_Bits B;
} Ifx_DMA_ACCEN20;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN21_Bits B;
} Ifx_DMA_ACCEN21;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN30_Bits B;
} Ifx_DMA_ACCEN30;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ACCEN31_Bits B;
} Ifx_DMA_ACCEN31;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_CLRE_Bits B;
} Ifx_DMA_BLK_CLRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_EER_Bits B;
} Ifx_DMA_BLK_EER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ERRSR_Bits B;
} Ifx_DMA_BLK_ERRSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_ADICR_Bits B;
} Ifx_DMA_BLK_ME_ADICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_CHCR_Bits B;
} Ifx_DMA_BLK_ME_CHCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_CHSR_Bits B;
} Ifx_DMA_BLK_ME_CHSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_DADR_Bits B;
} Ifx_DMA_BLK_ME_DADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R0_Bits B;
} Ifx_DMA_BLK_ME_R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R1_Bits B;
} Ifx_DMA_BLK_ME_R1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R2_Bits B;
} Ifx_DMA_BLK_ME_R2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R3_Bits B;
} Ifx_DMA_BLK_ME_R3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R4_Bits B;
} Ifx_DMA_BLK_ME_R4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R5_Bits B;
} Ifx_DMA_BLK_ME_R5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R6_Bits B;
} Ifx_DMA_BLK_ME_R6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_R7_Bits B;
} Ifx_DMA_BLK_ME_R7;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_RDCRC_Bits B;
} Ifx_DMA_BLK_ME_RDCRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SADR_Bits B;
} Ifx_DMA_BLK_ME_SADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SDCRC_Bits B;
} Ifx_DMA_BLK_ME_SDCRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SHADR_Bits B;
} Ifx_DMA_BLK_ME_SHADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_BLK_ME_SR_Bits B;
} Ifx_DMA_BLK_ME_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_ADICR_Bits B;
} Ifx_DMA_CH_ADICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_CHCFGR_Bits B;
} Ifx_DMA_CH_CHCFGR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_CHCSR_Bits B;
} Ifx_DMA_CH_CHCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_DADR_Bits B;
} Ifx_DMA_CH_DADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_RDCRCR_Bits B;
} Ifx_DMA_CH_RDCRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SADR_Bits B;
} Ifx_DMA_CH_SADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SDCRCR_Bits B;
} Ifx_DMA_CH_SDCRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CH_SHADR_Bits B;
} Ifx_DMA_CH_SHADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_CLC_Bits B;
} Ifx_DMA_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ERRINTR_Bits B;
} Ifx_DMA_ERRINTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_HRR_Bits B;
} Ifx_DMA_HRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_ID_Bits B;
} Ifx_DMA_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_MEMCON_Bits B;
} Ifx_DMA_MEMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_MODE_Bits B;
} Ifx_DMA_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_OTSS_Bits B;
} Ifx_DMA_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_PRR0_Bits B;
} Ifx_DMA_PRR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_PRR1_Bits B;
} Ifx_DMA_PRR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_SUSACR_Bits B;
} Ifx_DMA_SUSACR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_SUSENR_Bits B;
} Ifx_DMA_SUSENR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_TIME_Bits B;
} Ifx_DMA_TIME;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_DMA_TSR_Bits B;
} Ifx_DMA_TSR;
# 1040 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK_ME
{
    Ifx_DMA_BLK_ME_SR SR;
    unsigned char reserved_4[12];
    Ifx_DMA_BLK_ME_R0 R0;
    Ifx_DMA_BLK_ME_R1 R1;
    Ifx_DMA_BLK_ME_R2 R2;
    Ifx_DMA_BLK_ME_R3 R3;
    Ifx_DMA_BLK_ME_R4 R4;
    Ifx_DMA_BLK_ME_R5 R5;
    Ifx_DMA_BLK_ME_R6 R6;
    Ifx_DMA_BLK_ME_R7 R7;
    unsigned char reserved_30[32];
    Ifx_DMA_BLK_ME_RDCRC RDCRC;
    Ifx_DMA_BLK_ME_SDCRC SDCRC;
    Ifx_DMA_BLK_ME_SADR SADR;
    Ifx_DMA_BLK_ME_DADR DADR;
    Ifx_DMA_BLK_ME_ADICR ADICR;
    Ifx_DMA_BLK_ME_CHCR CHCR;
    Ifx_DMA_BLK_ME_SHADR SHADR;
    Ifx_DMA_BLK_ME_CHSR CHSR;
} Ifx_DMA_BLK_ME;
# 1074 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK
{
    Ifx_DMA_BLK_EER EER;
    Ifx_DMA_BLK_ERRSR ERRSR;
    Ifx_DMA_BLK_CLRE CLRE;
    unsigned char reserved_C[4];
    Ifx_DMA_BLK_ME ME;
} Ifx_DMA_BLK;


typedef volatile struct _Ifx_DMA_CH
{
    Ifx_DMA_CH_RDCRCR RDCRCR;
    Ifx_DMA_CH_SDCRCR SDCRCR;
    Ifx_DMA_CH_SADR SADR;
    Ifx_DMA_CH_DADR DADR;
    Ifx_DMA_CH_ADICR ADICR;
    Ifx_DMA_CH_CHCFGR CHCFGR;
    Ifx_DMA_CH_SHADR SHADR;
    Ifx_DMA_CH_CHCSR CHCSR;
} Ifx_DMA_CH;
# 1107 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA
{
    Ifx_DMA_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_DMA_ID ID;
    unsigned char reserved_C[20];
    Ifx_DMA_MEMCON MEMCON;
    unsigned char reserved_24[28];
    Ifx_DMA_ACCEN00 ACCEN00;
    Ifx_DMA_ACCEN01 ACCEN01;
    Ifx_DMA_ACCEN10 ACCEN10;
    Ifx_DMA_ACCEN11 ACCEN11;
    Ifx_DMA_ACCEN20 ACCEN20;
    Ifx_DMA_ACCEN21 ACCEN21;
    Ifx_DMA_ACCEN30 ACCEN30;
    Ifx_DMA_ACCEN31 ACCEN31;
    unsigned char reserved_60[192];
    Ifx_DMA_BLK BLK0;
    unsigned char reserved_1A0[3968];
    Ifx_DMA_BLK BLK1;
    unsigned char reserved_11A0[96];
    Ifx_DMA_OTSS OTSS;
    Ifx_DMA_ERRINTR ERRINTR;
    Ifx_DMA_PRR0 PRR0;
    Ifx_DMA_PRR1 PRR1;
    Ifx_DMA_TIME TIME;
    unsigned char reserved_1214[236];
    Ifx_DMA_MODE MODE[4];
    unsigned char reserved_1310[1264];
    Ifx_DMA_HRR HRR[16];
    unsigned char reserved_1840[448];
    Ifx_DMA_SUSENR SUSENR[16];
    unsigned char reserved_1A40[448];
    Ifx_DMA_SUSACR SUSACR[16];
    unsigned char reserved_1C40[448];
    Ifx_DMA_TSR TSR[16];
    unsigned char reserved_1E40[448];
    Ifx_DMA_CH CH[16];
    unsigned char reserved_2200[7680];
} Ifx_DMA;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxDma_reg.h" 2
# 53 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h" 2
# 66 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
typedef enum
{
    IfxDma_BusMasterMode_user = 0,
    IfxDma_BusMasterMode_supervisor = 1
} IfxDma_BusMasterMode;



typedef enum
{
    IfxDma_ChannelBusPriority_low = 0,
    IfxDma_ChannelBusPriority_medium = 1,
    IfxDma_ChannelBusPriority_high = 2
} IfxDma_ChannelBusPriority;




typedef enum
{
    IfxDma_ChannelIncrementCircular_none = 0,
    IfxDma_ChannelIncrementCircular_2 = 1,
    IfxDma_ChannelIncrementCircular_4 = 2,
    IfxDma_ChannelIncrementCircular_8 = 3,
    IfxDma_ChannelIncrementCircular_16 = 4,
    IfxDma_ChannelIncrementCircular_32 = 5,
    IfxDma_ChannelIncrementCircular_64 = 6,
    IfxDma_ChannelIncrementCircular_128 = 7,
    IfxDma_ChannelIncrementCircular_256 = 8,
    IfxDma_ChannelIncrementCircular_512 = 9,
    IfxDma_ChannelIncrementCircular_1024 = 10,
    IfxDma_ChannelIncrementCircular_2048 = 11,
    IfxDma_ChannelIncrementCircular_4096 = 12,
    IfxDma_ChannelIncrementCircular_8192 = 13,
    IfxDma_ChannelIncrementCircular_16384 = 14,
    IfxDma_ChannelIncrementCircular_32768 = 15
} IfxDma_ChannelIncrementCircular;




typedef enum
{
    IfxDma_ChannelIncrementDirection_negative = 0,
    IfxDma_ChannelIncrementDirection_positive = 1
} IfxDma_ChannelIncrementDirection;




typedef enum
{
    IfxDma_ChannelIncrementStep_1 = 0,
    IfxDma_ChannelIncrementStep_2 = 1,
    IfxDma_ChannelIncrementStep_4 = 2,
    IfxDma_ChannelIncrementStep_8 = 3,
    IfxDma_ChannelIncrementStep_16 = 4,
    IfxDma_ChannelIncrementStep_32 = 5,
    IfxDma_ChannelIncrementStep_64 = 6,
    IfxDma_ChannelIncrementStep_128 = 7
} IfxDma_ChannelIncrementStep;




typedef enum
{
    IfxDma_ChannelInterruptControl_thresholdLimitMatch = 0,
    IfxDma_ChannelInterruptControl_transferCountDecremented = 1
} IfxDma_ChannelInterruptControl;




typedef enum
{
    IfxDma_ChannelMove_1 = 0,
    IfxDma_ChannelMove_2 = 1,
    IfxDma_ChannelMove_4 = 2,
    IfxDma_ChannelMove_8 = 3,
    IfxDma_ChannelMove_16 = 4,
    IfxDma_ChannelMove_3 = 5,
    IfxDma_ChannelMove_5 = 6,
    IfxDma_ChannelMove_9 = 7
} IfxDma_ChannelMove;




typedef enum
{
    IfxDma_ChannelMoveSize_8bit = 0,
    IfxDma_ChannelMoveSize_16bit = 1,
    IfxDma_ChannelMoveSize_32bit = 2,
    IfxDma_ChannelMoveSize_64bit = 3,
    IfxDma_ChannelMoveSize_128bit = 4,
    IfxDma_ChannelMoveSize_256bit = 5
} IfxDma_ChannelMoveSize;




typedef enum
{
    IfxDma_ChannelOperationMode_single = 0,
    IfxDma_ChannelOperationMode_continuous = 1
} IfxDma_ChannelOperationMode;




typedef enum
{
    IfxDma_ChannelPattern_0_disable = 0,
    IfxDma_ChannelPattern_0_mode1 = 1,
    IfxDma_ChannelPattern_0_mode2 = 2,
    IfxDma_ChannelPattern_0_mode3 = 3,
    IfxDma_ChannelPattern_1_disable = 4,
    IfxDma_ChannelPattern_1_mode1 = 5,
    IfxDma_ChannelPattern_1_mode2 = 6,
    IfxDma_ChannelPattern_1_mode3 = 7
} IfxDma_ChannelPattern;



typedef enum
{
    IfxDma_ChannelPriority_low = 0,
    IfxDma_ChannelPriority_medium = 1,
    IfxDma_ChannelPriority_high = 2
} IfxDma_ChannelPriority;




typedef enum
{
    IfxDma_ChannelRequestMode_oneTransferPerRequest = 0,
    IfxDma_ChannelRequestMode_completeTransactionPerRequest = 1
} IfxDma_ChannelRequestMode;




typedef enum
{
    IfxDma_ChannelRequestSource_peripheral = 0,
    IfxDma_ChannelRequestSource_daisyChain = 1
} IfxDma_ChannelRequestSource;




typedef enum
{
    IfxDma_ChannelShadow_none = 0,
    IfxDma_ChannelShadow_src = 1,
    IfxDma_ChannelShadow_dst = 2,
    IfxDma_ChannelShadow_srcDirectWrite = 5,
    IfxDma_ChannelShadow_dstDirectWrite = 6,
    IfxDma_ChannelShadow_doubleSourceBufferingSwSwitch = 8,
    IfxDma_ChannelShadow_doubleSourceBufferingHwSwSwitch = 9,
    IfxDma_ChannelShadow_doubleDestinationBufferingSwSwitch = 10,
    IfxDma_ChannelShadow_doubleDestinationBufferingHwSwSwitch = 11,
    IfxDma_ChannelShadow_linkedList = 12,
    IfxDma_ChannelShadow_accumulatedLinkedList = 13,
    IfxDma_ChannelShadow_safeLinkedList = 14,
    IfxDma_ChannelShadow_conditionalLinkedList = 15
} IfxDma_ChannelShadow;

typedef enum
{
    IfxDma_HardwareResourcePartition_0 = 0,
    IfxDma_HardwareResourcePartition_1,
    IfxDma_HardwareResourcePartition_2,
    IfxDma_HardwareResourcePartition_3
} IfxDma_HardwareResourcePartition;



typedef enum
{
    IfxDma_MoveEngine_0 = 0
} IfxDma_MoveEngine;




typedef enum
{
    IfxDma_SleepMode_enable = 0,
    IfxDma_SleepMode_disable = 1
} IfxDma_SleepMode;
# 286 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 299 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 321 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 331 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 344 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 385 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 398 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 414 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);





static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range);
# 431 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 447 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode);
# 464 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 494 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask);
# 504 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 518 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 528 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 542 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 584 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 606 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 618 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelSuspendModeStatus(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 646 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 657 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma);
# 668 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode);
# 679 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 690 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address);
# 703 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);
# 714 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize);
# 729 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow);
# 740 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 751 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 762 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 787 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address);
# 805 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);







static inline __attribute__ ((always_inline)) void IfxDma_setChannelSuspendEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId, boolean enable);
# 851 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount);
# 864 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 877 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 899 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 912 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 925 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 948 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 964 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 976 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 989 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1008 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1020 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1032 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1050 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1067 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1084 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1101 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1112 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1128 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1140 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1153 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1173 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelHardwareResourcePartition(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_HardwareResourcePartition resourcePartition);







static inline __attribute__ ((always_inline)) void IfxDma_setInterruptControlValue(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint8 value);







static inline __attribute__ ((always_inline)) void IfxDma_setCircularBufferDestinationLength(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint16 length);







static inline __attribute__ ((always_inline)) void IfxDma_setCircularBufferSourceLength(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint16 length);






static inline __attribute__ ((always_inline)) void IfxDma_enableSourceCircularBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxDma_enableDestinationCircularBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) uint32 IfxDma_getDataCRC(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) uint32 IfxDma_getSourceAndDestinationCRC(Ifx_DMA *dma, IfxDma_ChannelId channelId);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getErrPointer(Ifx_DMA *dma);





static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.CICH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.CTL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask)
{
    dma->BLK0.CLRE.U = mask;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT &= ~(1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.DCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    dma->BLK0.EER.B.EDER = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    dma->BLK0.EER.B.ESER = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT |= (1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.ECH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    dma->BLK0.EER.B.EDER = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    dma->BLK0.EER.B.ESER = 1;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.ICH != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.IPM != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.WRPD != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.WRPS != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].DADR.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HLTACK != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.ICH;

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.LXO != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].SADR.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelSuspendModeStatus(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->SUSACR[channelId].B.SUSAC;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.TRL != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.TCOUNT;
}


static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range)
{
    return (IfxDma_ChannelIncrementCircular)(31 - __builtin_clz((uint32)range));
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.FROZEN != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.FROZEN = 0;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.BUFFER != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    return dma->BLK0.ERRSR.U;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{

    return &(*(Ifx_SRC *)0xF0038000u).DMA.DMA[0].CH[channelId];
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma)
{
    return dma->TIME.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.RST != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HTRE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.CH != 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.U = 0U << (23u);
}


static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode)
{
    dma->CH[channelId].CHCFGR.B.BLKM = blockMode;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address)
{
    dma->CH[channelId].DADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_BLK_ME_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.DMF = incStep;
    adicr.B.INCD = direction;
    adicr.B.CBLD = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTREQ = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize)
{
    dma->CH[channelId].CHCFGR.B.CHDW = moveSize;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow)
{
    dma->CH[channelId].ADICR.B.SHCT = shadow;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address)
{
    dma->CH[channelId].SADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_BLK_ME_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.SMF = incStep;
    adicr.B.INCS = direction;
    adicr.B.CBLS = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSuspendEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId, boolean enable)
{
    dma->SUSENR[channelId].B.SUSEN = enable;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount)
{
    dma->CH[channelId].CHCFGR.B.TREL = transferCount;
}


static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    dma->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SWB = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT &= ~(3 << 2);
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT |= (1 << 2);
    dma->CH[channelId].ADICR.B.SHCT &= ~(1 << 3);
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelHardwareResourcePartition(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_HardwareResourcePartition resourcePartition)
{
    uint16 endinitSfty_pw = IfxScuWdt_getSafetyWatchdogPasswordInline();
    IfxScuWdt_clearSafetyEndinitInline(endinitSfty_pw);
    dma->HRR[channelId].B.HRP = resourcePartition;
    IfxScuWdt_setSafetyEndinitInline(endinitSfty_pw);
}


static inline __attribute__ ((always_inline)) void IfxDma_setInterruptControlValue(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint8 value)
{
    dma->CH[channelId].ADICR.B.INTCT = value;
}


static inline __attribute__ ((always_inline)) void IfxDma_setCircularBufferDestinationLength(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint16 length)
{
    dma->CH[channelId].ADICR.B.CBLD = length;
}


static inline __attribute__ ((always_inline)) void IfxDma_setCircularBufferSourceLength(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint16 length)
{
    dma->CH[channelId].ADICR.B.CBLS = length;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableSourceCircularBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SCBE = 0x1U;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableDestinationCircularBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.DCBE = 0x1U;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getDataCRC(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].RDCRCR.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getSourceAndDestinationCRC(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].SDCRCR.U;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getErrPointer(Ifx_DMA *dma)
{
    return &(*(Ifx_SRC *)0xF0038000u).DMA.DMA[0].ERR;
}
# 433 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 443 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma;







typedef struct
{
    Ifx_DMA *dma;
    IfxDma_ChannelId channelId;
    Ifx_DMA_CH *channel;
} IfxDma_Dma_Channel;



typedef struct
{
    IfxDma_Dma *module;
    IfxDma_ChannelId channelId;
    uint32 sourceAddress;
    uint32 destinationAddress;
    uint32 shadowAddress;
    uint32 readDataCrc;
    uint32 sourceDestinationAddressCrc;
    uint16 transferCount;
    IfxDma_ChannelMove blockMode;
    IfxDma_ChannelRequestMode requestMode;
    IfxDma_ChannelOperationMode operationMode;
    IfxDma_ChannelMoveSize moveSize;
    IfxDma_ChannelPattern pattern;
    IfxDma_ChannelRequestSource requestSource;
    IfxDma_ChannelBusPriority busPriority;
    boolean hardwareRequestEnabled;
    IfxDma_ChannelIncrementStep sourceAddressIncrementStep;
    IfxDma_ChannelIncrementDirection sourceAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular sourceAddressCircularRange;
    IfxDma_ChannelIncrementStep destinationAddressIncrementStep;
    IfxDma_ChannelIncrementDirection destinationAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular destinationAddressCircularRange;
    IfxDma_ChannelShadow shadowControl;
    boolean sourceCircularBufferEnabled;
    boolean destinationCircularBufferEnabled;
    boolean timestampEnabled;
    boolean wrapSourceInterruptEnabled;
    boolean wrapDestinationInterruptEnabled;
    boolean channelInterruptEnabled;
    IfxDma_ChannelInterruptControl channelInterruptControl;
    uint8 interruptRaiseThreshold;
    boolean transactionRequestLostInterruptEnabled;
    Ifx_Priority channelInterruptPriority;
    IfxSrc_Tos channelInterruptTypeOfService;
} IfxDma_Dma_ChannelConfig;



typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma_Config;
# 529 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_createModuleHandle(IfxDma_Dma *dmaHandle, Ifx_DMA *dma);





extern void IfxDma_Dma_deInitModule(IfxDma_Dma *dma);
# 545 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModule(IfxDma_Dma *dma, const IfxDma_Dma_Config *config);
# 555 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModuleConfig(IfxDma_Dma_Config *config, Ifx_DMA *dma);
# 574 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannel(IfxDma_Dma_Channel *channel, const IfxDma_Dma_ChannelConfig *config);
# 584 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannelConfig(IfxDma_Dma_ChannelConfig *config, IfxDma_Dma *dma);
# 599 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel);
# 613 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initLinkedListEntry(void *ptrToAddress, const IfxDma_Dma_ChannelConfig *config);
# 628 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel);






static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel);
# 652 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel);
# 662 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 672 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 682 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount);
# 691 "0_Src/BaseSw/iLLD/TC23A/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    IfxDma_clearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getAndClearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getSrcPointer(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel)
{
    return IfxDma_isChannelTransactionPending(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelDestinationAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelSourceAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount)
{
    IfxDma_setChannelTransferCount(channel->dma, channel->channelId, transferCount);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel)
{
    IfxDma_startChannelTransaction(channel->dma, channel->channelId);
}
# 493 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h" 1
# 43 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxQspi_cfg.h" 1
# 42 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxQspi_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_reg.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    unsigned int LAST : 1;
    unsigned int IPRE : 3;
    unsigned int IDLE : 3;
    unsigned int LPRE : 3;
    unsigned int LEAD : 3;
    unsigned int TPRE : 3;
    unsigned int TRAIL : 3;
    unsigned int PARTYP : 1;
    unsigned int UINT : 1;
    unsigned int MSB : 1;
    unsigned int BYTE : 1;
    unsigned int DL : 5;
    unsigned int CS : 4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CAPCON_Bits
{
    unsigned int CAP : 15;
    unsigned int OVF : 1;
    unsigned int EDGECON : 2;
    unsigned int INS : 2;
    unsigned int EN : 1;
    unsigned int reserved_21 : 7;
    unsigned int CAPC : 1;
    unsigned int CAPS : 1;
    unsigned int CAPF : 1;
    unsigned int CAPSEL : 1;
} Ifx_QSPI_CAPCON_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    unsigned int Q : 6;
    unsigned int A : 2;
    unsigned int B : 2;
    unsigned int C : 2;
    unsigned int CPH : 1;
    unsigned int CPOL : 1;
    unsigned int PAREN : 1;
    unsigned int reserved_15 : 15;
    unsigned int BE : 2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    unsigned int ERRORCLEARS : 9;
    unsigned int TXC : 1;
    unsigned int RXC : 1;
    unsigned int PT1C : 1;
    unsigned int PT2C : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRC : 1;
    unsigned int reserved_16 : 16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    unsigned int ERRORENS : 9;
    unsigned int TXEN : 1;
    unsigned int RXEN : 1;
    unsigned int PT1EN : 1;
    unsigned int PT2EN : 1;
    unsigned int reserved_13 : 2;
    unsigned int USREN : 1;
    unsigned int TXFIFOINT : 2;
    unsigned int RXFIFOINT : 2;
    unsigned int PT1 : 3;
    unsigned int PT2 : 3;
    unsigned int TXFM : 2;
    unsigned int RXFM : 2;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    unsigned int TQ : 8;
    unsigned int reserved_8 : 1;
    unsigned int SI : 1;
    unsigned int EXPECT : 4;
    unsigned int LB : 1;
    unsigned int DEL0 : 1;
    unsigned int STROBE : 5;
    unsigned int SRF : 1;
    unsigned int STIP : 1;
    unsigned int reserved_23 : 1;
    unsigned int EN : 1;
    unsigned int MS : 2;
    unsigned int AREN : 1;
    unsigned int RESETS : 4;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    unsigned int MRIS : 3;
    unsigned int reserved_3 : 1;
    unsigned int SRIS : 3;
    unsigned int reserved_7 : 1;
    unsigned int SCIS : 3;
    unsigned int reserved_11 : 1;
    unsigned int SLSIS : 3;
    unsigned int reserved_15 : 17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    unsigned int E : 32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    unsigned int AOL : 16;
    unsigned int OEN : 16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    unsigned int BITCOUNT : 8;
    unsigned int reserved_8 : 20;
    unsigned int BRDEN : 1;
    unsigned int BRD : 1;
    unsigned int SPDEN : 1;
    unsigned int SPD : 1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    unsigned int ERRORFLAGS : 9;
    unsigned int TXF : 1;
    unsigned int RXF : 1;
    unsigned int PT1F : 1;
    unsigned int PT2F : 1;
    unsigned int reserved_13 : 2;
    unsigned int USRF : 1;
    unsigned int TXFIFOLEVEL : 3;
    unsigned int RXFIFOLEVEL : 3;
    unsigned int SLAVESEL : 4;
    unsigned int RPV : 1;
    unsigned int TPV : 1;
    unsigned int PHASE : 4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    unsigned int XDL : 16;
    unsigned int BYTECOUNT : 16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CAPCON_Bits B;
} Ifx_QSPI_CAPCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 527 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
    Ifx_QSPI_CLC CLC;
    Ifx_QSPI_PISEL PISEL;
    Ifx_QSPI_ID ID;
    unsigned char reserved_C[4];
    Ifx_QSPI_GLOBALCON GLOBALCON;
    Ifx_QSPI_GLOBALCON1 GLOBALCON1;
    Ifx_QSPI_BACON BACON;
    unsigned char reserved_1C[4];
    Ifx_QSPI_ECON ECON[8];
    Ifx_QSPI_STATUS STATUS;
    Ifx_QSPI_STATUS1 STATUS1;
    Ifx_QSPI_SSOC SSOC;
    unsigned char reserved_4C[8];
    Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
    Ifx_QSPI_XXLCON XXLCON;
    Ifx_QSPI_MIXENTRY MIXENTRY;
    Ifx_QSPI_BACONENTRY BACONENTRY;
    Ifx_QSPI_DATAENTRY DATAENTRY[8];
    unsigned char reserved_84[12];
    Ifx_QSPI_RXEXIT RXEXIT;
    Ifx_QSPI_RXEXITD RXEXITD;
    unsigned char reserved_98[8];
    Ifx_QSPI_CAPCON CAPCON;
    unsigned char reserved_A4[68];
    Ifx_QSPI_OCS OCS;
    Ifx_QSPI_KRSTCLR KRSTCLR;
    Ifx_QSPI_KRST1 KRST1;
    Ifx_QSPI_KRST0 KRST0;
    Ifx_QSPI_ACCEN1 ACCEN1;
    Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 46 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxQspi_reg.h" 2
# 43 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxQspi_cfg.h" 2
# 60 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxQspi_cfg.h"
typedef enum
{
    IfxQspi_Index_none = -1,
    IfxQspi_Index_0 = 0,
    IfxQspi_Index_1,
    IfxQspi_Index_2,
    IfxQspi_Index_3
} IfxQspi_Index;





extern const IfxModule_IndexMap IfxQspi_cfg_indexMap[(4)];
# 44 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h" 2

# 1 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h" 1
# 49 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h"
typedef enum
{
    SpiIf_Status_ok,
    SpiIf_Status_busy,
    SpiIf_Status_unknown
} SpiIf_Status;


typedef enum
{
    SpiIf_SlsoTiming_0 = 0,
    SpiIf_SlsoTiming_1,
    SpiIf_SlsoTiming_2,
    SpiIf_SlsoTiming_3,
    SpiIf_SlsoTiming_4,
    SpiIf_SlsoTiming_5,
    SpiIf_SlsoTiming_6,
    SpiIf_SlsoTiming_7
} SpiIf_SlsoTiming;


typedef enum
{
    SpiIf_DataHeading_lsbFirst = 0,
    SpiIf_DataHeading_msbFirst
} SpiIf_DataHeading;


typedef enum
{
    SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge = 0,
    SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge
} SpiIf_ShiftClock;


typedef enum
{
    SpiIf_ClockPolarity_idleLow = 0,
    SpiIf_ClockPolarity_idleHigh
} SpiIf_ClockPolarity;





typedef struct SpiIf_Ch_ SpiIf_Ch;
typedef struct SpiIf_ChConfig_ SpiIf_ChConfig;
typedef struct SpiIf_ SpiIf;

typedef volatile struct
{
    uint32 onTransfer : 1;
    uint32 byteAccess : 1;
} SpiIf_Flags;

typedef struct
{
    void *data;
    Ifx_SizeT remaining;
} SpiIf_Job;


typedef enum
{
    SpiIf_Mode_master,
    SpiIf_Mode_slave,
    SpiIf_Mode_undefined
} SpiIf_Mode;

typedef SpiIf_Status (*SpiIf_Exchange)(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData);
typedef SpiIf_Status (*SpiIf_GetStatus)(SpiIf_Ch *handle);
typedef void (*SpiIf_OnEvent)(SpiIf *handle);
typedef uint32 SpiIf_SlsoTiming_HalfTsclk;


typedef struct
{
    SpiIf_Exchange exchange;
    SpiIf_GetStatus getStatus;
    SpiIf_OnEvent onTx;
    SpiIf_OnEvent onRx;
    SpiIf_OnEvent onError;
} SpiIf_funcs;

struct SpiIf_
{
    pvoid driver;
    uint32 sending;
    SpiIf_Ch *activeChannel;
    uint32 txCount;
    uint32 rxCount;
    SpiIf_funcs functions;
};

typedef struct
{
    SpiIf_Mode mode;
    Ifx_Priority rxPriority;
    Ifx_Priority txPriority;
    Ifx_Priority erPriority;
    IfxSrc_Tos isrProvider;
    Ifx_SizeT bufferSize;
    void *buffer;




    float32 maximumBaudrate;
} SpiIf_Config;

typedef struct
{
    uint32 baudrate : 1;
    uint32 phase : 1;
    uint32 receive : 1;
    uint32 transmit : 1;
    uint32 reserved : 28;
} Spi_ErrorChecks;


typedef struct
{
    uint32 enabled : 1;
    uint32 autoCS : 1;
    uint32 loopback : 1;
    uint32 clockPolarity : 1;
    uint32 shiftClock : 1;
    uint32 dataHeading : 1;
    uint32 dataWidth : 6;

    uint32 csActiveLevel : 1;

    uint32 parityCheck : 1;
    uint32 parityMode : 1;

    SpiIf_SlsoTiming_HalfTsclk csInactiveDelay;
    SpiIf_SlsoTiming_HalfTsclk csLeadDelay;
    SpiIf_SlsoTiming_HalfTsclk csTrailDelay;

} SpiIf_ChMode;


typedef void (*SpiIf_Cbk)(void *data);
typedef void (*TxRxHandler)(SpiIf_Ch *handle);

struct SpiIf_Ch_
{
    SpiIf *driver;
    SpiIf_Flags flags;
    Spi_ErrorChecks errorChecks;
    sint32 baudrate;
    SpiIf_Job tx;
    SpiIf_Job rx;
    SpiIf_Cbk onExchangeEnd;
    void *callbackData;
    TxRxHandler txHandler;
    TxRxHandler rxHandler;
};

struct SpiIf_ChConfig_
{
    SpiIf *driver;
    float32 baudrate;
    SpiIf_ChMode mode;
    Spi_ErrorChecks errorChecks;
};







static inline __attribute__ ((always_inline)) void SpiIf_wait(SpiIf_Ch *handle);
extern void SpiIf_initConfig(SpiIf_Config *config);
extern void SpiIf_initChannelConfig(SpiIf_ChConfig *config, SpiIf *driver);




static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_exchange(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData);
static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_getStatus(SpiIf_Ch *handle);
# 239 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h"
static inline __attribute__ ((always_inline)) void SpiIf_wait(SpiIf_Ch *handle)
{
    while (handle->flags.onTransfer != 0)
    {}
}
# 254 "0_Src/BaseSw/Service/CpuGeneric/If/SpiIf.h"
static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_exchange(SpiIf_Ch *handle, const void *src, void *dest, Ifx_SizeT numOfData)
{
    return handle->driver->functions.exchange(handle, src, dest, numOfData);
}






static inline __attribute__ ((always_inline)) SpiIf_Status SpiIf_getStatus(SpiIf_Ch *handle)
{
    return handle->driver->functions.getStatus(handle);
}
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h" 2


# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxQspi_PinMap.h" 1
# 39 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxQspi_PinMap.h"
typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mrst_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Mtsr_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Sclk_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Slsi_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxQspi_Hsicin_In;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mrst_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Mtsr_Out;


typedef const struct
{
    Ifx_QSPI* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Sclk_Out;


typedef const struct
{
    Ifx_QSPI* module;
    sint32 slsoNr;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxQspi_Slso_Out;

extern IfxQspi_Hsicin_In IfxQspi2_HSICINA_P15_2_IN;
extern IfxQspi_Hsicin_In IfxQspi2_HSICINB_P15_3_IN;
extern IfxQspi_Hsicin_In IfxQspi3_HSICINA_P33_9_IN;
extern IfxQspi_Hsicin_In IfxQspi3_HSICINB_P33_10_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTA_P20_12_IN;
extern IfxQspi_Mrst_In IfxQspi0_MRSTD_P14_6_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTA_P10_1_IN;
extern IfxQspi_Mrst_In IfxQspi1_MRSTB_P11_3_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTA_P15_4_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTB_P15_7_IN;
extern IfxQspi_Mrst_In IfxQspi2_MRSTE_P15_2_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTA_P02_5_IN;
extern IfxQspi_Mrst_In IfxQspi3_MRSTE_P22_1_IN;
extern IfxQspi_Mrst_Out IfxQspi0_MRST_P20_12_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_1_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P10_6_OUT;
extern IfxQspi_Mrst_Out IfxQspi1_MRST_P11_3_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_4_OUT;
extern IfxQspi_Mrst_Out IfxQspi2_MRST_P15_7_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P02_5_OUT;
extern IfxQspi_Mrst_Out IfxQspi3_MRST_P22_1_OUT;
extern IfxQspi_Mtsr_In IfxQspi0_MTSRA_P20_14_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRA_P10_3_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRB_P11_9_IN;
extern IfxQspi_Mtsr_In IfxQspi1_MTSRC_P11_8_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRA_P15_5_IN;
extern IfxQspi_Mtsr_In IfxQspi2_MTSRB_P15_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRA_P02_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRB_P10_6_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRD_P33_12_IN;
extern IfxQspi_Mtsr_In IfxQspi3_MTSRE_P22_0_IN;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_12_OUT;
extern IfxQspi_Mtsr_Out IfxQspi0_MTSR_P20_14_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_1_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P10_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_8_OUT;
extern IfxQspi_Mtsr_Out IfxQspi1_MTSR_P11_9_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P13_3_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_5_OUT;
extern IfxQspi_Mtsr_Out IfxQspi2_MTSR_P15_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P02_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P10_6_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P22_0_OUT;
extern IfxQspi_Mtsr_Out IfxQspi3_MTSR_P33_12_OUT;
extern IfxQspi_Sclk_In IfxQspi0_SCLKA_P20_11_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKA_P10_2_IN;
extern IfxQspi_Sclk_In IfxQspi1_SCLKB_P11_6_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKA_P15_3_IN;
extern IfxQspi_Sclk_In IfxQspi2_SCLKB_P15_8_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKA_P02_7_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKD_P33_11_IN;
extern IfxQspi_Sclk_In IfxQspi3_SCLKE_P22_3_IN;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_11_OUT;
extern IfxQspi_Sclk_Out IfxQspi0_SCLK_P20_13_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P10_2_OUT;
extern IfxQspi_Sclk_Out IfxQspi1_SCLK_P11_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P13_0_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_6_OUT;
extern IfxQspi_Sclk_Out IfxQspi2_SCLK_P15_8_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P02_7_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P22_3_OUT;
extern IfxQspi_Sclk_Out IfxQspi3_SCLK_P33_11_OUT;
extern IfxQspi_Slsi_In IfxQspi0_SLSIA_P20_13_IN;
extern IfxQspi_Slsi_In IfxQspi0_SLSIB_P20_9_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIA_P15_2_IN;
extern IfxQspi_Slsi_In IfxQspi2_SLSIB_P15_1_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIA_P02_4_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSIC_P33_10_IN;
extern IfxQspi_Slsi_In IfxQspi3_SLSID_P22_2_IN;
extern IfxQspi_Slso_Out IfxQspi0_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO12_P22_4_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO13_P15_0_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO6_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi0_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO0_P20_8_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO10_P11_8_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO1_P20_9_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO2_P20_13_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO3_P11_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO4_P11_11_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO5_P11_2_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO6_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO7_P33_5_OUT;
extern IfxQspi_Slso_Out IfxQspi1_SLSO9_P10_5_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO0_P15_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO10_P34_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO1_P14_2_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO2_P14_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO3_P14_3_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO4_P14_7_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO5_P15_1_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO7_P20_10_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO8_P20_6_OUT;
extern IfxQspi_Slso_Out IfxQspi2_SLSO9_P20_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO0_P02_4_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO11_P33_10_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO12_P22_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO13_P23_1_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO1_P02_0_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO1_P33_9_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO2_P02_1_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO2_P33_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO3_P02_2_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO4_P02_3_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO5_P02_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO6_P00_8_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P00_9_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO7_P33_7_OUT;
extern IfxQspi_Slso_Out IfxQspi3_SLSO8_P10_5_OUT;
# 244 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxQspi_PinMap.h"
extern const IfxQspi_Hsicin_In *IfxQspi_Hsicin_In_pinTable[4][2];


extern const IfxQspi_Mrst_In *IfxQspi_Mrst_In_pinTable[4][5];


extern const IfxQspi_Mrst_Out *IfxQspi_Mrst_Out_pinTable[4][3];


extern const IfxQspi_Mtsr_In *IfxQspi_Mtsr_In_pinTable[4][5];


extern const IfxQspi_Mtsr_Out *IfxQspi_Mtsr_Out_pinTable[4][4];


extern const IfxQspi_Sclk_In *IfxQspi_Sclk_In_pinTable[4][5];


extern const IfxQspi_Sclk_Out *IfxQspi_Sclk_Out_pinTable[4][4];


extern const IfxQspi_Slsi_In *IfxQspi_Slsi_In_pinTable[4][4];


extern const IfxQspi_Slso_Out *IfxQspi_Slso_Out_pinTable[4][14][2];
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h" 2
# 71 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
typedef enum
{
    IfxQspi_ChannelId_0,
    IfxQspi_ChannelId_1,
    IfxQspi_ChannelId_2,
    IfxQspi_ChannelId_3,
    IfxQspi_ChannelId_4,
    IfxQspi_ChannelId_5,
    IfxQspi_ChannelId_6,
    IfxQspi_ChannelId_7,
    IfxQspi_ChannelId_8,
    IfxQspi_ChannelId_9,
    IfxQspi_ChannelId_10,
    IfxQspi_ChannelId_11,
    IfxQspi_ChannelId_12,
    IfxQspi_ChannelId_13,
    IfxQspi_ChannelId_14
} IfxQspi_ChannelId;



typedef enum
{
    IfxQspi_DataLengthUnit_bit = 0,
    IfxQspi_DataLengthUnit_byte = 1
} IfxQspi_DataLengthUnit;



typedef enum
{
    IfxQspi_Error_none = 0,
    IfxQspi_Error_parity = 1,
    IfxQspi_Error_configuration = 2,
    IfxQspi_Error_baudrate = 4,
    IfxQspi_Error_txfifoOverflow = 8,
    IfxQspi_Error_txfifoUnderflow = 16,
    IfxQspi_Error_rxfifoOverflow = 32,
    IfxQspi_Error_rxfifoUnderflow = 64,
    IfxQspi_Error_expectTimeout = 128,
    IfxQspi_Error_slsiMisplacedInactivation = 256
} IfxQspi_Error;



typedef enum
{
    IfxQspi_ExpectTimeout_64 = 0,
    IfxQspi_ExpectTimeout_128 = 1,
    IfxQspi_ExpectTimeout_256 = 2,
    IfxQspi_ExpectTimeout_512 = 3,
    IfxQspi_ExpectTimeout_1024 = 4,
    IfxQspi_ExpectTimeout_2048 = 5,
    IfxQspi_ExpectTimeout_4096 = 6,
    IfxQspi_ExpectTimeout_8192 = 7,
    IfxQspi_ExpectTimeout_16384 = 8,
    IfxQspi_ExpectTimeout_32768 = 9,
    IfxQspi_ExpectTimeout_65536 = 10,
    IfxQspi_ExpectTimeout_131072 = 11,
    IfxQspi_ExpectTimeout_262144 = 12,
    IfxQspi_ExpectTimeout_524288 = 13,
    IfxQspi_ExpectTimeout_1048576 = 14,
    IfxQspi_ExpectTimeout_2097152 = 15
} IfxQspi_ExpectTimeout;



typedef enum
{
    IfxQspi_Mode_master = 0,
    IfxQspi_Mode_pwmOverQspi = 1,
    IfxQspi_Mode_slave = 2
} IfxQspi_Mode;



typedef enum
{
    IfxQspi_PauseRunTransition_pause = 0,
    IfxQspi_PauseRunTransition_run = 1
} IfxQspi_PauseRunTransition;



typedef enum
{
    IfxQspi_Phase_wait = 0,
    IfxQspi_Phase_idleA = 1,
    IfxQspi_Phase_idleB = 2,
    IfxQspi_Phase_lead = 3,
    IfxQspi_Phase_data = 4,
    IfxQspi_Phase_trail = 5,
    IfxQspi_Phase_expect = 6,
    IfxQspi_Phase_leadStrobe = 7,
    IfxQspi_Phase_trailStrobe = 8
} IfxQspi_Phase;



typedef enum
{
    IfxQspi_PhaseTransitionEvent_endOfWait = 0,
    IfxQspi_PhaseTransitionEvent_serialClockPolarityChange = 1,
    IfxQspi_PhaseTransitionEvent_startOfFrame = 2,
    IfxQspi_PhaseTransitionEvent_transmitBufferEmptied = 3,
    IfxQspi_PhaseTransitionEvent_receiveBufferFilled = 4,
    IfxQspi_PhaseTransitionEvent_endOfFrame = 5,
    IfxQspi_PhaseTransitionEvent_dataNotAvailable = 6,
    IfxQspi_PhaseTransitionEvent_endOfExpect = 7
} IfxQspi_PhaseTransitionEvent;



typedef enum
{
    IfxQspi_Reset_none = 0,
    IfxQspi_Reset_stateMachineAndFifo = 7,
    IfxQspi_Reset_kernel = 15
} IfxQspi_Reset;



typedef enum
{
    IfxQspi_RxFifoInt_0,
    IfxQspi_RxFifoInt_1,
    IfxQspi_RxFifoInt_2,
    IfxQspi_RxFifoInt_3
} IfxQspi_RxFifoInt;




typedef enum
{
    IfxQspi_SleepMode_enable = 0,
    IfxQspi_SleepMode_disable = 1
} IfxQspi_SleepMode;



typedef enum
{
    IfxQspi_StrobeDelay_1,
    IfxQspi_StrobeDelay_2,
    IfxQspi_StrobeDelay_3,
    IfxQspi_StrobeDelay_4,
    IfxQspi_StrobeDelay_5,
    IfxQspi_StrobeDelay_6,
    IfxQspi_StrobeDelay_7,
    IfxQspi_StrobeDelay_8,
    IfxQspi_StrobeDelay_9,
    IfxQspi_StrobeDelay_10,
    IfxQspi_StrobeDelay_11,
    IfxQspi_StrobeDelay_12,
    IfxQspi_StrobeDelay_13,
    IfxQspi_StrobeDelay_14,
    IfxQspi_StrobeDelay_15,
    IfxQspi_StrobeDelay_16,
    IfxQspi_StrobeDelay_17,
    IfxQspi_StrobeDelay_18,
    IfxQspi_StrobeDelay_19,
    IfxQspi_StrobeDelay_20,
    IfxQspi_StrobeDelay_21,
    IfxQspi_StrobeDelay_22,
    IfxQspi_StrobeDelay_23,
    IfxQspi_StrobeDelay_24,
    IfxQspi_StrobeDelay_25,
    IfxQspi_StrobeDelay_26,
    IfxQspi_StrobeDelay_27,
    IfxQspi_StrobeDelay_28,
    IfxQspi_StrobeDelay_29,
    IfxQspi_StrobeDelay_30,
    IfxQspi_StrobeDelay_31,
    IfxQspi_StrobeDelay_32
} IfxQspi_StrobeDelay;



typedef enum
{
    IfxQspi_TxFifoInt_1,
    IfxQspi_TxFifoInt_2,
    IfxQspi_TxFifoInt_3,
    IfxQspi_TxFifoInt_4
} IfxQspi_TxFifoInt;





typedef enum
{
    IfxQspi_FifoMode_combinedMove = 0,
    IfxQspi_FifoMode_singleMove = 1,
    IfxQspi_FifoMode_batchMove = 2
} IfxQspi_FifoMode;



typedef enum
{
    IfxQspi_SuspendMode_none = 0,
    IfxQspi_SuspendMode_hard = 1,
    IfxQspi_SuspendMode_soft = 2
} IfxQspi_SuspendMode;
# 285 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
typedef struct
{
    uint8 pre;
    uint8 delay;
} IfxQspi_DelayConst;
# 302 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_clearRxReq(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_clearTxReq(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_configPT1Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt1Config);






static inline __attribute__ ((always_inline)) void IfxQspi_configPT2Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt2Config);






static inline __attribute__ ((always_inline)) void IfxQspi_enableLoopbackMode(Ifx_QSPI *qspi, boolean enable);






static inline __attribute__ ((always_inline)) void IfxQspi_enablePT1Event(Ifx_QSPI *qspi, boolean enable);






static inline __attribute__ ((always_inline)) void IfxQspi_enablePT2Event(Ifx_QSPI *qspi, boolean enable);






static inline __attribute__ ((always_inline)) void IfxQspi_enableUsrEvent(Ifx_QSPI *qspi, boolean enable);





static inline __attribute__ ((always_inline)) uint16 IfxQspi_getErrorFlags(Ifx_QSPI *qspi);







static inline __attribute__ ((always_inline)) void IfxQspi_pause(Ifx_QSPI *qspi);




static inline __attribute__ ((always_inline)) uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_requestReset(Ifx_QSPI *qspi, IfxQspi_Reset reset);





static inline __attribute__ ((always_inline)) void IfxQspi_run(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt);






static inline __attribute__ ((always_inline)) void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data);







static inline __attribute__ ((always_inline)) boolean IfxQspi_isModuleSuspended(Ifx_QSPI *qspi);







static inline __attribute__ ((always_inline)) void IfxQspi_setSuspendMode(Ifx_QSPI *qspi, IfxQspi_SuspendMode mode);
# 430 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_read16(Ifx_QSPI *qspi, uint16 *data, Ifx_SizeT count);







extern void IfxQspi_read32(Ifx_QSPI *qspi, uint32 *data, Ifx_SizeT count);







extern void IfxQspi_read8(Ifx_QSPI *qspi, uint8 *data, Ifx_SizeT count);





extern void IfxQspi_resetModule(Ifx_QSPI *qspi);
# 461 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write16(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint16 *data, Ifx_SizeT count);
# 470 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write32(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 *data, Ifx_SizeT count);
# 479 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_write8(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 *data, Ifx_SizeT count);
# 494 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) boolean IfxQspi_isModuleEnabled(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi);






static inline __attribute__ ((always_inline)) void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode);






static inline __attribute__ ((always_inline)) void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal);







static inline __attribute__ ((always_inline)) void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal);






static inline __attribute__ ((always_inline)) void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal);
# 603 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern float IfxQspi_calcRealBaudrate(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId);
# 612 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern uint32 IfxQspi_calculateBasicConfigurationValue(Ifx_QSPI *qspi, const IfxQspi_ChannelId channelId, const SpiIf_ChMode *chMode, const float baudrate);







extern uint32 IfxQspi_calculateExtendedConfigurationValue(Ifx_QSPI *qspi, const uint8 cs, const SpiIf_ChConfig *chConfig);






extern uint32 IfxQspi_calculatePrescaler(Ifx_QSPI *qspi, float baudrate);






extern uint32 IfxQspi_calculateTimeQuantumLength(Ifx_QSPI *qspi, float maxBaudrate);





extern Ifx_QSPI *IfxQspi_getAddress(IfxQspi_Index qspi);





extern IfxQspi_Index IfxQspi_getIndex(Ifx_QSPI *qspi);
# 655 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern uint32 IfxQspi_recalcBasicConfiguration(uint32 oldBACON, Ifx_SizeT numOfData, boolean shortData, boolean lastData);
# 664 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_setSlaveSelectOutputControl(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, boolean outputEnable, boolean activeLevel);
# 679 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi);
# 707 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode);







static inline __attribute__ ((always_inline)) void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode);
# 761 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex);
# 773 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
static inline __attribute__ ((always_inline)) IfxQspi_FifoMode IfxQspi_getRxFifoMode(Ifx_QSPI *qspi);





static inline __attribute__ ((always_inline)) IfxQspi_FifoMode IfxQspi_getTxFifoMode(Ifx_QSPI *qspi);







static inline __attribute__ ((always_inline)) void IfxQspi_permutateBigEndian(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bigEndian);







static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment1(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment1);







static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment2(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment2);







static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment3(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment3);






static inline __attribute__ ((always_inline)) void IfxQspi_setRxFifoMode(Ifx_QSPI *qspi, IfxQspi_FifoMode mode);







static inline __attribute__ ((always_inline)) void IfxQspi_setTimeQuantum(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 timeQuantum);






static inline __attribute__ ((always_inline)) void IfxQspi_setTxFifoMode(Ifx_QSPI *qspi, IfxQspi_FifoMode mode);






static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPinWithPadLevel(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPinWithPadLevel(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPinWithPadLevel(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxQspi_initSlsiWithPadLevel(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode, IfxPort_PadDriver padDriver);
# 873 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/Std/IfxQspi.h"
extern void IfxQspi_calculateDelayConstants(const Ifx_QSPI *qspi, const IfxQspi_ChannelId channelId, const SpiIf_ChMode *chMode, IfxQspi_DelayConst *delayConst);





static inline __attribute__ ((always_inline)) void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.U = 0xFFFFU;
}


static inline __attribute__ ((always_inline)) void IfxQspi_clearRxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.RXC = 1U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_clearTxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.TXC = 1U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_configPT1Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt1Config)
{
    qspi->GLOBALCON1.B.PT1 = pt1Config;
}


static inline __attribute__ ((always_inline)) void IfxQspi_configPT2Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt2Config)
{
    qspi->GLOBALCON1.B.PT2 = pt2Config;
}


static inline __attribute__ ((always_inline)) void IfxQspi_enableLoopbackMode(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON.B.LB = 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_enablePT1Event(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.PT1EN = enable;
}


static inline __attribute__ ((always_inline)) void IfxQspi_enablePT2Event(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.PT2EN = enable;
}


static inline __attribute__ ((always_inline)) void IfxQspi_enableUsrEvent(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.USREN = enable;
}


static inline __attribute__ ((always_inline)) uint16 IfxQspi_getErrorFlags(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.ERRORFLAGS;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &(*(Ifx_SRC *)0xF0038000u).QSPI.QSPI[index].ERR;
}


static inline __attribute__ ((always_inline)) IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi)
{
    return (IfxQspi_Mode)qspi->GLOBALCON.B.MS;
}


static inline __attribute__ ((always_inline)) float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi)
{
    return IfxScuCcu_getMaxFrequency();
}


static inline __attribute__ ((always_inline)) IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi)
{
    return (IfxQspi_Phase)qspi->STATUS.B.PHASE;
}


static inline __attribute__ ((always_inline)) uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.RXFIFOLEVEL;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &(*(Ifx_SRC *)0xF0038000u).QSPI.QSPI[index].RX;
}


static inline __attribute__ ((always_inline)) IfxQspi_FifoMode IfxQspi_getRxFifoMode(Ifx_QSPI *qspi)
{
    return (IfxQspi_FifoMode)qspi->GLOBALCON1.B.RXFM;
}


static inline __attribute__ ((always_inline)) float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi)
{
    return IfxQspi_getModuleFrequency(qspi) / (qspi->GLOBALCON.B.TQ + 1);
}


static inline __attribute__ ((always_inline)) uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.TXFIFOLEVEL;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &(*(Ifx_SRC *)0xF0038000u).QSPI.QSPI[index].TX;
}


static inline __attribute__ ((always_inline)) IfxQspi_FifoMode IfxQspi_getTxFifoMode(Ifx_QSPI *qspi)
{
    return (IfxQspi_FifoMode)qspi->GLOBALCON1.B.TXFM;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode)
{
    IfxPort_setPinModeInput(mrstIn->pin.port, mrstIn->pin.pinIndex, mrstInMode);
    mrstIn->module->PISEL.B.MRIS = mrstIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mrstOut->pin.port, mrstOut->pin.pinIndex, mrstOutMode, mrstOut->select);
    IfxPort_setPinPadDriver(mrstOut->pin.port, mrstOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode)
{
    IfxPort_setPinModeInput(mtsrIn->pin.port, mtsrIn->pin.pinIndex, mtsrInMode);
    mtsrIn->module->PISEL.B.SRIS = mtsrIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mtsrOut->pin.port, mtsrOut->pin.pinIndex, mtsrOutMode, mtsrOut->select);
    IfxPort_setPinPadDriver(mtsrOut->pin.port, mtsrOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode)
{
    IfxPort_setPinModeInput(sclkIn->pin.port, sclkIn->pin.pinIndex, sclkInMode);
    sclkIn->module->PISEL.B.SCIS = sclkIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(sclkOut->pin.port, sclkOut->pin.pinIndex, sclkOutMode, sclkOut->select);
    IfxPort_setPinPadDriver(sclkOut->pin.port, sclkOut->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode)
{
    IfxPort_setPinModeInput(slsi->pin.port, slsi->pin.pinIndex, slsiMode);

    slsi->module->PISEL.B.SLSIS = slsi->select + 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex)
{
    IfxPort_setPinModeOutput(slso->pin.port, slso->pin.pinIndex, slsoMode, outIndex);
    IfxPort_setPinPadDriver(slso->pin.port, slso->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) boolean IfxQspi_isModuleEnabled(Ifx_QSPI *qspi)
{
    return (qspi->CLC.B.DISS == 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxQspi_pause(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 0;

    while (IfxQspi_getPhase(qspi) != IfxQspi_Phase_wait)
    {}
}


static inline __attribute__ ((always_inline)) void IfxQspi_permutateBigEndian(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bigEndian)
{
    int cs = channelId % 8;
    qspi->ECON[cs].B.BE = bigEndian;
}


static inline __attribute__ ((always_inline)) uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi)
{
    return qspi->RXEXIT.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_requestReset(Ifx_QSPI *qspi, IfxQspi_Reset reset)
{
    qspi->GLOBALCON.B.RESETS = reset;
}


static inline __attribute__ ((always_inline)) void IfxQspi_run(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment1(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment1)
{
    int cs = channelId % 8;
    qspi->ECON[cs].B.A = bitSegment1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment2(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment2)
{
    int cs = channelId % 8;
    qspi->ECON[cs].B.B = bitSegment2;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setBitsegment3(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 bitSegment3)
{
    int cs = channelId % 8;
    qspi->ECON[cs].B.C = bitSegment3;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 1;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 0;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt)
{
    qspi->GLOBALCON1.B.RXFIFOINT = rxFifoInt;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setRxFifoMode(Ifx_QSPI *qspi, IfxQspi_FifoMode mode)
{
    qspi->GLOBALCON1.B.RXFM = mode;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode)
{
    qspi->CLC.B.EDIS = mode;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setTimeQuantum(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 timeQuantum)
{
    int cs = channelId % 8;
    qspi->ECON[cs].B.Q = timeQuantum;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt)
{
    qspi->GLOBALCON1.B.TXFIFOINT = txFifoInt;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setTxFifoMode(Ifx_QSPI *qspi, IfxQspi_FifoMode mode)
{
    qspi->GLOBALCON1.B.TXFM = mode;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal)
{
    qspi->BACONENTRY.U = baconVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = baconVal;
    bacon.B.LAST = 0;

    qspi->BACONENTRY.U = bacon.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = baconVal;
    bacon.B.LAST = 1;

    qspi->BACONENTRY.U = bacon.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal)
{
    int cs = channelId % 8;
    qspi->ECON[cs].U = econVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal)
{
    qspi->MIXENTRY.U = mixEntryVal;
}


static inline __attribute__ ((always_inline)) void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data)
{
    qspi->DATAENTRY[0].U = data;
}


static inline __attribute__ ((always_inline)) boolean IfxQspi_isModuleSuspended(Ifx_QSPI *qspi)
{
    Ifx_QSPI_OCS ocs;


    ocs.U = qspi->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxQspi_setSuspendMode(Ifx_QSPI *qspi, IfxQspi_SuspendMode mode)
{
    Ifx_QSPI_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    qspi->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMrstInPinWithPadLevel(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeInput(mrstIn->pin.port, mrstIn->pin.pinIndex, mrstInMode);
    IfxPort_setPinPadDriver(mrstIn->pin.port, mrstIn->pin.pinIndex, padDriver);
    mrstIn->module->PISEL.B.MRIS = mrstIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initMtsrInPinWithPadLevel(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeInput(mtsrIn->pin.port, mtsrIn->pin.pinIndex, mtsrInMode);
    IfxPort_setPinPadDriver(mtsrIn->pin.port, mtsrIn->pin.pinIndex, padDriver);
    mtsrIn->module->PISEL.B.SRIS = mtsrIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSclkInPinWithPadLevel(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeInput(sclkIn->pin.port, sclkIn->pin.pinIndex, sclkInMode);
    IfxPort_setPinPadDriver(sclkIn->pin.port, sclkIn->pin.pinIndex, padDriver);
    sclkIn->module->PISEL.B.SCIS = sclkIn->select;
}


static inline __attribute__ ((always_inline)) void IfxQspi_initSlsiWithPadLevel(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeInput(slsi->pin.port, slsi->pin.pinIndex, slsiMode);

    IfxPort_setPinPadDriver(slsi->pin.port, slsi->pin.pinIndex, padDriver);
    slsi->module->PISEL.B.SLSIS = slsi->select + 1;
}
# 494 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h" 2






typedef struct IfxQspi_SpiMaster_Channel_s IfxQspi_SpiMaster_Channel;

typedef void (*IfxQspi_SpiMaster_AutoSlso)(IfxQspi_SpiMaster_Channel *chHandle);







typedef enum
{
    IfxQspi_SpiMaster_ChannelBasedCs_disabled = 0,
    IfxQspi_SpiMaster_ChannelBasedCs_enabled = 1
} IfxQspi_SpiMaster_ChannelBasedCs;

typedef enum
{
    IfxQspi_SpiMaster_Mode_short = 0,
    IfxQspi_SpiMaster_Mode_long = 1,
    IfxQspi_SpiMaster_Mode_shortContinuous = 2,
    IfxQspi_SpiMaster_Mode_longContinuous = 3,
    IfxQspi_SpiMaster_Mode_xxl = 4
} IfxQspi_SpiMaster_Mode;
# 535 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
typedef struct
{
    const IfxQspi_Slsi_In *pin;
    IfxPort_InputMode mode;
} IfxQspi_SpiMaster_Input;



typedef struct
{
    const IfxQspi_Slso_Out *pin;
    IfxPort_OutputMode mode;
    IfxPort_PadDriver driver;
} IfxQspi_SpiMaster_Output;







typedef struct
{
    IfxDma_Dma_Channel rxDmaChannel;
    IfxDma_Dma_Channel txDmaChannel;
    IfxDma_ChannelId rxDmaChannelId;
    IfxDma_ChannelId txDmaChannelId;
    boolean useDma;
} IfxQspi_SpiMaster_Dma;



typedef struct
{
    IfxDma_ChannelId rxDmaChannelId;
    IfxDma_ChannelId txDmaChannelId;
    boolean useDma;
} IfxQspi_SpiMaster_DmaConfig;



typedef struct
{
    uint16 parityError : 1;
    uint16 configurationError : 1;
    uint16 baudrateError : 1;
    uint16 txFifoOverflowError : 1;
    uint16 txFifoUnderflowError : 1;
    uint16 rxFifoOverflowError : 1;
    uint16 rxFifoUnderflowError : 1;
    uint16 expectTimeoutError : 1;
} IfxQspi_SpiMaster_ErrorFlags;



typedef union
{
    IfxQspi_SpiMaster_Input input;
    IfxQspi_SpiMaster_Output output;
} IfxQspi_SpiMaster_InputOutput;



typedef struct
{
    const IfxQspi_Sclk_Out *sclk;
    IfxPort_OutputMode sclkMode;
    const IfxQspi_Mtsr_Out *mtsr;
    IfxPort_OutputMode mtsrMode;
    const IfxQspi_Mrst_In *mrst;
    IfxPort_InputMode mrstMode;
    IfxPort_PadDriver pinDriver;
} IfxQspi_SpiMaster_Pins;







typedef struct
{
    SpiIf base;
    Ifx_QSPI *qspi;
    IfxQspi_SpiMaster_Dma dma;
    float32 maximumBaudrate;
} IfxQspi_SpiMaster;



typedef struct
{
    SpiIf_ChConfig base;
    IfxQspi_SpiMaster_InputOutput sls;
    IfxQspi_SpiMaster_ChannelBasedCs channelBasedCs;
    IfxQspi_SpiMaster_Mode mode;
} IfxQspi_SpiMaster_ChannelConfig;



struct IfxQspi_SpiMaster_Channel_s
{
    SpiIf_Ch base;
    Ifx_QSPI_BACON bacon;
    IfxPort_Pin slso;
    IfxQspi_SpiMaster_AutoSlso activateSlso;
    IfxQspi_SpiMaster_AutoSlso deactivateSlso;
    IfxQspi_ChannelId channelId;
    Ifx_ActiveState slsoActiveState;
    uint8 dataWidth;
    boolean firstWrite;
    IfxQspi_SpiMaster_ChannelBasedCs channelBasedCs;
    IfxQspi_SpiMaster_Mode mode;
    IfxQspi_SpiMaster_ErrorFlags errorFlags;
};



typedef struct
{
    SpiIf_Config base;
    Ifx_QSPI *qspi;
    boolean allowSleepMode;
    boolean pauseOnBaudrateSpikeErrors;
    IfxQspi_PauseRunTransition pauseRunTransition;
    IfxQspi_TxFifoInt txFifoThreshold;
    IfxQspi_RxFifoInt rxFifoThreshold;
    const IfxQspi_SpiMaster_Pins *pins;
    IfxQspi_SpiMaster_DmaConfig dma;
    IfxQspi_FifoMode txFifoMode;
    IfxQspi_FifoMode rxFifoMode;
} IfxQspi_SpiMaster_Config;
# 685 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initModule(IfxQspi_SpiMaster *handle, const IfxQspi_SpiMaster_Config *config);
# 695 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initModuleConfig(IfxQspi_SpiMaster_Config *config, Ifx_QSPI *qspi);
# 714 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_initChannel(IfxQspi_SpiMaster_Channel *chHandle, const IfxQspi_SpiMaster_ChannelConfig *chConfig);
# 724 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_initChannelConfig(IfxQspi_SpiMaster_ChannelConfig *chConfig, IfxQspi_SpiMaster *handle);
# 745 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_exchange(IfxQspi_SpiMaster_Channel *chHandle, const void *src, void *dest, Ifx_SizeT count);
# 754 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_Status IfxQspi_SpiMaster_getStatus(IfxQspi_SpiMaster_Channel *chHandle);
# 769 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_isrDmaReceive(IfxQspi_SpiMaster *qspiHandle);





extern void IfxQspi_SpiMaster_isrDmaTransmit(IfxQspi_SpiMaster *qspiHandle);





extern void IfxQspi_SpiMaster_isrError(IfxQspi_SpiMaster *handle);





extern IfxQspi_PhaseTransitionEvent IfxQspi_SpiMaster_isrPhaseTransition(IfxQspi_SpiMaster *handle);





extern void IfxQspi_SpiMaster_isrReceive(IfxQspi_SpiMaster *handle);





extern void IfxQspi_SpiMaster_isrTransmit(IfxQspi_SpiMaster *handle);





extern IfxQspi_PhaseTransitionEvent IfxQspi_SpiMaster_isrUserDefined(IfxQspi_SpiMaster *handle);
# 820 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
static inline __attribute__ ((always_inline)) uint32 IfxQspi_SpiMaster_readReceiveFifo(IfxQspi_SpiMaster *handle);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeBasicConfiguration(IfxQspi_SpiMaster *handle, uint32 baconVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeExtendedConfiguration(IfxQspi_SpiMaster_Channel *chHandle, uint32 econVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeMixedDataConfiguration(IfxQspi_SpiMaster *handle, uint32 mixEntryVal);






static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeTransmitFifo(IfxQspi_SpiMaster_Channel *chHandle, uint32 data);
# 861 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern void IfxQspi_SpiMaster_packLongModeBuffer(IfxQspi_SpiMaster_Channel *chHandle, void *data, uint32 *longFifoBuffer, Ifx_SizeT dataLength);
# 873 "0_Src/BaseSw/iLLD/TC23A/Tricore/Qspi/SpiMaster/IfxQspi_SpiMaster.h"
extern SpiIf_ChConfig IfxQspi_SpiMaster_getChannelConfig(IfxQspi_SpiMaster_Channel *chHandle);






extern SpiIf_Status IfxQspi_SpiMaster_setChannelBaudrate(IfxQspi_SpiMaster_Channel *chHandle, float32 baudrate);





static inline __attribute__ ((always_inline)) uint32 IfxQspi_SpiMaster_readReceiveFifo(IfxQspi_SpiMaster *handle)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    uint32 data = IfxQspi_readReceiveFifo(qspiSFR);
    return data;
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeBasicConfiguration(IfxQspi_SpiMaster *handle, uint32 baconVal)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    IfxQspi_writeBasicConfiguration(qspiSFR, baconVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeExtendedConfiguration(IfxQspi_SpiMaster_Channel *chHandle, uint32 econVal)
{
    IfxQspi_SpiMaster *handle = (IfxQspi_SpiMaster *)chHandle->base.driver;
    IfxQspi_writeExtendedConfiguration(handle->qspi, chHandle->channelId, econVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeMixedDataConfiguration(IfxQspi_SpiMaster *handle, uint32 mixEntryVal)
{
    Ifx_QSPI *qspiSFR = handle->qspi;
    IfxQspi_writeMixedDataTransmitFifo(qspiSFR, mixEntryVal);
}


static inline __attribute__ ((always_inline)) void IfxQspi_SpiMaster_writeTransmitFifo(IfxQspi_SpiMaster_Channel *chHandle, uint32 data)
{
    IfxQspi_SpiMaster *handle = (IfxQspi_SpiMaster *)chHandle->base.driver;
    IfxQspi_writeTransmitFifo(handle->qspi, data);
}
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h" 1
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h" 1
# 19 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 1
# 21 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h" 2
# 29 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h"
typedef struct{
 struct{
  sint16 x_acc;
  sint16 y_acc;
  sint16 z_acc;
  sint16 x_gyro;
  sint16 y_gyro;
  sint16 z_gyro;
 }raw;
 struct{
  float32 x_acc;
  float32 y_acc;
  float32 z_acc;
  float32 x_gyro;
  float32 y_gyro;
  float32 z_gyro;
 }si;
 struct{
  uint8 steering;
  uint8 speed;
 }final;
} QspiIMU_data_t;
# 70 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h"
extern void HLD_Qspi_Mpu9250_writeReg(uint8 address, uint8 value);
extern uint8 HLD_Qspi_Mpu9250_readReg(uint8 address);
extern sint16 HLD_Qspi_Mpu9250_getSint16(uint8 addressLow,uint8 addressHigh);
# 20 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 2
# 32 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h"
typedef struct{
 struct{
        IfxQspi_SpiMaster spiMaster;
        IfxQspi_SpiMaster_Channel spiMasterChannel;
 }drivers;
 uint8 rx[2];
}Qspi_t;
# 57 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h"
extern void HLD_Qspi_init(void);






extern void HLD_Qspi_writeReg(uint8 address, uint8 value);
extern uint8 HLD_Qspi_readReg(uint8 address);
extern sint16 HLD_Qspi_getSint16(uint8 addressLow,uint8 addressHigh);
# 13 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 1 3
# 29 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 2 3
# 30 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 40 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3







# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdio.h" 3

# 14 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/_Utilities/Ifx_Assert.h" 1
# 15 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c" 2

# 1 "0_Src/AppSw/Tricore/HLD/HLD.h" 1
# 132 "0_Src/AppSw/Tricore/HLD/HLD.h"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 1
# 17 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 1
# 43 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h" 1
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR : 20;
    volatile unsigned int TO_W1R0 : 1;
    volatile unsigned int reserved_21 : 11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE : 1;
    volatile unsigned int MSK_WR_RSP : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int MODE_UP_PGR : 1;
    volatile unsigned int BUFF_OVL : 1;
    volatile unsigned int reserved_10 : 2;
    volatile unsigned int SYNC_INPUT_REG : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int BRG_RST : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int BUFF_DPT : 8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR : 5;
    volatile unsigned int FIRST_RSP_PTR : 5;
    volatile unsigned int TRAN_IN_PGR : 5;
    volatile unsigned int ABT_TRAN_PGR : 5;
    volatile unsigned int FBC : 6;
    volatile unsigned int RSP_TRAN_RDY : 6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2 : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK6_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK7_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0 : 2;
    volatile unsigned int EN_CLK1 : 2;
    volatile unsigned int EN_CLK2 : 2;
    volatile unsigned int EN_CLK3 : 2;
    volatile unsigned int EN_CLK4 : 2;
    volatile unsigned int EN_CLK5 : 2;
    volatile unsigned int EN_CLK6 : 2;
    volatile unsigned int EN_CLK7 : 2;
    volatile unsigned int EN_ECLK0 : 2;
    volatile unsigned int EN_ECLK1 : 2;
    volatile unsigned int EN_ECLK2 : 2;
    volatile unsigned int EN_FXCLK : 2;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT : 1;
    volatile unsigned int TO_MODE : 1;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int TO_VAL : 5;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0 : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int SWAP_0 : 1;
    volatile unsigned int O1F_0 : 2;
    volatile unsigned int reserved_6 : 2;
    volatile unsigned int O1SEL_1 : 1;
    volatile unsigned int I1SEL_1 : 1;
    volatile unsigned int SH_EN_1 : 1;
    volatile unsigned int SWAP_1 : 1;
    volatile unsigned int O1F_1 : 2;
    volatile unsigned int reserved_14 : 2;
    volatile unsigned int O1SEL_2 : 1;
    volatile unsigned int I1SEL_2 : 1;
    volatile unsigned int SH_EN_2 : 1;
    volatile unsigned int SWAP_2 : 1;
    volatile unsigned int O1F_2 : 2;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int O1SEL_3 : 1;
    volatile unsigned int I1SEL_3 : 1;
    volatile unsigned int SH_EN_3 : 1;
    volatile unsigned int SWAP_3 : 1;
    volatile unsigned int O1F_3 : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0 : 1;
    volatile unsigned int OC0_0 : 1;
    volatile unsigned int SL0_0 : 1;
    volatile unsigned int DT0_0 : 1;
    volatile unsigned int POL1_0 : 1;
    volatile unsigned int OC1_0 : 1;
    volatile unsigned int SL1_0 : 1;
    volatile unsigned int DT1_0 : 1;
    volatile unsigned int POL0_1 : 1;
    volatile unsigned int OC0_1 : 1;
    volatile unsigned int SL0_1 : 1;
    volatile unsigned int DT0_1 : 1;
    volatile unsigned int POL1_1 : 1;
    volatile unsigned int OC1_1 : 1;
    volatile unsigned int SL1_1 : 1;
    volatile unsigned int DT1_1 : 1;
    volatile unsigned int POL0_2 : 1;
    volatile unsigned int OC0_2 : 1;
    volatile unsigned int SL0_2 : 1;
    volatile unsigned int DT0_2 : 1;
    volatile unsigned int POL1_2 : 1;
    volatile unsigned int OC1_2 : 1;
    volatile unsigned int SL1_2 : 1;
    volatile unsigned int DT1_2 : 1;
    volatile unsigned int POL0_3 : 1;
    volatile unsigned int OC0_3 : 1;
    volatile unsigned int SL0_3 : 1;
    volatile unsigned int DT0_3 : 1;
    volatile unsigned int POL1_3 : 1;
    volatile unsigned int OC1_3 : 1;
    volatile unsigned int SL1_3 : 1;
    volatile unsigned int DT1_3 : 1;
} Ifx_GTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR : 1;
    volatile unsigned int OC0_0_SR : 1;
    volatile unsigned int SL0_0_SR : 1;
    volatile unsigned int DT0_0_SR : 1;
    volatile unsigned int POL1_0_SR : 1;
    volatile unsigned int OC1_0_SR : 1;
    volatile unsigned int SL1_0_SR : 1;
    volatile unsigned int DT1_0_SR : 1;
    volatile unsigned int POL0_1_SR : 1;
    volatile unsigned int OC0_1_SR : 1;
    volatile unsigned int SL0_1_SR : 1;
    volatile unsigned int DT0_1_SR : 1;
    volatile unsigned int POL1_1_SR : 1;
    volatile unsigned int OC1_1_SR : 1;
    volatile unsigned int SL1_1_SR : 1;
    volatile unsigned int DT1_1_SR : 1;
    volatile unsigned int POL0_2_SR : 1;
    volatile unsigned int OC0_2_SR : 1;
    volatile unsigned int SL0_2_SR : 1;
    volatile unsigned int DT0_2_SR : 1;
    volatile unsigned int POL1_2_SR : 1;
    volatile unsigned int OC1_2_SR : 1;
    volatile unsigned int SL1_2_SR : 1;
    volatile unsigned int DT1_2_SR : 1;
    volatile unsigned int POL0_3_SR : 1;
    volatile unsigned int OC0_3_SR : 1;
    volatile unsigned int SL0_3_SR : 1;
    volatile unsigned int DT0_3_SR : 1;
    volatile unsigned int POL1_3_SR : 1;
    volatile unsigned int OC1_3_SR : 1;
    volatile unsigned int SL1_3_SR : 1;
    volatile unsigned int DT1_3_SR : 1;
} Ifx_GTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL : 2;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int UPD_MODE : 3;
    volatile unsigned int reserved_7 : 25;
} Ifx_GTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_DTV_CH_Bits
{
    volatile unsigned int RELRISE : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int RELFALL : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_GTM_DTM_DTV_CH_Bits;


typedef struct _Ifx_GTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int PSU_IN_SEL : 1;
    volatile unsigned int IN_POL : 1;
    volatile unsigned int reserved_18 : 2;
    volatile unsigned int SHIFT_SEL : 2;
    volatile unsigned int reserved_22 : 10;
} Ifx_GTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN : 1;
    volatile unsigned int BRIDGE_MODE_RST : 1;
    volatile unsigned int AEI_IN : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int TOM_OUT_RST : 1;
    volatile unsigned int TOM_TRIG_CHAIN : 3;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int IRQ_MODE_LEVEL : 1;
    volatile unsigned int IRQ_MODE_PULSE : 1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY : 1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE : 1;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int reserved_0 : 4;
    volatile unsigned int AEI_IRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ : 1;
    volatile unsigned int TIM0_CH1_IRQ : 1;
    volatile unsigned int TIM0_CH2_IRQ : 1;
    volatile unsigned int TIM0_CH3_IRQ : 1;
    volatile unsigned int TIM0_CH4_IRQ : 1;
    volatile unsigned int TIM0_CH5_IRQ : 1;
    volatile unsigned int TIM0_CH6_IRQ : 1;
    volatile unsigned int TIM0_CH7_IRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ : 1;
    volatile unsigned int TOM0_CH1_IRQ : 1;
    volatile unsigned int TOM0_CH2_IRQ : 1;
    volatile unsigned int TOM0_CH3_IRQ : 1;
    volatile unsigned int TOM0_CH4_IRQ : 1;
    volatile unsigned int TOM0_CH5_IRQ : 1;
    volatile unsigned int TOM0_CH6_IRQ : 1;
    volatile unsigned int TOM0_CH7_IRQ : 1;
    volatile unsigned int TOM0_CH8_IRQ : 1;
    volatile unsigned int TOM0_CH9_IRQ : 1;
    volatile unsigned int TOM0_CH10_IRQ : 1;
    volatile unsigned int TOM0_CH11_IRQ : 1;
    volatile unsigned int TOM0_CH12_IRQ : 1;
    volatile unsigned int TOM0_CH13_IRQ : 1;
    volatile unsigned int TOM0_CH14_IRQ : 1;
    volatile unsigned int TOM0_CH15_IRQ : 1;
    volatile unsigned int TOM1_CH0_IRQ : 1;
    volatile unsigned int TOM1_CH1_IRQ : 1;
    volatile unsigned int TOM1_CH2_IRQ : 1;
    volatile unsigned int TOM1_CH3_IRQ : 1;
    volatile unsigned int TOM1_CH4_IRQ : 1;
    volatile unsigned int TOM1_CH5_IRQ : 1;
    volatile unsigned int TOM1_CH6_IRQ : 1;
    volatile unsigned int TOM1_CH7_IRQ : 1;
    volatile unsigned int TOM1_CH8_IRQ : 1;
    volatile unsigned int TOM1_CH9_IRQ : 1;
    volatile unsigned int TOM1_CH10_IRQ : 1;
    volatile unsigned int TOM1_CH11_IRQ : 1;
    volatile unsigned int TOM1_CH12_IRQ : 1;
    volatile unsigned int TOM1_CH13_IRQ : 1;
    volatile unsigned int TOM1_CH14_IRQ : 1;
    volatile unsigned int TOM1_CH15_IRQ : 1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ : 1;
    volatile unsigned int TIM0_CH1_EIRQ : 1;
    volatile unsigned int TIM0_CH2_EIRQ : 1;
    volatile unsigned int TIM0_CH3_EIRQ : 1;
    volatile unsigned int TIM0_CH4_EIRQ : 1;
    volatile unsigned int TIM0_CH5_EIRQ : 1;
    volatile unsigned int TIM0_CH6_EIRQ : 1;
    volatile unsigned int TIM0_CH7_EIRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ : 1;
    volatile unsigned int reserved_1 : 3;
    volatile unsigned int TIM0_EIRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL : 4;
    volatile unsigned int CH1SEL : 4;
    volatile unsigned int CH2SEL : 4;
    volatile unsigned int CH3SEL : 4;
    volatile unsigned int CH4SEL : 4;
    volatile unsigned int CH5SEL : 4;
    volatile unsigned int CH6SEL : 4;
    volatile unsigned int CH7SEL : 4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT : 1;
    volatile unsigned int TRG_AEI_USP_ADDR : 1;
    volatile unsigned int TRG_AEI_IM_ADDR : 1;
    volatile unsigned int TRG_AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT : 1;
    volatile unsigned int AEI_USP_ADDR : 1;
    volatile unsigned int AEI_IM_ADDR : 1;
    volatile unsigned int AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0 : 24;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN : 1;
    volatile unsigned int DREN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV : 27;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int CM : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int B0LMI : 4;
    volatile unsigned int B0HMT : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int B0HMI : 4;
    volatile unsigned int B1LMT : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int B1LMI : 4;
    volatile unsigned int B1HMT : 3;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int B1HMI : 4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0 : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OTGB1 : 4;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int OTGB2 : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP : 8;
    volatile unsigned int NO : 4;
    volatile unsigned int MINOR : 4;
    volatile unsigned int MAJOR : 4;
    volatile unsigned int DEV_CODE0 : 4;
    volatile unsigned int DEV_CODE1 : 4;
    volatile unsigned int DEV_CODE2 : 4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE : 27;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0 : 2;
    volatile unsigned int ENDIS_CH1 : 2;
    volatile unsigned int ENDIS_CH2 : 2;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0 : 1;
    volatile unsigned int SRC_CH1 : 1;
    volatile unsigned int SRC_CH2 : 1;
    volatile unsigned int SRC_CH3 : 1;
    volatile unsigned int SRC_CH4 : 1;
    volatile unsigned int SRC_CH5 : 1;
    volatile unsigned int SRC_CH6 : 1;
    volatile unsigned int SRC_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN : 1;
    volatile unsigned int TIM_MODE : 3;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int CICTRL : 1;
    volatile unsigned int TBU0x_SEL : 1;
    volatile unsigned int GPR0_SEL : 2;
    volatile unsigned int GPR1_SEL : 2;
    volatile unsigned int CNTS_SEL : 1;
    volatile unsigned int DSL : 1;
    volatile unsigned int ISL : 1;
    volatile unsigned int ECNT_RESET : 1;
    volatile unsigned int FLT_EN : 1;
    volatile unsigned int FLT_CNT_FRQ : 2;
    volatile unsigned int EXT_CAP_EN : 1;
    volatile unsigned int FLT_MODE_RE : 1;
    volatile unsigned int FLT_CTR_RE : 1;
    volatile unsigned int FLT_MODE_FE : 1;
    volatile unsigned int FLT_CTR_FE : 1;
    volatile unsigned int CLK_SEL : 3;
    volatile unsigned int FR_ECNT_OFL : 1;
    volatile unsigned int EGPR0_SEL : 1;
    volatile unsigned int EGPR1_SEL : 1;
    volatile unsigned int TOCTRL : 2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN : 1;
    volatile unsigned int ECNTOFL_EIRQ_EN : 1;
    volatile unsigned int CNTOFL_EIRQ_EN : 1;
    volatile unsigned int GPRzOFL_EIRQ_EN : 1;
    volatile unsigned int TODET_EIRQ_EN : 1;
    volatile unsigned int GLITCHDET_EIRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN : 1;
    volatile unsigned int ECNTOFL_IRQ_EN : 1;
    volatile unsigned int CNTOFL_IRQ_EN : 1;
    volatile unsigned int GPRzOFL_IRQ_EN : 1;
    volatile unsigned int TODET_IRQ_EN : 1;
    volatile unsigned int GLITCHDET_IRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL : 1;
    volatile unsigned int TRG_ECNTOFL : 1;
    volatile unsigned int TRG_CNTOFL : 1;
    volatile unsigned int TRG_GPRzOFL : 1;
    volatile unsigned int TRG_TODET : 1;
    volatile unsigned int TRG_GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL : 1;
    volatile unsigned int ECNTOFL : 1;
    volatile unsigned int CNTOFL : 1;
    volatile unsigned int GPRzOFL : 1;
    volatile unsigned int TODET : 1;
    volatile unsigned int GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV : 8;
    volatile unsigned int reserved_8 : 20;
    volatile unsigned int TCS : 3;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0 : 2;
    volatile unsigned int MODE_0 : 2;
    volatile unsigned int VAL_1 : 2;
    volatile unsigned int MODE_1 : 2;
    volatile unsigned int VAL_2 : 2;
    volatile unsigned int MODE_2 : 2;
    volatile unsigned int VAL_3 : 2;
    volatile unsigned int MODE_3 : 2;
    volatile unsigned int VAL_4 : 2;
    volatile unsigned int MODE_4 : 2;
    volatile unsigned int VAL_5 : 2;
    volatile unsigned int MODE_5 : 2;
    volatile unsigned int VAL_6 : 2;
    volatile unsigned int MODE_6 : 2;
    volatile unsigned int VAL_7 : 2;
    volatile unsigned int MODE_7 : 2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT : 8;
    volatile unsigned int F_IN : 8;
    volatile unsigned int TIM_IN : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0 : 11;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int OSM_TRIG : 1;
    volatile unsigned int EXT_TRIG : 1;
    volatile unsigned int EXTTRIGOUT : 1;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int BITREV : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0 : 1;
    volatile unsigned int TRG_CCU1TC0 : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_DTM_CH_CTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_DTM_CH_CTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_DTM_CH_CTRL2_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CTRL_Bits B;
} Ifx_GTM_DTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_DTV_CH_Bits B;
} Ifx_GTM_DTM_DTV_CH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_DTM_PS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;
# 2140 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[8];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
    unsigned char reserved_4[28];
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[52];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 2239 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DTM
{
    Ifx_GTM_DTM_CTRL CTRL;
    Ifx_GTM_DTM_CH_CTRL1 CH_CTRL1;
    Ifx_GTM_DTM_CH_CTRL2 CH_CTRL2;
    Ifx_GTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
    Ifx_GTM_DTM_PS_CTRL PS_CTRL;
    Ifx_GTM_DTM_DTV_CH DTV_CH[4];
} Ifx_GTM_DTM;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    unsigned char reserved_4[4];
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    unsigned char reserved_C[12];
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    unsigned char reserved_1C[20];
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    unsigned char reserved_34[4];
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[1];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_40[80];
    Ifx_GTM_INOUTSEL_CAN CAN;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_INP_VAL INP_VAL;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F4[12];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_174[12];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F4[12];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_274[12];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F4[12];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_374[12];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F4[12];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 2388 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    Ifx_GTM_HW_CONF HW_CONF;
    unsigned char reserved_28[8];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[1];
    unsigned char reserved_44[188];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[484];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[696];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_63C[2500];
    Ifx_GTM_TIM TIM[1];
    unsigned char reserved_1400[27648];
    Ifx_GTM_TOM TOM[2];
    unsigned char reserved_9000[41024];
    Ifx_GTM_DTM DTM1;
    unsigned char reserved_13064[220];
    Ifx_GTM_DTM DTM5;
    unsigned char reserved_13164[576412];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDA4[12];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    unsigned char reserved_9FDB4[4];
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    unsigned char reserved_9FDBC[8];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    unsigned char reserved_9FDD8[4];
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    unsigned char reserved_9FE00[512];
} Ifx_GTM;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_reg.h" 2
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h" 2
# 174 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
typedef volatile struct IfxGtm_Tom_TGC Ifx_GTM_TOM_TGC;
# 184 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
typedef enum
{
    IfxGtm_Dpll_SubInc_1 = 0,
    IfxGtm_Dpll_SubInc_2
} IfxGtm_Dpll_SubInc;



typedef enum
{
    IfxGtm_FeatureControl_disabled = 0,
    IfxGtm_FeatureControl_disable = 1,
    IfxGtm_FeatureControl_enable = 2,
    IfxGtm_FeatureControl_enabled = 3
} IfxGtm_FeatureControl;



typedef enum
{
    IfxGtm_Tim_0
} IfxGtm_Tim;



typedef enum
{
    IfxGtm_Tim_Ch_0,
    IfxGtm_Tim_Ch_1,
    IfxGtm_Tim_Ch_2,
    IfxGtm_Tim_Ch_3,
    IfxGtm_Tim_Ch_4,
    IfxGtm_Tim_Ch_5,
    IfxGtm_Tim_Ch_6,
    IfxGtm_Tim_Ch_7
} IfxGtm_Tim_Ch;



typedef enum
{
    IfxGtm_Tom_0,
    IfxGtm_Tom_1
} IfxGtm_Tom;



typedef enum
{
    IfxGtm_Tom_Ch_none = -1,
    IfxGtm_Tom_Ch_0,
    IfxGtm_Tom_Ch_1,
    IfxGtm_Tom_Ch_2,
    IfxGtm_Tom_Ch_3,
    IfxGtm_Tom_Ch_4,
    IfxGtm_Tom_Ch_5,
    IfxGtm_Tom_Ch_6,
    IfxGtm_Tom_Ch_7,
    IfxGtm_Tom_Ch_8,
    IfxGtm_Tom_Ch_9,
    IfxGtm_Tom_Ch_10,
    IfxGtm_Tom_Ch_11,
    IfxGtm_Tom_Ch_12,
    IfxGtm_Tom_Ch_13,
    IfxGtm_Tom_Ch_14,
    IfxGtm_Tom_Ch_15
} IfxGtm_Tom_Ch;



typedef enum
{
    IfxGtm_Tom_Tgc_0,
    IfxGtm_Tom_Tgc_1
} IfxGtm_Tom_Tgc;
# 270 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxGtm_cfg.h"
struct IfxGtm_Tom_TGC
{
    Ifx_GTM_TOM_TGC0_GLB_CTRL GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG INT_TRIG;
    Ifx_GTM_TOM_CH xxxCH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT OUTEN_STAT;
};
# 44 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h" 1
# 47 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
typedef enum
{
    IfxGtm_IrqMode_level = 0,
    IfxGtm_IrqMode_pulse = 1,
    IfxGtm_IrqMode_pulseNotify = 2,
    IfxGtm_IrqMode_singlePulse = 3
} IfxGtm_IrqMode;



typedef enum
{
    IfxGtm_SuspendMode_none = 0,
    IfxGtm_SuspendMode_hard = 1,
    IfxGtm_SuspendMode_soft = 2
} IfxGtm_SuspendMode;
# 77 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm);







static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode);
# 103 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
extern void IfxGtm_disable(Ifx_GTM *gtm);





extern void IfxGtm_enable(Ifx_GTM *gtm);
# 121 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm.h"
extern float32 IfxGtm_getSysClkFrequency(void);





static inline __attribute__ ((always_inline)) boolean IfxGtm_isEnabled(Ifx_GTM *gtm)
{
    return gtm->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_isModuleSuspended(Ifx_GTM *gtm)
{
    Ifx_GTM_OCS ocs;


    ocs.U = gtm->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxGtm_setSuspendMode(Ifx_GTM *gtm, IfxGtm_SuspendMode mode)
{
    Ifx_GTM_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;

    gtm->OCS.U = ocs.U;
}
# 45 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h" 1
# 49 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
typedef enum
{
    IfxGtm_Tbu_Ts_0,
    IfxGtm_Tbu_Ts_1,
    IfxGtm_Tbu_Ts_2
} IfxGtm_Tbu_Ts;
# 70 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);
# 81 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tbu.h"
extern float32 IfxGtm_Tbu_getClockFrequency(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel);







static inline __attribute__ ((always_inline)) void IfxGtm_Tbu_enableChannel(Ifx_GTM *gtm, IfxGtm_Tbu_Ts channel)
{
    uint32 shift = channel * 2;

    __ldmst_c(&gtm->TBU.CHEN.U, (3U << shift), (IfxGtm_FeatureControl_enable << shift));
}
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 2
# 64 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
typedef enum
{
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0 = 0,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1 = 1,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk2 = 2,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk3 = 3,
    IfxGtm_Tom_Ch_ClkSrc_cmuFxclk4 = 4,
    IfxGtm_Tom_Ch_ClkSrc_noClock = 5
} IfxGtm_Tom_Ch_ClkSrc;



typedef enum
{
    IfxGtm_Tom_Ch_OutputTrigger_forward = 0,
    IfxGtm_Tom_Ch_OutputTrigger_generate = 1
} IfxGtm_Tom_Ch_OutputTrigger;



typedef enum
{
    IfxGtm_Tom_Ch_ResetEvent_onCm0 = 0,
    IfxGtm_Tom_Ch_ResetEvent_onTrigger = 1
} IfxGtm_Tom_Ch_ResetEvent;
# 104 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);
# 115 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_clearOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_clearZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern float32 IfxGtm_Tom_Ch_getClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern IfxGtm_Tom_Ch_ClkSrc IfxGtm_Tom_Ch_getClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareOnePointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern uint32 IfxGtm_Tom_Ch_getCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern volatile uint32 *IfxGtm_Tom_Ch_getCompareZeroPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_getOutputLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern volatile Ifx_SRC_SRCR *IfxGtm_Tom_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tom tom, IfxGtm_Tom_Ch channel);






extern Ifx_GTM_TOM_TGC *IfxGtm_Tom_Ch_getTgcPointer(Ifx_GTM_TOM *tom, uint32 tgcIndex);






extern volatile uint32 *IfxGtm_Tom_Ch_getTimerPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isOneNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern boolean IfxGtm_Tom_Ch_isZeroNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);






extern void IfxGtm_Tom_Ch_raiseInterruptZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel);







extern void IfxGtm_Tom_Ch_setClockSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ClkSrc clock);
# 239 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompare(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOne(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareOne);







extern void IfxGtm_Tom_Ch_setCompareOneShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowOne);
# 264 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setCompareShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero, uint32 shadowOne);







extern void IfxGtm_Tom_Ch_setCompareZero(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 compareZero);







extern void IfxGtm_Tom_Ch_setCompareZeroShadow(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 shadowZero);







extern void IfxGtm_Tom_Ch_setCounterValue(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, uint32 value);
# 298 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Ch_setNotification(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_IrqMode mode, boolean interruptOnCompareZero, boolean interruptOnCompareOne);







extern void IfxGtm_Tom_Ch_setOneShotMode(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setPcm(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, boolean enabled);







extern void IfxGtm_Tom_Ch_setResetSource(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_ResetEvent event);







extern void IfxGtm_Tom_Ch_setSignalLevel(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, Ifx_ActiveState activeState);







extern void IfxGtm_Tom_Ch_setTriggerOutput(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel, IfxGtm_Tom_Ch_OutputTrigger trigger);
# 354 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control);
# 366 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern uint32 IfxGtm_Tom_Tgc_buildFeature(uint16 enableMask, uint16 disableMask, uint8 bitfieldOffset);







extern uint32 IfxGtm_Tom_Tgc_buildFeatureForChannel(IfxGtm_Tom_Ch channel, boolean enabled, uint8 bitfieldOffset);
# 383 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannel(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);
# 392 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelOutput(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled);
# 409 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannels(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);
# 418 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_enableChannelsOutput(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, boolean immediate);







extern void IfxGtm_Tom_Tgc_enableChannelsTrigger(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);







extern void IfxGtm_Tom_Tgc_enableChannelsUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask);






extern void IfxGtm_Tom_Tgc_enableTimeTrigger(Ifx_GTM_TOM_TGC *tgc, boolean enabled);






extern void IfxGtm_Tom_Tgc_resetChannels(Ifx_GTM_TOM_TGC *tgc, uint32 resetMask);
# 457 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelForceUpdate(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tom_Ch channel, boolean enabled, boolean resetEnabled);
# 467 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h"
extern void IfxGtm_Tom_Tgc_setChannelsForceUpdate(Ifx_GTM_TOM_TGC *tgc, uint16 enableMask, uint16 disableMask, uint16 resetEnableMask, uint16 resetDisableMask);







extern void IfxGtm_Tom_Tgc_setTimeTrigger(Ifx_GTM_TOM_TGC *tgc, IfxGtm_Tbu_Ts base, uint32 value);





extern void IfxGtm_Tom_Tgc_trigger(Ifx_GTM_TOM_TGC *tgc);







static inline __attribute__ ((always_inline)) Ifx_GTM_TOM_CH *IfxGtm_Tom_Ch_getChannelPointer(Ifx_GTM_TOM *tom, IfxGtm_Tom_Ch channel)
{
    return (Ifx_GTM_TOM_CH *)((uint32)&tom->CH0.CTRL.U + 0x40 * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tom_Tgc_writeGlobalControl(Ifx_GTM_TOM_TGC *tgc, uint32 control)
{
    tgc->GLB_CTRL.U = control;
}
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 1
# 116 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 1
# 34 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tom.h" 1
# 35 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 1
# 44 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h" 1
# 47 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
typedef enum
{
    IfxGtm_Cmu_Clk_0 = 0,
    IfxGtm_Cmu_Clk_1,
    IfxGtm_Cmu_Clk_2,
    IfxGtm_Cmu_Clk_3,
    IfxGtm_Cmu_Clk_4,
    IfxGtm_Cmu_Clk_5,
    IfxGtm_Cmu_Clk_6,
    IfxGtm_Cmu_Clk_7
} IfxGtm_Cmu_Clk;

typedef enum
{
    IfxGtm_Cmu_Eclk_0 = 0,
    IfxGtm_Cmu_Eclk_1,
    IfxGtm_Cmu_Eclk_2
} IfxGtm_Cmu_Eclk;

typedef enum
{
    IfxGtm_Cmu_Fxclk_0 = 0,
    IfxGtm_Cmu_Fxclk_1,
    IfxGtm_Cmu_Fxclk_2,
    IfxGtm_Cmu_Fxclk_3,
    IfxGtm_Cmu_Fxclk_4
} IfxGtm_Cmu_Fxclk;



typedef enum
{
    IfxGtm_Cmu_Tim_Filter_Clk_0,
    IfxGtm_Cmu_Tim_Filter_Clk_1,
    IfxGtm_Cmu_Tim_Filter_Clk_6,
    IfxGtm_Cmu_Tim_Filter_Clk_7
} IfxGtm_Cmu_Tim_Filter_Clk;
# 102 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_enableClocks(Ifx_GTM *gtm, uint32 clkMask);







extern float32 IfxGtm_Cmu_getClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, boolean assumeEnabled);







extern float32 IfxGtm_Cmu_getFxClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Fxclk clkIndex, boolean assumeEnabled);





extern float32 IfxGtm_Cmu_getGclkFrequency(Ifx_GTM *gtm);






extern float32 IfxGtm_Cmu_getModuleFrequency(Ifx_GTM *gtm);






extern boolean IfxGtm_Cmu_isClkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex);






extern boolean IfxGtm_Cmu_isEclkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex);





extern boolean IfxGtm_Cmu_isFxClockEnabled(Ifx_GTM *gtm);
# 168 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h"
extern void IfxGtm_Cmu_selectClkInput(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean useGlobal);







extern void IfxGtm_Cmu_setClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, float32 frequency);







extern void IfxGtm_Cmu_setEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, float32 frequency);






extern void IfxGtm_Cmu_setGclkFrequency(Ifx_GTM *gtm, float32 frequency);
# 45 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGtm_bf.h" 1
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 2







typedef enum
{
    IfxGtm_Tim_CntsSel_cntReg = 0,
    IfxGtm_Tim_CntsSel_tbuTs0
} IfxGtm_Tim_CntsSel;



typedef enum
{
    IfxGtm_Tim_FilterCounter_upDown = 0,
    IfxGtm_Tim_FilterCounter_hold
} IfxGtm_Tim_FilterCounter;



typedef enum
{
    IfxGtm_Tim_FilterMode_immediateEdgePropagation = 0,
    IfxGtm_Tim_FilterMode_individualDeglitchTime
} IfxGtm_Tim_FilterMode;

typedef enum
{
    IfxGtm_Tim_GprSel_tbuTs0 = 0,
    IfxGtm_Tim_GprSel_tbuTs1,
    IfxGtm_Tim_GprSel_tbuTs2,
    IfxGtm_Tim_GprSel_cnts
} IfxGtm_Tim_GprSel;

typedef enum
{
    IfxGtm_Tim_Input_currentChannel = 0,
    IfxGtm_Tim_Input_adjacentChannel
} IfxGtm_Tim_Input;

typedef enum
{
    IfxGtm_Tim_Mode_pwmMeasurement = 0,
    IfxGtm_Tim_Mode_pulseIntegration,
    IfxGtm_Tim_Mode_inputEvent,
    IfxGtm_Tim_Mode_inputPrescaler,
    IfxGtm_Tim_Mode_bitCompression
} IfxGtm_Tim_Mode;



typedef enum
{
    IfxGtm_Tim_Timeout_disabled,
    IfxGtm_Tim_Timeout_risingEdge,
    IfxGtm_Tim_Timeout_fallingEdge,
    IfxGtm_Tim_Timeout_bothEdge
} IfxGtm_Tim_Timeout;
# 121 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel);







static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel);






static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);






static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel);
# 208 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern float32 IfxGtm_Tim_Ch_getCaptureClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getCaptureClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getFilterClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Tim_Filter_Clk IfxGtm_Tim_Ch_getFilterClockSource(Ifx_GTM_TIM_CH *channel);






extern float32 IfxGtm_Tim_Ch_getTimeoutClockFrequency(Ifx_GTM *gtm, Ifx_GTM_TIM_CH *channel);





extern IfxGtm_Cmu_Clk IfxGtm_Tim_Ch_getTimeoutClockSource(Ifx_GTM_TIM_CH *channel);
# 250 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h"
extern void IfxGtm_Tim_Ch_setChannelNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnNewVal, boolean irqOnCntOverflow, boolean irqOnEcntOverflow, boolean irqOnDatalost);






extern void IfxGtm_Tim_Ch_setClockSource(Ifx_GTM_TIM_CH *channel, IfxGtm_Cmu_Clk clock);






extern void IfxGtm_Tim_Ch_setFilterNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnGlitch);






extern void IfxGtm_Tim_Ch_setNotificationMode(Ifx_GTM_TIM_CH *channel, IfxGtm_IrqMode mode);






extern void IfxGtm_Tim_Ch_setTimeoutNotification(Ifx_GTM_TIM_CH *channel, boolean irqOnTimeout);







static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (2u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (3u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (1u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (5u);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_clearNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    channel->IRQ_NOTIFY.U = 0x1 << (0u);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxGtm_Tim_Ch_getSrcPointer(Ifx_GTM *gtm, IfxGtm_Tim tim, IfxGtm_Tim_Ch channel)
{
    return &(*(Ifx_SRC *)0xF0038000u).GTM.GTM[0].TIM[tim][channel];
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isCntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.CNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isDataLostEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GPRzOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isEcntOverflowEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.ECNTOFL == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isGlitchEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.GLITCHDET == 1;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_Ch_isNewValueEvent(Ifx_GTM_TIM_CH *channel)
{
    return channel->IRQ_NOTIFY.B.NEWVAL == 1;
}


static inline __attribute__ ((always_inline)) Ifx_GTM_TIM_CH *IfxGtm_Tim_getChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    return (Ifx_GTM_TIM_CH *)((uint32)&tim->CH0.GPR0.U + ((uint32)&tim->CH1 - (uint32)&tim->CH0) * channel);
}


static inline __attribute__ ((always_inline)) void IfxGtm_Tim_Ch_resetChannel(Ifx_GTM_TIM *tim, IfxGtm_Tim_Ch channel)
{
    tim->RST.U |= (uint32)1 << (uint32)channel;
}
# 36 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGtm_PinMap.h" 2





typedef enum
{
    IfxGtm_ChXSel_a,
    IfxGtm_ChXSel_b,
    IfxGtm_ChXSel_c,
    IfxGtm_ChXSel_d,

    IfxGtm_ChXSel_e,
    IfxGtm_ChXSel_f,
    IfxGtm_ChXSel_g,
    IfxGtm_ChXSel_h,

    IfxGtm_ChXSel_i,
    IfxGtm_ChXSel_j,
    IfxGtm_ChXSel_k,
    IfxGtm_ChXSel_l,

    IfxGtm_ChXSel_m,
    IfxGtm_ChXSel_n,
    IfxGtm_ChXSel_o,
    IfxGtm_ChXSel_p
} IfxGtm_ChXSel;


typedef enum
{
    IfxGtm_ToutSel_a,
    IfxGtm_ToutSel_b,
    IfxGtm_ToutSel_c,
    IfxGtm_ToutSel_d,
    IfxGtm_ToutSel_e
} IfxGtm_ToutSel;


typedef const struct
{
    IfxGtm_Tim tim;
    IfxGtm_Tim_Ch channel;
    IfxPort_Pin pin;
    IfxGtm_ChXSel select;
} IfxGtm_Tim_TinMap;


typedef const struct
{
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch channel;
    IfxGtm_ToutSel toutSel;
    uint32 toutn;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Tom_ToutMap;


typedef const struct
{
    Ifx_GTM* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxGtm_Clk_Out;


typedef IfxGtm_Tom_ToutMap *IfxGtm_Tom_ToutMapP;

extern void IfxGtm_PinMap_setTimTin(IfxGtm_Tim_TinMap *config, IfxPort_InputMode inputMode);
extern void IfxGtm_PinMap_setTomTout(IfxGtm_Tom_ToutMap *config, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);

extern IfxGtm_Clk_Out IfxGtm_CLK0_P23_1_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK1_P33_10_OUT;
extern IfxGtm_Clk_Out IfxGtm_CLK2_P11_12_OUT;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN0_P02_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN18_P00_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN26_P33_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN32_P33_10_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN34_P33_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN48_P22_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN53_P21_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN77_P15_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN85_P14_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN87_P14_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN8_P02_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_0_TIN9_P00_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN103_P10_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN10_P00_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN11_P00_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN1_P02_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN27_P33_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN31_P33_9_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN47_P22_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN54_P21_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN78_P15_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_1_TIN86_P14_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN104_P10_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN107_P10_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN28_P33_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN2_P02_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN33_P33_11_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN55_P21_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_2_TIN79_P15_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN105_P10_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN108_P10_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN21_P00_12_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN29_P33_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN3_P02_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN49_P22_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN56_P21_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_3_TIN80_P14_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN22_P33_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN30_P33_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN4_P02_4_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN50_P22_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN57_P21_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN61_P20_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_4_TIN81_P14_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN23_P33_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN58_P21_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN5_P02_5_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_5_TIN82_P14_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN24_P33_2_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN42_P23_1_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN59_P20_0_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN62_P20_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN6_P02_6_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_6_TIN83_P14_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN25_P33_3_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN63_P20_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN64_P20_8_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN7_P02_7_IN;
extern IfxGtm_Tim_TinMap IfxGtm_TIM0_7_TIN84_P14_4_IN;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_0_TOUT87_P14_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_10_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_11_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_12_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_13_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_14_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_2_TOUT88_P14_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT110_P11_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_4_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_5_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT42_P23_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_6_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT111_P22_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_8_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM0_9_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT18_P00_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT26_P33_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT77_P15_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT85_P14_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_0_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT104_P10_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT107_P10_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_10_TOUT62_P20_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT105_P10_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT108_P10_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_11_TOUT63_P20_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT112_P34_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT34_P33_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_12_TOUT61_P20_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT113_P34_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_13_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT114_P34_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_14_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT115_P34_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_15_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT47_P22_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT78_P15_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT86_P14_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_1_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT33_P33_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT79_P15_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_2_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT21_P00_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_3_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT10_P00_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT110_P11_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT1_P02_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT22_P33_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT53_P21_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT54_P21_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT57_P21_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT65_P20_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT72_P15_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT8_P02_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT94_P13_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT95_P11_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_4_TOUT9_P00_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT11_P00_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT12_P00_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT23_P33_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT27_P33_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT28_P33_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT2_P02_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT3_P02_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT55_P21_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT56_P21_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT58_P21_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT66_P20_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT67_P20_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT73_P15_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT76_P15_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT96_P11_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT97_P11_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_5_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT13_P00_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT14_P00_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT24_P33_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT29_P33_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT30_P33_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT48_P22_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT49_P22_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT4_P02_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT59_P20_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT5_P02_5_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT68_P20_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT69_P20_13_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT74_P15_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT80_P14_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT82_P14_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT83_P14_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT91_P13_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT98_P11_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_6_TOUT99_P11_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT100_P11_11_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT101_P11_12_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT111_P22_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT15_P00_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT16_P00_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT17_P00_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT25_P33_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT31_P33_9_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT32_P33_10_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT50_P22_3_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT64_P20_8_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT6_P02_6_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT70_P20_14_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT71_P15_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT75_P15_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT7_P02_7_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT81_P14_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT84_P14_4_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT92_P13_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_7_TOUT93_P13_2_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_8_TOUT0_P02_0_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT103_P10_1_OUT;
extern IfxGtm_Tom_ToutMap IfxGtm_TOM1_9_TOUT1_P02_1_OUT;
# 117 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Cmu.h" 1
# 119 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h" 1
# 52 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
# 1 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h" 1
# 97 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 53 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h" 2

typedef enum
{
    IfxStdIf_Timer_Output_disabled,
    IfxStdIf_Timer_Output_enabled







} IfxStdIf_Timer_OutputEvent;


typedef enum
{
    IfxStdIf_Timer_CountDir_up,
    IfxStdIf_Timer_CountDir_upAndDown,
    IfxStdIf_Timer_CountDir_down
} IfxStdIf_Timer_CountDir;


typedef struct IfxStdIf_Timer_ IfxStdIf_Timer;





typedef float32 (*IfxStdIf_Timer_GetFrequency)(IfxStdIf_InterfaceDriver driver);





typedef Ifx_TimerValue (*IfxStdIf_Timer_GetPeriod)(IfxStdIf_InterfaceDriver driver);





typedef float32 (*IfxStdIf_Timer_GetResolution)(IfxStdIf_InterfaceDriver driver);





typedef Ifx_TimerValue (*IfxStdIf_Timer_GetTrigger)(IfxStdIf_InterfaceDriver driver);







typedef boolean (*IfxStdIf_Timer_SetFrequency)(IfxStdIf_InterfaceDriver driver, float32 frequency);





typedef void (*IfxStdIf_Timer_UpdateInputFrequency)(IfxStdIf_InterfaceDriver driver);
# 135 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_ApplyUpdate)(IfxStdIf_InterfaceDriver driver);
# 152 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_DisableUpdate)(IfxStdIf_InterfaceDriver driver);





typedef float32 (*IfxStdIf_Timer_GetInputFrequency)(IfxStdIf_InterfaceDriver driver);
# 167 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_Run)(IfxStdIf_InterfaceDriver driver);
# 177 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef boolean (*IfxStdIf_Timer_SetPeriod)(IfxStdIf_InterfaceDriver driver, Ifx_TimerValue period);
# 186 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_SetSingleMode)(IfxStdIf_InterfaceDriver driver, boolean enabled);
# 198 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
typedef void (*IfxStdIf_Timer_SetTrigger)(IfxStdIf_InterfaceDriver driver, Ifx_TimerValue triggerPoint);





typedef void (*IfxStdIf_Timer_Stop)(IfxStdIf_InterfaceDriver driver);





typedef boolean (*IfxStdIf_Timer_AckTimerIrq)(IfxStdIf_InterfaceDriver driver);





typedef boolean (*IfxStdIf_Timer_AckTriggerIrq)(IfxStdIf_InterfaceDriver driver);



struct IfxStdIf_Timer_
{
    IfxStdIf_InterfaceDriver driver;
    IfxStdIf_Timer_GetFrequency getFrequency;
    IfxStdIf_Timer_GetPeriod getPeriod;
    IfxStdIf_Timer_GetResolution getResolution;
    IfxStdIf_Timer_GetTrigger getTrigger;
    IfxStdIf_Timer_SetFrequency setFrequency;
    IfxStdIf_Timer_UpdateInputFrequency updateInputFrequency;
    IfxStdIf_Timer_ApplyUpdate applyUpdate;
    IfxStdIf_Timer_DisableUpdate disableUpdate;
    IfxStdIf_Timer_GetInputFrequency getInputFrequency;
    IfxStdIf_Timer_Run run;
    IfxStdIf_Timer_SetPeriod setPeriod;
    IfxStdIf_Timer_SetSingleMode setSingleMode;
    IfxStdIf_Timer_SetTrigger setTrigger;
    IfxStdIf_Timer_Stop stop;
    IfxStdIf_Timer_AckTimerIrq ackTimerIrq;
    IfxStdIf_Timer_AckTriggerIrq ackTriggerIrq;
};


typedef struct
{
    boolean enabled;
    Ifx_TimerValue triggerPoint;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver outputDriver;
    boolean risingEdgeAtPeriod;
    boolean outputEnabled;
} IfxStdIf_Timer_TrigConfig;


typedef struct
{
    float32 frequency;
    Ifx_Priority isrPriority;
    IfxSrc_Tos isrProvider;
    float32 minResolution;
    IfxStdIf_Timer_TrigConfig trigger;
    IfxStdIf_Timer_CountDir countDir;
    float32 startOffset;
} IfxStdIf_Timer_Config;







static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getFrequency(IfxStdIf_Timer *stdIf)
{
    return stdIf->getFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_getPeriod(IfxStdIf_Timer *stdIf)
{
    return stdIf->getPeriod(stdIf->driver);
}





static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_getTrigger(IfxStdIf_Timer *stdIf)
{
    return stdIf->getTrigger(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getResolution(IfxStdIf_Timer *stdIf)
{
    return stdIf->getResolution(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_setFrequency(IfxStdIf_Timer *stdIf, float32 frequency)
{
    return stdIf->setFrequency(stdIf->driver, frequency);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_updateInputFrequency(IfxStdIf_Timer *stdIf)
{
    stdIf->updateInputFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_applyUpdate(IfxStdIf_Timer *stdIf)
{
    stdIf->applyUpdate(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_disableUpdate(IfxStdIf_Timer *stdIf)
{
    stdIf->disableUpdate(stdIf->driver);
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getInputFrequency(IfxStdIf_Timer *stdIf)
{
    return stdIf->getInputFrequency(stdIf->driver);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_run(IfxStdIf_Timer *stdIf)
{
    stdIf->run(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_setPeriod(IfxStdIf_Timer *stdIf, Ifx_TimerValue period)
{
    return stdIf->setPeriod(stdIf->driver, period);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_setSingleMode(IfxStdIf_Timer *stdIf, boolean enabled)
{
    stdIf->setSingleMode(stdIf->driver, enabled);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_setTrigger(IfxStdIf_Timer *stdIf, Ifx_TimerValue triggerPoint)
{
    stdIf->setTrigger(stdIf->driver, triggerPoint);
}





static inline __attribute__ ((always_inline)) void IfxStdIf_Timer_stop(IfxStdIf_Timer *stdIf)
{
    stdIf->stop(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_ackTimerIrq(IfxStdIf_Timer *stdIf)
{
    return stdIf->ackTimerIrq(stdIf->driver);
}





static inline __attribute__ ((always_inline)) boolean IfxStdIf_Timer_ackTriggerIrq(IfxStdIf_Timer *stdIf)
{
    return stdIf->ackTriggerIrq(stdIf->driver);
}







static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_tickToS(float32 clockFreq, Ifx_TimerValue ticks)
{
    return ticks / clockFreq;
}







static inline __attribute__ ((always_inline)) Ifx_TimerValue IfxStdIf_Timer_sToTick(float32 clockFreq, float32 seconds)
{
    return seconds * clockFreq;
}





static inline __attribute__ ((always_inline)) float32 IfxStdIf_Timer_getPeriodSecond(IfxStdIf_Timer *stdIf)
{
    return IfxStdIf_Timer_tickToS(IfxStdIf_Timer_getInputFrequency(stdIf), stdIf->getPeriod(stdIf->driver));
}
# 451 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Timer.h"
extern void IfxStdIf_Timer_initConfig(IfxStdIf_Timer_Config *config);







extern void IfxStdIf_Timer_initStdIf(IfxStdIf_Timer *stdIf, IfxStdIf_InterfaceDriver driver);
# 120 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h" 2
# 129 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
typedef struct
{
    Ifx_TimerValue period;
    boolean triggerEnabled;
    float32 clockFreq;
    IfxStdIf_Timer_CountDir countDir;
} IfxGtm_Tom_Timer_Base;







typedef struct
{
    IfxGtm_Tom_Timer_Base base;
    Ifx_GTM *gtm;
    Ifx_GTM_TOM *tom;
    Ifx_GTM_TOM_TGC *tgc[2];
    IfxGtm_Tom tomIndex;
    IfxGtm_Tom_Ch timerChannel;
    IfxGtm_Tom_Ch triggerChannel;
    uint16 channelsMask[2];
    Ifx_TimerValue offset;
    uint32 tgcGlobalControlDisableUpdate[2];
    uint32 tgcGlobalControlApplyUpdate[2];
} IfxGtm_Tom_Timer;



typedef struct
{
    IfxStdIf_Timer_Config base;
    Ifx_GTM *gtm;
    IfxGtm_Tom tom;
    IfxGtm_Tom_Ch timerChannel;
    IfxGtm_Tom_ToutMap *triggerOut;
    IfxGtm_Tom_Ch_ClkSrc clock;
    IfxGtm_IrqMode irqModeTimer;
    IfxGtm_IrqMode irqModeTrigger;
} IfxGtm_Tom_Timer_Config;
# 185 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern Ifx_TimerValue IfxGtm_Tom_Timer_getOffset(IfxGtm_Tom_Timer *driver);





extern volatile uint32 *IfxGtm_Tom_Timer_getPointer(IfxGtm_Tom_Timer *driver);





extern volatile uint32 *IfxGtm_Tom_Timer_getTriggerPointer(IfxGtm_Tom_Timer *driver);






extern boolean IfxGtm_Tom_Timer_init(IfxGtm_Tom_Timer *driver, const IfxGtm_Tom_Timer_Config *config);






extern void IfxGtm_Tom_Timer_initConfig(IfxGtm_Tom_Timer_Config *config, Ifx_GTM *gtm);
# 227 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern boolean IfxGtm_Tom_Timer_acknowledgeTimerIrq(IfxGtm_Tom_Timer *driver);






extern boolean IfxGtm_Tom_Timer_acknowledgeTriggerIrq(IfxGtm_Tom_Timer *driver);
# 243 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"
extern void IfxGtm_Tom_Timer_addToChannelMask(IfxGtm_Tom_Timer *driver, IfxGtm_Tom_Ch channel);







extern void IfxGtm_Tom_Timer_applyUpdate(IfxGtm_Tom_Timer *driver);







extern void IfxGtm_Tom_Timer_disableUpdate(IfxGtm_Tom_Timer *driver);






extern float32 IfxGtm_Tom_Timer_getFrequency(IfxGtm_Tom_Timer *driver);





extern float32 IfxGtm_Tom_Timer_getInputFrequency(IfxGtm_Tom_Timer *driver);






extern Ifx_TimerValue IfxGtm_Tom_Timer_getPeriod(IfxGtm_Tom_Timer *driver);






extern float32 IfxGtm_Tom_Timer_getResolution(IfxGtm_Tom_Timer *driver);





extern Ifx_TimerValue IfxGtm_Tom_Timer_getTrigger(IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_run(IfxGtm_Tom_Timer *driver);







extern boolean IfxGtm_Tom_Timer_setFrequency(IfxGtm_Tom_Timer *driver, float32 frequency);







extern boolean IfxGtm_Tom_Timer_setPeriod(IfxGtm_Tom_Timer *driver, Ifx_TimerValue period);







extern void IfxGtm_Tom_Timer_setSingleMode(IfxGtm_Tom_Timer *driver, boolean enabled);







extern void IfxGtm_Tom_Timer_setTrigger(IfxGtm_Tom_Timer *driver, Ifx_TimerValue triggerPoint);






extern boolean IfxGtm_Tom_Timer_stdIfTimerInit(IfxStdIf_Timer *stdif, IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_stop(IfxGtm_Tom_Timer *driver);






extern void IfxGtm_Tom_Timer_updateInputFrequency(IfxGtm_Tom_Timer *driver);
# 19 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h" 1
# 40 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h" 1
# 119 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxStm_cfg.h" 1
# 67 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxStm_cfg.h"
typedef enum
{
    IfxStm_Index_none = -1,
    IfxStm_Index_0 = 0,
} IfxStm_Index;
# 82 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxStm_cfg.h"
extern const IfxModule_IndexMap IfxStm_cfg_indexMap[1];
# 120 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h" 2
# 131 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
typedef enum
{
    IfxStm_Comparator_0 = 0,
    IfxStm_Comparator_1
} IfxStm_Comparator;



typedef enum
{
    IfxStm_ComparatorInterrupt_ir0 = 0,
    IfxStm_ComparatorInterrupt_ir1 = 1
} IfxStm_ComparatorInterrupt;



typedef enum
{
    IfxStm_ComparatorOffset_0 = 0,
    IfxStm_ComparatorOffset_1,
    IfxStm_ComparatorOffset_2,
    IfxStm_ComparatorOffset_3,
    IfxStm_ComparatorOffset_4,
    IfxStm_ComparatorOffset_5,
    IfxStm_ComparatorOffset_6,
    IfxStm_ComparatorOffset_7,
    IfxStm_ComparatorOffset_8,
    IfxStm_ComparatorOffset_9,
    IfxStm_ComparatorOffset_10,
    IfxStm_ComparatorOffset_11,
    IfxStm_ComparatorOffset_12,
    IfxStm_ComparatorOffset_13,
    IfxStm_ComparatorOffset_14,
    IfxStm_ComparatorOffset_15,
    IfxStm_ComparatorOffset_16,
    IfxStm_ComparatorOffset_17,
    IfxStm_ComparatorOffset_18,
    IfxStm_ComparatorOffset_19,
    IfxStm_ComparatorOffset_20,
    IfxStm_ComparatorOffset_21,
    IfxStm_ComparatorOffset_22,
    IfxStm_ComparatorOffset_23,
    IfxStm_ComparatorOffset_24,
    IfxStm_ComparatorOffset_25,
    IfxStm_ComparatorOffset_26,
    IfxStm_ComparatorOffset_27,
    IfxStm_ComparatorOffset_28,
    IfxStm_ComparatorOffset_29,
    IfxStm_ComparatorOffset_30,
    IfxStm_ComparatorOffset_31
} IfxStm_ComparatorOffset;



typedef enum
{
    IfxStm_ComparatorSize_1Bit = 0,
    IfxStm_ComparatorSize_2Bits = 1,
    IfxStm_ComparatorSize_3Bits = 2,
    IfxStm_ComparatorSize_4Bits = 3,
    IfxStm_ComparatorSize_5Bits = 4,
    IfxStm_ComparatorSize_6Bits = 5,
    IfxStm_ComparatorSize_7Bits = 6,
    IfxStm_ComparatorSize_8Bits = 7,
    IfxStm_ComparatorSize_9Bits = 8,
    IfxStm_ComparatorSize_10Bits = 9,
    IfxStm_ComparatorSize_11Bits = 10,
    IfxStm_ComparatorSize_12Bits = 11,
    IfxStm_ComparatorSize_13Bits = 12,
    IfxStm_ComparatorSize_14Bits = 13,
    IfxStm_ComparatorSize_15Bits = 14,
    IfxStm_ComparatorSize_16Bits = 15,
    IfxStm_ComparatorSize_17Bits = 16,
    IfxStm_ComparatorSize_18Bits = 17,
    IfxStm_ComparatorSize_19Bits = 18,
    IfxStm_ComparatorSize_20Bits = 19,
    IfxStm_ComparatorSize_21Bits = 20,
    IfxStm_ComparatorSize_22Bits = 21,
    IfxStm_ComparatorSize_23Bits = 22,
    IfxStm_ComparatorSize_24Bits = 23,
    IfxStm_ComparatorSize_25Bits = 24,
    IfxStm_ComparatorSize_26Bits = 25,
    IfxStm_ComparatorSize_27Bits = 26,
    IfxStm_ComparatorSize_28Bits = 27,
    IfxStm_ComparatorSize_29Bits = 28,
    IfxStm_ComparatorSize_30Bits = 29,
    IfxStm_ComparatorSize_31Bits = 30,
    IfxStm_ComparatorSize_32Bits = 31
} IfxStm_ComparatorSize;




typedef enum
{
    IfxStm_SleepMode_enable = 0,
    IfxStm_SleepMode_disable = 1
} IfxStm_SleepMode;



typedef enum
{
    IfxStm_SuspendMode_none = 0,
    IfxStm_SuspendMode_hard = 1,
    IfxStm_SuspendMode_soft = 2
} IfxStm_SuspendMode;
# 249 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
typedef struct
{
    IfxStm_Comparator comparator;
    IfxStm_ComparatorInterrupt comparatorInterrupt;
    IfxStm_ComparatorOffset compareOffset;
    IfxStm_ComparatorSize compareSize;
    uint32 ticks;
    Ifx_Priority triggerPriority;
    IfxSrc_Tos typeOfService;
} IfxStm_CompareConfig;
# 273 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm);







static inline __attribute__ ((always_inline)) boolean IfxStm_isModuleSuspended(Ifx_STM *stm);







static inline __attribute__ ((always_inline)) void IfxStm_setSuspendMode(Ifx_STM *stm, IfxStm_SuspendMode mode);
# 305 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_disableModule(Ifx_STM *stm);





extern void IfxStm_enableOcdsSuspend(Ifx_STM *stm);





extern Ifx_STM *IfxStm_getAddress(IfxStm_Index stm);





extern IfxStm_Index IfxStm_getIndex(Ifx_STM *stm);
# 338 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm);






static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset);







static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks);
# 405 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds);






static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds);







static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);







static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks);
# 446 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_clearCompareFlag(Ifx_STM *stm, IfxStm_Comparator comparator);






extern void IfxStm_disableComparatorInterrupt(Ifx_STM *stm, IfxStm_Comparator comparator);






extern void IfxStm_enableComparatorInterrupt(Ifx_STM *stm, IfxStm_Comparator comparator);






extern volatile Ifx_SRC_SRCR *IfxStm_getSrcPointer(Ifx_STM *stm, IfxStm_Comparator comparator);






extern boolean IfxStm_initCompare(Ifx_STM *stm, const IfxStm_CompareConfig *config);





extern void IfxStm_initCompareConfig(IfxStm_CompareConfig *config);






extern boolean IfxStm_isCompareFlagSet(Ifx_STM *stm, IfxStm_Comparator comparator);
# 497 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_setCompareControl(Ifx_STM *stm, IfxStm_Comparator comparator, IfxStm_ComparatorOffset offset, IfxStm_ComparatorSize size, IfxStm_ComparatorInterrupt interrupt);
# 510 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode);
# 520 "0_Src/BaseSw/iLLD/TC23A/Tricore/Stm/Std/IfxStm.h"
extern void IfxStm_resetModule(Ifx_STM *stm);





static inline __attribute__ ((always_inline)) uint64 IfxStm_get(Ifx_STM *stm)
{
    uint64 result;

    result = stm->TIM0.U;
    result |= ((uint64)stm->CAP.U) << 32;

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getCompare(Ifx_STM *stm, IfxStm_Comparator comparator)
{
    return stm->CMP[comparator].B.CMPVAL;
}


static inline __attribute__ ((always_inline)) float32 IfxStm_getFrequency(Ifx_STM *stm)
{
    float32 result;

    result = IfxScuCcu_getStmFrequency();

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getLower(Ifx_STM *stm)
{
    return stm->TIM0.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset12Timer(Ifx_STM *stm)
{
    return stm->TIM3.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset16Timer(Ifx_STM *stm)
{
    return stm->TIM4.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset20Timer(Ifx_STM *stm)
{
    return stm->TIM5.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset32Timer(Ifx_STM *stm)
{
    return stm->TIM6.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset4Timer(Ifx_STM *stm)
{
    return stm->TIM1.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffset8Timer(Ifx_STM *stm)
{
    return stm->TIM2.U;
}


static inline __attribute__ ((always_inline)) uint32 IfxStm_getOffsetTimer(Ifx_STM *stm, uint8 offset)
{
    uint64 now;

    now = IfxStm_get(stm);

    return (uint32)(now >> offset);
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMicroseconds(Ifx_STM *stm, uint32 microSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000000)) * microSeconds;
}


static inline __attribute__ ((always_inline)) sint32 IfxStm_getTicksFromMilliseconds(Ifx_STM *stm, uint32 milliSeconds)
{
    sint32 freq = (sint32)IfxStm_getFrequency(stm);
    return (freq / (1000)) * milliSeconds;
}


static inline __attribute__ ((always_inline)) void IfxStm_increaseCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = stm->CMP[comparator].B.CMPVAL + ticks;
}


static inline __attribute__ ((always_inline)) boolean IfxStm_isModuleSuspended(Ifx_STM *stm)
{
    Ifx_STM_OCS ocs;


    ocs.U = stm->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxStm_setSleepMode(Ifx_STM *stm, IfxStm_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    stm->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxStm_setSuspendMode(Ifx_STM *stm, IfxStm_SuspendMode mode)
{
    Ifx_STM_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    stm->OCS.U = ocs.U;
}


static inline __attribute__ ((always_inline)) void IfxStm_updateCompare(Ifx_STM *stm, IfxStm_Comparator comparator, uint32 ticks)
{
    stm->CMP[comparator].B.CMPVAL = ticks;
}


static inline __attribute__ ((always_inline)) void IfxStm_waitTicks(Ifx_STM *stm, uint32 ticks)
{
    uint32 beginTime;

    beginTime = IfxStm_getLower(stm);




    while ((IfxStm_getLower(stm) - beginTime) < ticks)
    {}
}
# 41 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h" 2
# 56 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean areInterruptsEnabled(void);
static inline __attribute__ ((always_inline)) boolean disableInterrupts(void);
static inline __attribute__ ((always_inline)) void enableInterrupts(void);
static inline __attribute__ ((always_inline)) void restoreInterrupts(boolean enabled);
static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void);
# 75 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean areInterruptsEnabled(void)
{
    return IfxCpu_areInterruptsEnabled();
}
# 88 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean disableInterrupts(void)
{
    return IfxCpu_disableInterrupts();
}







static inline __attribute__ ((always_inline)) void forceDisableInterrupts(void)
{
    IfxCpu_forceDisableInterrupts();
}





static inline __attribute__ ((always_inline)) void enableInterrupts(void)
{
    IfxCpu_enableInterrupts();
}
# 122 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void restoreInterrupts(boolean enabled)
{
    IfxCpu_restoreInterrupts(enabled);
}
# 148 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
extern Ifx_TickTime TimeConst[(11)];
# 157 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b);
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since);
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline);
extern void initTime(void);
static inline __attribute__ ((always_inline)) boolean isDeadLine(Ifx_TickTime deadLine);
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void);
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void);
static inline __attribute__ ((always_inline)) boolean poll(volatile boolean *test, Ifx_TickTime timeout);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, boolean interruptEnabled);
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(boolean *interruptEnabled);
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout);
extern void waitPoll(void);
extern void waitTime(Ifx_TickTime timeout);


typedef void (*WaitTimeFunction)(Ifx_TickTime timeout);
# 201 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime now(void)
{
    Ifx_TickTime stmNow;
    boolean interruptState;

    interruptState = disableInterrupts();
    stmNow = (Ifx_TickTime)IfxStm_get((&(*(Ifx_STM *)0xF0000000u))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    restoreInterrupts(interruptState);

    return stmNow;
}
# 220 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime nowWithoutCriticalSection(void)
{
    Ifx_TickTime stmNow;

    stmNow = (Ifx_TickTime)IfxStm_get((&(*(Ifx_STM *)0xF0000000u))) & ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);

    return stmNow;
}
# 237 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime addTTime(Ifx_TickTime a, Ifx_TickTime b)
{
    Ifx_TickTime result;

    if ((a == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)) || (b == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL)))
    {
        result = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        result = a + b;
    }

    return result;
}
# 260 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime elapsed(Ifx_TickTime since)
{
    return now() - since;
}
# 272 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getDeadLine(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine;

    if (timeout == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        deadLine = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        deadLine = now() + timeout;
    }

    return deadLine;
}
# 295 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime getTimeout(Ifx_TickTime deadline)
{
    Ifx_TickTime timeout;

    if (deadline == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        timeout = ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL);
    }
    else
    {
        timeout = deadline - now();
    }

    return timeout;
}
# 319 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean isDeadLine(Ifx_TickTime deadLine)
{
    boolean result;

    if (deadLine == ((Ifx_TickTime)0x7FFFFFFFFFFFFFFFLL))
    {
        result = 0;
    }
    else
    {
        result = now() >= deadLine;
    }

    return result;
}
# 344 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) boolean poll(volatile boolean *test, Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while ((*test == 0) && (isDeadLine(deadLine) == 0))
    {}

    return *test;
}
# 366 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptEnd(Ifx_TickTime since, boolean interruptEnabled)
{
    Ifx_TickTime stmNow;

    stmNow = nowWithoutCriticalSection();
    restoreInterrupts(interruptEnabled);

    return stmNow - since;
}
# 385 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) Ifx_TickTime timingNoInterruptStart(boolean *interruptEnabled)
{
    *interruptEnabled = disableInterrupts();

    return nowWithoutCriticalSection();
}
# 399 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Bsp.h"
static inline __attribute__ ((always_inline)) void wait(Ifx_TickTime timeout)
{
    Ifx_TickTime deadLine = getDeadLine(timeout);

    while (isDeadLine(deadLine) == 0)
    {}
}
# 20 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h" 1
# 14 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper_note.h" 1
# 11 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper_note.h"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h" 1
# 12 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper_note.h" 2
# 15 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 1
# 16 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h" 2
# 29 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h"
typedef enum
{
 end,
 repeat,
 note_whole,
 note_half,
 note_quarter,
 note_eighth,
 note_sixteenth,
 note_thirtysecond
}noteBeat_t;

typedef enum
{
 rest,
 note_C5,note_Cs5,note_D5,note_Ds5,note_E5,note_F5,note_Fs5,note_G5,note_Gs5,note_A5,note_As5,note_B5,
 note_C6,note_Cs6,note_D6,note_Ds6,note_E6,note_F6, note_Fs6, note_G6, note_Gs6, note_A6, note_C7
}notePitch_t;





typedef struct
{
 noteBeat_t beat;
 notePitch_t note;
 boolean tie;
}note_t;
typedef struct
{
 boolean on;
 float32 volume;
 float32 frequency;
}HLD_Beeper_t;



extern HLD_Beeper_t HLD_GtmTomBeeper;




extern note_t Beep_off[];
extern note_t Beep_pattern1[];
extern note_t Beep_pattern2[];
extern note_t Beep_pattern3[];
extern note_t Beep_pattern4[];
extern note_t Beep_pattern5[];
extern note_t Beep_pattern6[];
extern note_t Beep_pattern7[];
extern note_t Beep_pattern8[];
extern note_t Beep_pattern9[];
extern note_t Beep_pattern10[];






extern void HLD_GtmTomBeeper_init(void);




extern void HLD_GtmTomBeeper_run_1ms(void);
# 105 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Beeper/GtmTomBeeper.h"
extern void HLD_GtmTomBeeper_start (note_t* target);
# 21 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Servo/GtmTomServo.h" 1
# 34 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Servo/GtmTomServo.h"
typedef struct
{
 float32 frequency;
 Ifx_TimerValue triggerPoint;
 IfxGtm_Tom_Timer driver;
}GtmTomServo_t;

typedef struct
{
 GtmTomServo_t servo;
 float32 angle;
 float32 center;
 float32 leftLimit;
 float32 rightLimit;
 boolean inversion;
}HLD_servo_t;




extern HLD_servo_t HLD_servoSteering;
extern HLD_servo_t HLD_servoInfraRed;






extern void HLD_GtmTomServo_init(void);




extern void HLD_GtmTomServo_run(void);
# 76 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Servo/GtmTomServo.h"
extern void HLD_GtmTomServo_setAngle(HLD_servo_t* servo, float32 degAngle);






extern float32 HLD_GtmTomServo_getAngle(HLD_servo_t* servo);
# 22 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Pwm/GtmTomPwm.h" 1
# 35 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Pwm/GtmTomPwm.h"
typedef struct
{
 IfxGtm_Tom_Timer driver;
 Ifx_TimerValue triggerPoints;
 float32 frequency;
 Ifx_TimerValue period;
}HLD_GtmTom_Pwm;

typedef struct
{
 IfxGtm_Tom_ToutMap* tomOut;
 float32 frequency;
}HLD_GtmTom_Pwm_Config;
# 59 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/Pwm/GtmTomPwm.h"
extern void HLD_GtmTomPwm_initPwm(HLD_GtmTom_Pwm* pwm, HLD_GtmTom_Pwm_Config* config);

extern void HLD_GtmTomPwm_setTriggerPoint(HLD_GtmTom_Pwm* pwm, Ifx_TimerValue timVal);





extern void HLD_GtmTomPwm_setTriggerPointFloat(HLD_GtmTom_Pwm* pwm, float32 floatDuty);
# 23 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h" 2
# 47 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tom/GtmTom.h"
extern void HLD_GtmTom_init(void);
# 133 "0_Src/AppSw/Tricore/HLD/HLD.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tim/GtmTim.h" 1
# 16 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tim/GtmTim.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Std/IfxGtm_Tim.h" 1
# 17 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tim/GtmTim.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.h" 1
# 55 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.h"
typedef enum
{
    IfxGtm_Tim_In_ConfigFilterMode_immediateEdgePropagation,
    IfxGtm_Tim_In_ConfigFilterMode_individualDeglitchTimeUpDown,
    IfxGtm_Tim_In_ConfigFilterMode_individualDeglitchTimeHold,
    IfxGtm_Tim_In_ConfigFilterMode_none
} IfxGtm_Tim_In_ConfigFilterMode;



typedef enum
{
    IfxGtm_Tim_In_Input_currentChannel,
    IfxGtm_Tim_In_Input_adjacentChannel,
    IfxGtm_Tim_In_Input_aux
} IfxGtm_Tim_In_Input;
# 82 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.h"
typedef struct
{
    boolean irqOnNewVal;
    boolean irqOnCntOverflow;
    boolean irqOnEcntOverflow;
    boolean irqOnDatalost;
    IfxGtm_Cmu_Clk clock;
    Ifx_Pwm_Mode mode;
} IfxGtm_Tim_In_ConfigCapture;



typedef struct
{
    IfxGtm_Cmu_Tim_Filter_Clk clock;
    IfxGtm_Tim_In_ConfigFilterMode risingEdgeMode;
    IfxGtm_Tim_In_ConfigFilterMode fallingEdgeMode;
    float32 risingEdgeFilterTime;
    float32 fallingEdgeFilterTime;
    boolean irqOnGlitch;
    IfxGtm_Tim_In_Input input;
    IfxGtm_Tim_TinMap *inputPin;
    IfxPort_InputMode inputPinMode;
} IfxGtm_Tim_In_ConfigFilter;



typedef struct
{
    IfxGtm_Cmu_Clk clock;
    float32 timeout;
    boolean irqOnTimeout;
} IfxGtm_Tim_In_ConfigTimeout;







typedef struct
{
    Ifx_GTM_TIM_CH *channel;
    uint32 periodTick;
    uint32 pulseLengthTick;
    boolean dataCoherent;
    boolean overflowCnt;
    boolean newData;
    boolean dataLost;
    uint32 edgeCounterUpper;
    boolean glitch;
    float32 captureClockFrequency;
    IfxGtm_Tim timIndex;
    IfxGtm_Tim_Ch channelIndex;
    uint16 edgeCount;
} IfxGtm_Tim_In;



typedef struct
{
    Ifx_GTM *gtm;
    IfxGtm_Tim timIndex;
    IfxGtm_Tim_Ch channelIndex;
    IfxGtm_IrqMode irqMode;
    IfxSrc_Tos isrProvider;
    Ifx_Priority isrPriority;
    IfxGtm_Tim_In_ConfigCapture capture;
    IfxGtm_Tim_In_ConfigFilter filter;
    IfxGtm_Tim_In_ConfigTimeout timeout;
} IfxGtm_Tim_In_Config;
# 167 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.h"
static inline __attribute__ ((always_inline)) void IfxGtm_Tim_In_clearNewData(IfxGtm_Tim_In *driver);






static inline __attribute__ ((always_inline)) float32 IfxGtm_Tim_In_getDutyPercent(IfxGtm_Tim_In *driver, boolean *dataCoherent);





static inline __attribute__ ((always_inline)) float32 IfxGtm_Tim_In_getPeriodSecond(IfxGtm_Tim_In *driver);





static inline __attribute__ ((always_inline)) sint32 IfxGtm_Tim_In_getPeriodTicks(IfxGtm_Tim_In *driver);





static inline __attribute__ ((always_inline)) sint32 IfxGtm_Tim_In_getPulseLengthTick(IfxGtm_Tim_In *driver);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_In_isDataLost(IfxGtm_Tim_In *driver);





static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_In_isNewData(IfxGtm_Tim_In *driver);
# 215 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gtm/Tim/In/IfxGtm_Tim_In.h"
extern boolean IfxGtm_Tim_In_init(IfxGtm_Tim_In *driver, const IfxGtm_Tim_In_Config *config);






extern void IfxGtm_Tim_In_initConfig(IfxGtm_Tim_In_Config *config, Ifx_GTM *gtm);






extern void IfxGtm_Tim_In_onIsr(IfxGtm_Tim_In *driver);





extern void IfxGtm_Tim_In_update(IfxGtm_Tim_In *driver);







static inline __attribute__ ((always_inline)) void IfxGtm_Tim_In_clearNewData(IfxGtm_Tim_In *driver)
{
    driver->newData = 0;
}


static inline __attribute__ ((always_inline)) float32 IfxGtm_Tim_In_getDutyPercent(IfxGtm_Tim_In *driver, boolean *dataCoherent)
{
    float32 duty;
    boolean interruptState = IfxCpu_disableInterrupts();
    duty = (float32)driver->periodTick / driver->pulseLengthTick;
    *dataCoherent = driver->dataCoherent;
    IfxCpu_restoreInterrupts(interruptState);

    return duty;
}


static inline __attribute__ ((always_inline)) float32 IfxGtm_Tim_In_getPeriodSecond(IfxGtm_Tim_In *driver)
{
    return IfxGtm_Tim_In_getPeriodTicks(driver) / driver->captureClockFrequency;
}


static inline __attribute__ ((always_inline)) sint32 IfxGtm_Tim_In_getPeriodTicks(IfxGtm_Tim_In *driver)
{
    return driver->periodTick;
}


static inline __attribute__ ((always_inline)) sint32 IfxGtm_Tim_In_getPulseLengthTick(IfxGtm_Tim_In *driver)
{
    return driver->pulseLengthTick;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_In_isDataLost(IfxGtm_Tim_In *driver)
{
    return driver->dataLost;
}


static inline __attribute__ ((always_inline)) boolean IfxGtm_Tim_In_isNewData(IfxGtm_Tim_In *driver)
{
    return driver->newData;
}
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tim/GtmTim.h" 2


# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h" 1
# 40 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
typedef struct
{
    Ifx_SizeT count;
    sint32 readerWaitx;
    sint32 writerWaitx;
    Ifx_SizeT maxcount;
} Ifx_Fifo_Shared;






typedef struct _Fifo
{
    void *buffer;
    Ifx_Fifo_Shared shared;
    Ifx_SizeT startIndex;
    Ifx_SizeT endIndex;
    Ifx_SizeT size;
    Ifx_SizeT elementSize;
    volatile boolean eventReader;
    volatile boolean eventWriter;
} Ifx_Fifo;
# 75 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern boolean Ifx_Fifo_canReadCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);
# 87 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern boolean Ifx_Fifo_canWriteCount(Ifx_Fifo *fifo, Ifx_SizeT count, Ifx_TickTime timeout);







extern void Ifx_Fifo_clear(Ifx_Fifo *fifo);
# 108 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_create(Ifx_SizeT size, Ifx_SizeT elementSize);
# 119 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern void Ifx_Fifo_destroy(Ifx_Fifo *fifo);
# 134 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_Fifo *Ifx_Fifo_init(void *buffer, Ifx_SizeT size, Ifx_SizeT elementSize);
# 148 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_read(Ifx_Fifo *fifo, void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 160 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
extern Ifx_SizeT Ifx_Fifo_write(Ifx_Fifo *fifo, const void *data, Ifx_SizeT count, Ifx_TickTime timeout);
# 169 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) boolean Ifx_Fifo_flush(Ifx_Fifo *fifo, Ifx_TickTime timeout)
{
    return Ifx_Fifo_canWriteCount(fifo, fifo->size, timeout);
}
# 186 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_readCount(Ifx_Fifo *fifo)
{
    return fifo->shared.count;
}
# 202 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) Ifx_SizeT Ifx_Fifo_writeCount(Ifx_Fifo *fifo)
{
    return (Ifx_SizeT)(fifo->size - Ifx_Fifo_readCount(fifo));
}
# 215 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Lib/DataHandling/Ifx_Fifo.h"
static inline __attribute__ ((always_inline)) boolean Ifx_Fifo_isEmpty(Ifx_Fifo *fifo)
{
    return (Ifx_Fifo_readCount(fifo) != 0) ? 0 : 1;
}
# 21 "0_Src/AppSw/Tricore/HLD/BasicModules/Gtm/Tim/GtmTim.h" 2







typedef struct
{
 uint32 pulseWidth_tick;
 uint32 period_tick;
 float32 pulseWidth_ms;
 float32 period_ms;
 float32 pulseHz;
 float32 dutyRatio_percent;
}HLD_GtmTim_dataPulse_t;

typedef struct
{
 IfxGtm_Tim_In driver;
 HLD_GtmTim_dataPulse_t data;
}HLD_GtmTim_channel_t ;

typedef struct
{
 HLD_GtmTim_channel_t ch[10];
}HLD_GtmTim_t;





extern HLD_GtmTim_t HLD_GtmTim;




extern void HLD_GtmTim_init(void);


extern void HLD_GtmTim_run_1ms(void);
# 134 "0_Src/AppSw/Tricore/HLD/HLD.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.h" 1
# 136 "0_Src/AppSw/Tricore/HLD/HLD.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi_Mpu9250.h" 1
# 137 "0_Src/AppSw/Tricore/HLD/HLD.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/MultiCAN/Multican.h" 1
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/MultiCAN/Multican.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h" 1
# 751 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h" 1
# 45 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxMultican_cfg.h" 1
# 40 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxMultican_cfg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_reg.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_regdef.h" 1
# 49 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_regdef.h"
typedef struct _Ifx_CAN_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_CAN_ACCEN0_Bits;


typedef struct _Ifx_CAN_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CAN_ACCEN1_Bits;


typedef struct _Ifx_CAN_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_CAN_CLC_Bits;


typedef struct _Ifx_CAN_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int reserved_16 : 16;
} Ifx_CAN_FDR_Bits;


typedef struct _Ifx_CAN_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_CAN_ID_Bits;


typedef struct _Ifx_CAN_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_CAN_KRST0_Bits;


typedef struct _Ifx_CAN_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRST1_Bits;


typedef struct _Ifx_CAN_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRSTCLR_Bits;


typedef struct _Ifx_CAN_LIST_Bits
{
    unsigned int BEGIN : 8;
    unsigned int END : 8;
    unsigned int SIZE : 8;
    unsigned int EMPTY : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_LIST_Bits;


typedef struct _Ifx_CAN_MCR_Bits
{
    unsigned int CLKSEL : 4;
    unsigned int reserved_4 : 4;
    unsigned int DXCM : 1;
    unsigned int reserved_9 : 3;
    unsigned int MPSEL : 4;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MCR_Bits;


typedef struct _Ifx_CAN_MECR_Bits
{
    unsigned int TH : 16;
    unsigned int INP : 4;
    unsigned int NODE : 3;
    unsigned int reserved_23 : 1;
    unsigned int ANYED : 1;
    unsigned int CAPEIE : 1;
    unsigned int reserved_26 : 1;
    unsigned int DEPTH : 3;
    unsigned int SOF : 1;
    unsigned int reserved_31 : 1;
} Ifx_CAN_MECR_Bits;


typedef struct _Ifx_CAN_MESTAT_Bits
{
    unsigned int CAPT : 16;
    unsigned int CAPRED : 1;
    unsigned int CAPE : 1;
    unsigned int reserved_18 : 14;
} Ifx_CAN_MESTAT_Bits;


typedef struct _Ifx_CAN_MITR_Bits
{
    unsigned int IT : 16;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MITR_Bits;


typedef struct _Ifx_CAN_MO_AMR_Bits
{
    unsigned int AM : 29;
    unsigned int MIDE : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_MO_AMR_Bits;


typedef struct _Ifx_CAN_MO_AR_Bits
{
    unsigned int ID : 29;
    unsigned int IDE : 1;
    unsigned int PRI : 2;
} Ifx_CAN_MO_AR_Bits;


typedef struct _Ifx_CAN_MO_CTR_Bits
{
    unsigned int RESRXPND : 1;
    unsigned int RESTXPND : 1;
    unsigned int RESRXUPD : 1;
    unsigned int RESNEWDAT : 1;
    unsigned int RESMSGLST : 1;
    unsigned int RESMSGVAL : 1;
    unsigned int RESRTSEL : 1;
    unsigned int RESRXEN : 1;
    unsigned int RESTXRQ : 1;
    unsigned int RESTXEN0 : 1;
    unsigned int RESTXEN1 : 1;
    unsigned int RESDIR : 1;
    unsigned int reserved_12 : 4;
    unsigned int SETRXPND : 1;
    unsigned int SETTXPND : 1;
    unsigned int SETRXUPD : 1;
    unsigned int SETNEWDAT : 1;
    unsigned int SETMSGLST : 1;
    unsigned int SETMSGVAL : 1;
    unsigned int SETRTSEL : 1;
    unsigned int SETRXEN : 1;
    unsigned int SETTXRQ : 1;
    unsigned int SETTXEN0 : 1;
    unsigned int SETTXEN1 : 1;
    unsigned int SETDIR : 1;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_CTR_Bits;


typedef struct _Ifx_CAN_MO_DATAH_Bits
{
    unsigned int DB4 : 8;
    unsigned int DB5 : 8;
    unsigned int DB6 : 8;
    unsigned int DB7 : 8;
} Ifx_CAN_MO_DATAH_Bits;


typedef struct _Ifx_CAN_MO_DATAL_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_DATAL_Bits;


typedef struct _Ifx_CAN_MO_EDATA0_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA0_Bits;


typedef struct _Ifx_CAN_MO_EDATA1_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA1_Bits;


typedef struct _Ifx_CAN_MO_EDATA2_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA2_Bits;


typedef struct _Ifx_CAN_MO_EDATA3_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA3_Bits;


typedef struct _Ifx_CAN_MO_EDATA4_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA4_Bits;


typedef struct _Ifx_CAN_MO_EDATA5_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA5_Bits;


typedef struct _Ifx_CAN_MO_EDATA6_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA6_Bits;


typedef struct _Ifx_CAN_MO_FCR_Bits
{
    unsigned int MMC : 4;
    unsigned int RXTOE : 1;
    unsigned int BRS : 1;
    unsigned int FDF : 1;
    unsigned int reserved_7 : 1;
    unsigned int GDFS : 1;
    unsigned int IDC : 1;
    unsigned int DLCC : 1;
    unsigned int DATC : 1;
    unsigned int reserved_12 : 4;
    unsigned int RXIE : 1;
    unsigned int TXIE : 1;
    unsigned int OVIE : 1;
    unsigned int reserved_19 : 1;
    unsigned int FRREN : 1;
    unsigned int RMM : 1;
    unsigned int SDT : 1;
    unsigned int STT : 1;
    unsigned int DLC : 4;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_FCR_Bits;


typedef struct _Ifx_CAN_MO_FGPR_Bits
{
    unsigned int BOT : 8;
    unsigned int TOP : 8;
    unsigned int CUR : 8;
    unsigned int SEL : 8;
} Ifx_CAN_MO_FGPR_Bits;


typedef struct _Ifx_CAN_MO_IPR_Bits
{
    unsigned int RXINP : 4;
    unsigned int TXINP : 4;
    unsigned int MPN : 8;
    unsigned int CFCVAL : 16;
} Ifx_CAN_MO_IPR_Bits;


typedef struct _Ifx_CAN_MO_STAT_Bits
{
    unsigned int RXPND : 1;
    unsigned int TXPND : 1;
    unsigned int RXUPD : 1;
    unsigned int NEWDAT : 1;
    unsigned int MSGLST : 1;
    unsigned int MSGVAL : 1;
    unsigned int RTSEL : 1;
    unsigned int RXEN : 1;
    unsigned int TXRQ : 1;
    unsigned int TXEN0 : 1;
    unsigned int TXEN1 : 1;
    unsigned int DIR : 1;
    unsigned int LIST : 4;
    unsigned int PPREV : 8;
    unsigned int PNEXT : 8;
} Ifx_CAN_MO_STAT_Bits;


typedef struct _Ifx_CAN_MSID_Bits
{
    unsigned int INDEX : 6;
    unsigned int reserved_6 : 26;
} Ifx_CAN_MSID_Bits;


typedef struct _Ifx_CAN_MSIMASK_Bits
{
    unsigned int IM : 32;
} Ifx_CAN_MSIMASK_Bits;


typedef struct _Ifx_CAN_MSPND_Bits
{
    unsigned int PND : 32;
} Ifx_CAN_MSPND_Bits;


typedef struct _Ifx_CAN_N_BTEVR_Bits
{
    unsigned int BRP : 6;
    unsigned int reserved_6 : 2;
    unsigned int SJW : 4;
    unsigned int reserved_12 : 3;
    unsigned int DIV8 : 1;
    unsigned int TSEG2 : 5;
    unsigned int reserved_21 : 1;
    unsigned int TSEG1 : 6;
    unsigned int reserved_28 : 4;
} Ifx_CAN_N_BTEVR_Bits;


typedef struct _Ifx_CAN_N_BTR_Bits
{
    unsigned int BRP : 6;
    unsigned int SJW : 2;
    unsigned int TSEG1 : 4;
    unsigned int TSEG2 : 3;
    unsigned int DIV8 : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_BTR_Bits;


typedef struct _Ifx_CAN_N_CR_Bits
{
    unsigned int INIT : 1;
    unsigned int TRIE : 1;
    unsigned int LECIE : 1;
    unsigned int ALIE : 1;
    unsigned int CANDIS : 1;
    unsigned int TXDIS : 1;
    unsigned int CCE : 1;
    unsigned int CALM : 1;
    unsigned int SUSEN : 1;
    unsigned int FDEN : 1;
    unsigned int reserved_10 : 22;
} Ifx_CAN_N_CR_Bits;


typedef struct _Ifx_CAN_N_ECNT_Bits
{
    unsigned int REC : 8;
    unsigned int TEC : 8;
    unsigned int EWRNLVL : 8;
    unsigned int LETD : 1;
    unsigned int LEINC : 1;
    unsigned int reserved_26 : 6;
} Ifx_CAN_N_ECNT_Bits;


typedef struct _Ifx_CAN_N_FBTR_Bits
{
    unsigned int FBRP : 6;
    unsigned int FSJW : 2;
    unsigned int FTSEG1 : 4;
    unsigned int FTSEG2 : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_FBTR_Bits;


typedef struct _Ifx_CAN_N_FCR_Bits
{
    unsigned int CFC : 16;
    unsigned int CFSEL : 3;
    unsigned int CFMOD : 2;
    unsigned int reserved_21 : 1;
    unsigned int CFCIE : 1;
    unsigned int CFCOV : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_FCR_Bits;


typedef struct _Ifx_CAN_N_IPR_Bits
{
    unsigned int ALINP : 4;
    unsigned int LECINP : 4;
    unsigned int TRINP : 4;
    unsigned int CFCINP : 4;
    unsigned int TEINP : 4;
    unsigned int reserved_20 : 12;
} Ifx_CAN_N_IPR_Bits;


typedef struct _Ifx_CAN_N_PCR_Bits
{
    unsigned int RXSEL : 3;
    unsigned int reserved_3 : 5;
    unsigned int LBM : 1;
    unsigned int reserved_9 : 23;
} Ifx_CAN_N_PCR_Bits;


typedef struct _Ifx_CAN_N_SR_Bits
{
    unsigned int LEC : 3;
    unsigned int TXOK : 1;
    unsigned int RXOK : 1;
    unsigned int ALERT : 1;
    unsigned int EWRN : 1;
    unsigned int BOFF : 1;
    unsigned int LLE : 1;
    unsigned int LOE : 1;
    unsigned int SUSACK : 1;
    unsigned int RESI : 1;
    unsigned int FLEC : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_SR_Bits;


typedef struct _Ifx_CAN_N_TCCR_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int TPSC : 4;
    unsigned int reserved_12 : 6;
    unsigned int TRIGSRC : 3;
    unsigned int reserved_21 : 11;
} Ifx_CAN_N_TCCR_Bits;


typedef struct _Ifx_CAN_N_TDCR_Bits
{
    unsigned int TDCV : 5;
    unsigned int reserved_5 : 3;
    unsigned int TDCO : 4;
    unsigned int reserved_12 : 3;
    unsigned int TDC : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_TDCR_Bits;


typedef struct _Ifx_CAN_N_TRTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int reserved_16 : 6;
    unsigned int TEIE : 1;
    unsigned int TE : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_TRTR_Bits;


typedef struct _Ifx_CAN_N_TTTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int TXMO : 8;
    unsigned int STRT : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_N_TTTR_Bits;


typedef struct _Ifx_CAN_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_OCS_Bits;


typedef struct _Ifx_CAN_PANCTR_Bits
{
    unsigned int PANCMD : 8;
    unsigned int BUSY : 1;
    unsigned int RBUSY : 1;
    unsigned int reserved_10 : 6;
    unsigned int PANAR1 : 8;
    unsigned int PANAR2 : 8;
} Ifx_CAN_PANCTR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ACCEN0_Bits B;
} Ifx_CAN_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ACCEN1_Bits B;
} Ifx_CAN_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_CLC_Bits B;
} Ifx_CAN_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_FDR_Bits B;
} Ifx_CAN_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ID_Bits B;
} Ifx_CAN_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRST0_Bits B;
} Ifx_CAN_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRST1_Bits B;
} Ifx_CAN_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRSTCLR_Bits B;
} Ifx_CAN_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_LIST_Bits B;
} Ifx_CAN_LIST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MCR_Bits B;
} Ifx_CAN_MCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MECR_Bits B;
} Ifx_CAN_MECR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MESTAT_Bits B;
} Ifx_CAN_MESTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MITR_Bits B;
} Ifx_CAN_MITR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_AMR_Bits B;
} Ifx_CAN_MO_AMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_AR_Bits B;
} Ifx_CAN_MO_AR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_CTR_Bits B;
} Ifx_CAN_MO_CTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_DATAH_Bits B;
} Ifx_CAN_MO_DATAH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_DATAL_Bits B;
} Ifx_CAN_MO_DATAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA0_Bits B;
} Ifx_CAN_MO_EDATA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA1_Bits B;
} Ifx_CAN_MO_EDATA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA2_Bits B;
} Ifx_CAN_MO_EDATA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA3_Bits B;
} Ifx_CAN_MO_EDATA3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA4_Bits B;
} Ifx_CAN_MO_EDATA4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA5_Bits B;
} Ifx_CAN_MO_EDATA5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA6_Bits B;
} Ifx_CAN_MO_EDATA6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_FCR_Bits B;
} Ifx_CAN_MO_FCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_FGPR_Bits B;
} Ifx_CAN_MO_FGPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_IPR_Bits B;
} Ifx_CAN_MO_IPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_STAT_Bits B;
} Ifx_CAN_MO_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSID_Bits B;
} Ifx_CAN_MSID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSIMASK_Bits B;
} Ifx_CAN_MSIMASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSPND_Bits B;
} Ifx_CAN_MSPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_BTEVR_Bits B;
} Ifx_CAN_N_BTEVR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_BTR_Bits B;
} Ifx_CAN_N_BTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_CR_Bits B;
} Ifx_CAN_N_CR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_ECNT_Bits B;
} Ifx_CAN_N_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_FBTR_Bits B;
} Ifx_CAN_N_FBTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_FCR_Bits B;
} Ifx_CAN_N_FCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_IPR_Bits B;
} Ifx_CAN_N_IPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_PCR_Bits B;
} Ifx_CAN_N_PCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_SR_Bits B;
} Ifx_CAN_N_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TCCR_Bits B;
} Ifx_CAN_N_TCCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TDCR_Bits B;
} Ifx_CAN_N_TDCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TRTR_Bits B;
} Ifx_CAN_N_TRTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TTTR_Bits B;
} Ifx_CAN_N_TTTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_OCS_Bits B;
} Ifx_CAN_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_PANCTR_Bits B;
} Ifx_CAN_PANCTR;
# 967 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_MO
{
    union
    {
        Ifx_CAN_MO_EDATA0 EDATA0;
        Ifx_CAN_MO_FCR FCR;
    };

    union
    {
        Ifx_CAN_MO_EDATA1 EDATA1;
        Ifx_CAN_MO_FGPR FGPR;
    };

    union
    {
        Ifx_CAN_MO_EDATA2 EDATA2;
        Ifx_CAN_MO_IPR IPR;
    };

    union
    {
        Ifx_CAN_MO_AMR AMR;
        Ifx_CAN_MO_EDATA3 EDATA3;
    };

    union
    {
        Ifx_CAN_MO_DATAL DATAL;
        Ifx_CAN_MO_EDATA4 EDATA4;
    };

    union
    {
        Ifx_CAN_MO_DATAH DATAH;
        Ifx_CAN_MO_EDATA5 EDATA5;
    };

    union
    {
        Ifx_CAN_MO_AR AR;
        Ifx_CAN_MO_EDATA6 EDATA6;
    };

    union
    {
        Ifx_CAN_MO_CTR CTR;
        Ifx_CAN_MO_STAT STAT;
    };
} Ifx_CAN_MO;


typedef volatile struct _Ifx_CAN_N
{
    Ifx_CAN_N_CR CR;
    Ifx_CAN_N_SR SR;
    Ifx_CAN_N_IPR IPR;
    Ifx_CAN_N_PCR PCR;
    union
    {
        Ifx_CAN_N_BTEVR BTEVR;
        Ifx_CAN_N_BTR BTR;
    };

    Ifx_CAN_N_ECNT ECNT;
    Ifx_CAN_N_FCR FCR;
    Ifx_CAN_N_TCCR TCCR;
    Ifx_CAN_N_TRTR TRTR;
    Ifx_CAN_N_TTTR TATTR;
    Ifx_CAN_N_TTTR TBTTR;
    Ifx_CAN_N_TTTR TCTTR;
    unsigned char reserved_30[8];
    Ifx_CAN_N_FBTR FBTR;
    Ifx_CAN_N_TDCR TDCR;
    unsigned char reserved_40[192];
} Ifx_CAN_N;
# 1055 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN
{
    Ifx_CAN_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_CAN_ID ID;
    Ifx_CAN_FDR FDR;
    unsigned char reserved_10[216];
    Ifx_CAN_OCS OCS;
    Ifx_CAN_KRSTCLR KRSTCLR;
    Ifx_CAN_KRST1 KRST1;
    Ifx_CAN_KRST0 KRST0;
    Ifx_CAN_ACCEN1 ACCEN1;
    Ifx_CAN_ACCEN0 ACCEN0;
    Ifx_CAN_LIST LIST[16];
    Ifx_CAN_MSPND MSPND[8];
    unsigned char reserved_160[32];
    Ifx_CAN_MSID MSID[8];
    unsigned char reserved_1A0[32];
    Ifx_CAN_MSIMASK MSIMASK;
    Ifx_CAN_PANCTR PANCTR;
    Ifx_CAN_MCR MCR;
    Ifx_CAN_MITR MITR;
    Ifx_CAN_MECR MECR;
    Ifx_CAN_MESTAT MESTAT;
    unsigned char reserved_1D8[40];
    Ifx_CAN_N N[3];
    unsigned char reserved_500[2816];
    Ifx_CAN_MO MO[128];
    unsigned char reserved_2000[8192];
} Ifx_CAN;
# 40 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_reg.h" 2
# 41 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxMultican_cfg.h" 2
# 72 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxMultican_cfg.h"
typedef enum
{
    IfxMultican_Index_none = -1,
    IfxMultican_Index_0 = 0,
    IfxMultican_Index_1
} IfxMultican_Index;



typedef enum
{
    IfxMultican_NodeId_none = -1,
    IfxMultican_NodeId_0 = 0,
    IfxMultican_NodeId_1,
    IfxMultican_NodeId_2
} IfxMultican_NodeId;



typedef enum
{
    IfxMultican_SrcId_0 = 0,
    IfxMultican_SrcId_1,
    IfxMultican_SrcId_2,
    IfxMultican_SrcId_3,
    IfxMultican_SrcId_4,
    IfxMultican_SrcId_5,
    IfxMultican_SrcId_6,
    IfxMultican_SrcId_7,
    IfxMultican_SrcId_8,
    IfxMultican_SrcId_9,
    IfxMultican_SrcId_10,
    IfxMultican_SrcId_11,
    IfxMultican_SrcId_12,
    IfxMultican_SrcId_13,
    IfxMultican_SrcId_14,
    IfxMultican_SrcId_15
} IfxMultican_SrcId;






extern const IfxModule_IndexMap IfxMultican_cfg_indexMap[(2)];
# 46 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h" 2

# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxMultican_PinMap.h" 1
# 39 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxMultican_PinMap.h"
typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxMultican_Rxd_In;


typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMultican_Txd_Out;

extern IfxMultican_Rxd_In IfxMultican1_RXD0A_P10_5_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0B_P13_1_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0F_P02_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0G_P00_5_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0H_P33_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1A_P00_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1B_P13_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1C_P20_0_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1F_P02_7_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1G_P00_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1H_P20_12_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2A_P00_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2C_P20_0_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2D_P11_10_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2E_P20_9_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2G_P00_8_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2H_P20_13_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0A_P02_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0B_P20_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0D_P02_4_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0E_P33_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0G_P34_2_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1A_P15_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1B_P14_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1D_P00_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2A_P15_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2B_P02_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2D_P14_8_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2E_P10_2_IN;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P00_4_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P02_4_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P10_6_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P13_0_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P33_7_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P00_7_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P02_5_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P13_2_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P20_11_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P00_2_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P00_9_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_10_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_14_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_5_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P20_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P33_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P34_1_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P00_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P14_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P15_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P02_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P10_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P15_0_OUT;
# 119 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxMultican_PinMap.h"
extern const IfxMultican_Rxd_In *IfxMultican_Rxd_In_pinTable[2][3][8];


extern const IfxMultican_Txd_Out *IfxMultican_Txd_Out_pinTable[2][3][5];
# 48 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCan_bf.h" 1
# 50 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h" 2
# 60 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
typedef sint32 IfxMultican_MsgObjId;
# 70 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
typedef enum
{
    IfxMultican_ClockSelect_noClock = 0,
    IfxMultican_ClockSelect_fclc = 1,
    IfxMultican_ClockSelect_fosc0 = 2,
    IfxMultican_ClockSelect_fErayPll = 4
} IfxMultican_ClockSelect;




typedef enum
{
    IfxMultican_DataLengthCode_0 = 0,
    IfxMultican_DataLengthCode_1,
    IfxMultican_DataLengthCode_2,
    IfxMultican_DataLengthCode_3,
    IfxMultican_DataLengthCode_4,
    IfxMultican_DataLengthCode_5,
    IfxMultican_DataLengthCode_6,
    IfxMultican_DataLengthCode_7,
    IfxMultican_DataLengthCode_8,
    IfxMultican_DataLengthCode_12 = 9,
    IfxMultican_DataLengthCode_16 = 10,
    IfxMultican_DataLengthCode_20 = 11,
    IfxMultican_DataLengthCode_24 = 12,
    IfxMultican_DataLengthCode_32 = 13,
    IfxMultican_DataLengthCode_48 = 14,
    IfxMultican_DataLengthCode_64 = 15
} IfxMultican_DataLengthCode;



typedef enum
{
    IfxMultican_Frame_receive,
    IfxMultican_Frame_transmit,
    IfxMultican_Frame_remoteRequest,
    IfxMultican_Frame_remoteAnswer
} IfxMultican_Frame;




typedef enum
{
    IfxMultican_FrameCounterMode_frameCountMode = 0,

    IfxMultican_FrameCounterMode_timeStampMode = 1,

    IfxMultican_FrameCounterMode_bitTimingMode = 2,

    IfxMultican_FrameCounterMode_errorCountMode = 3


} IfxMultican_FrameCounterMode;




typedef enum
{
    IfxMultican_MsgObjGroup_0 = 0,
    IfxMultican_MsgObjGroup_1,
    IfxMultican_MsgObjGroup_2,
    IfxMultican_MsgObjGroup_3,
    IfxMultican_MsgObjGroup_4,
    IfxMultican_MsgObjGroup_5,
    IfxMultican_MsgObjGroup_6,
    IfxMultican_MsgObjGroup_7
} IfxMultican_MsgObjGroup;



typedef enum
{
    IfxMultican_MsgObjMode_standard = 0,
    IfxMultican_MsgObjMode_receiveFifoBase = 1,
    IfxMultican_MsgObjMode_transmitFifoBase = 2,
    IfxMultican_MsgObjMode_transmitFifoSlave = 3,
    IfxMultican_MsgObjMode_gatewaySource = 4,
    IfxMultican_MsgObjMode_canFD64 = 5
} IfxMultican_MsgObjMode;




typedef enum
{
    IfxMultican_MsgObjStatusFlag_receivePending = (0u),
    IfxMultican_MsgObjStatusFlag_transmitPending = (1u),
    IfxMultican_MsgObjStatusFlag_receiveUpdating = (2u),
    IfxMultican_MsgObjStatusFlag_newData = (3u),
    IfxMultican_MsgObjStatusFlag_messageLost = (4u),
    IfxMultican_MsgObjStatusFlag_messageValid = (5u),
    IfxMultican_MsgObjStatusFlag_receiveTransmitSelected = (6u),
    IfxMultican_MsgObjStatusFlag_receiveEnable = (7u),
    IfxMultican_MsgObjStatusFlag_transmitRequest = (8u),
    IfxMultican_MsgObjStatusFlag_transmitEnable0 = (9u),
    IfxMultican_MsgObjStatusFlag_transmitEnable1 = (10u),
    IfxMultican_MsgObjStatusFlag_messageDirection = (11u)
} IfxMultican_MsgObjStatusFlag;



typedef enum
{
    IfxMultican_Priority_ListOrder = 1,
    IfxMultican_Priority_CAN_ID = 2
} IfxMultican_Priority;




typedef enum
{
    IfxMultican_SleepMode_enable = 0,
    IfxMultican_SleepMode_disable = 1
} IfxMultican_SleepMode;



typedef enum
{
    IfxMultican_Status_ok = 0x00000000,
    IfxMultican_Status_notInitialised = 0x00000001,
    IfxMultican_Status_wrongParam = 0x00000002,
    IfxMultican_Status_wrongPin = 0x00000004,
    IfxMultican_Status_busHeavy = 0x00000008,
    IfxMultican_Status_busOff = 0x00000010,
    IfxMultican_Status_notSentBusy = 0x00000020,
    IfxMultican_Status_receiveEmpty = 0x00000040,
    IfxMultican_Status_messageLost = 0x00000080,
    IfxMultican_Status_newData = 0x00000100,
    IfxMultican_Status_newDataButOneLost = IfxMultican_Status_messageLost | IfxMultican_Status_newData
} IfxMultican_Status;



typedef enum
{
    IfxMultican_SuspendMode_none = 0,
    IfxMultican_SuspendMode_hard = 1,
    IfxMultican_SuspendMode_soft = 2
} IfxMultican_SuspendMode;
# 224 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
typedef struct
{
    uint32 id;
    IfxMultican_DataLengthCode lengthCode;
    uint32 data[2];
    boolean fastBitRate;
} IfxMultican_Message;



typedef union
{
    Ifx_CAN_MO_STAT_Bits B;
    unsigned int U;
} IfxMultican_MsgObjStat;
# 251 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list);





static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleEnabled(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue);






static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect);






static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask);






static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode);





static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan);







static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleSuspended(Ifx_CAN *mcan);







static inline __attribute__ ((always_inline)) void IfxMultican_setSuspendMode(Ifx_CAN *mcan, IfxMultican_SuspendMode mode);
# 378 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setFastBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 389 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setNominalBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);






extern void IfxMultican_deinit(Ifx_CAN *mcan);





extern void IfxMultican_resetModule(Ifx_CAN *can);
# 411 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_setListCommand(Ifx_CAN *mcan, uint32 cmd, uint32 arg2, uint32 arg1);




extern IfxMultican_Index IfxMultican_getIndex(Ifx_CAN *multican);





extern Ifx_CAN *IfxMultican_getAddress(IfxMultican_Index multican);
# 437 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, boolean mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, boolean mode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value);
# 624 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_deinit(Ifx_CAN_N *hwNode);
# 633 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_Node_initRxPin(Ifx_CAN_N *hwNode, IfxMultican_Rxd_In *rxd, IfxPort_InputMode mode, IfxPort_PadDriver padDriver);
# 642 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_Node_initTxPin(Ifx_CAN_N *hwNode, IfxMultican_Txd_Out *txd, IfxPort_OutputMode mode, IfxPort_PadDriver padDriver);





extern IfxMultican_Status IfxMultican_Node_recoverBusOff(Ifx_CAN_N *hwNode);
# 659 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 669 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_calcTimingFromBTR(float32 moduleFreq, uint32 btr, uint32 *baudrate, uint16 *samplePoint, uint16 *synchJumpWidth);
# 688 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode);
# 697 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, boolean fastBitRate);
# 712 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj);






static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTransmitRequested(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, boolean extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, boolean extension);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, boolean matchingId);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, boolean extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);
# 982 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_MsgObj_cancelSend(Ifx_CAN_MO *hwObj);






extern void IfxMultican_MsgObj_clearStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);







extern void IfxMultican_MsgObj_deinit(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






extern IfxMultican_MsgObjId IfxMultican_MsgObj_getPendingId(Ifx_CAN *mcan, IfxMultican_MsgObjGroup msgObjGroup);





extern IfxMultican_MsgObjStat IfxMultican_MsgObj_getStatus(Ifx_CAN_MO *hwObj);






extern boolean IfxMultican_MsgObj_getStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 1029 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);
# 1039 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg);
# 1049 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_sendLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);







extern IfxMultican_Status IfxMultican_MsgObj_sendMessage(Ifx_CAN_MO *hwObj, const IfxMultican_Message *msg);
# 1066 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_MsgObj_setFilter(Ifx_CAN_MO *hwObj, boolean extend, uint32 id, uint32 accMask);






extern void IfxMultican_MsgObj_setStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 1089 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Std/IfxMultican.h"
extern volatile Ifx_SRC_SRCR *IfxMultican_getSrcPointer(Ifx_CAN *mcan, IfxMultican_SrcId srcId);







static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode)
{
    msg->id = id;
    msg->data[0] = dataLow;
    msg->data[1] = dataHigh;
    msg->lengthCode = lengthCode;

    msg->fastBitRate = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, boolean fastBitRate)
{
    msg->id = id;
    msg->data[0] = 0;
    msg->data[1] = 0;
    msg->lengthCode = lengthCode;
    msg->fastBitRate = fastBitRate;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj)
{
    hwObj->DATAL.U = 0;
    hwObj->DATAH.U = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj)
{
    hwObj->FGPR.U = 0x0000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receivePending);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitPending);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->FGPR.B.BOT);
}


static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_DataLengthCode)(hwObj->FCR.B.DLC);
}


static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj)
{
    Ifx_CAN_MO_AR ar;
    ar.U = hwObj->AR.U;
    return ar.B.ID >> ((ar.B.IDE != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->STAT.B.PNEXT);
}


static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId)
{
    return &(mcan->MO[msgObjId]);
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj)
{
    return hwObj->AR.B.IDE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.RXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTransmitRequested(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.TXRQ ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.TXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, boolean extendedFrame)
{
    hwObj->AMR.B.AM = mask << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.BRS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.BOT = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.CUR = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.DATC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code)
{
    hwObj->FCR.B.DLC = code;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.DLCC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.FDF = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.GDFS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.IDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, boolean extension)
{
    hwObj->AR.B.IDE = extension;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, boolean matchingId)
{
    hwObj->AMR.B.MIDE = matchingId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, boolean extendedFrame)
{
    hwObj->AR.B.ID = messageId << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode)
{
    hwObj->FCR.B.MMC = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber)
{
    hwObj->IPR.B.MPN = messageNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.OVIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority)
{
    hwObj->AR.B.PRI = priority;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.RXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.RXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.RMM = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.SEL = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.SDT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.STT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.TOP = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.TXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.TXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 1U;
}


static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node)
{
    return &(mcan->N[node]);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode)
{
    hwNode->CR.U = 0x00000041U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode)
{
    hwNode->ECNT.U = 0x00600000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode)
{
    hwNode->IPR.U = 0x00000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.ALIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.ALINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, boolean mode)
{
    hwNode->CR.B.CALM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level)
{
    hwNode->ECNT.B.EWRNLVL = level;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.INIT = 1;
    hwNode->CR.B.FDEN = enabled ? 1 : 0;
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->FCR.B.CFCIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.CFCINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode)
{
    hwNode->FCR.B.CFMOD = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.LECIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.LECINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, boolean mode)
{
    hwNode->PCR.B.LBM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.REC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TEINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->TDCR.B.TDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value)
{
    hwNode->TDCR.B.TDCO = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.TRIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TRINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.TEC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan)
{
    mcan->MCR.B.MPSEL = 0x0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list)
{
    mcan->MSPND[list].U = 0x0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 0U;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan)
{
    return mcan->FDR.B.DM;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan)
{
    return mcan->FDR.B.STEP;
}


static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan)
{
    return (IfxMultican_ClockSelect)mcan->MCR.B.CLKSEL;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleEnabled(Ifx_CAN *mcan)
{
    return mcan->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode)
{
    mcan->FDR.B.DM = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue)
{
    mcan->FDR.B.STEP = stepValue;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect)
{
    mcan->MCR.B.CLKSEL = clockSelect;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask)
{
    mcan->MSIMASK.U = mask;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    can->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan)
{
    while (mcan->PANCTR.B.BUSY != 0)
    {}
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleSuspended(Ifx_CAN *mcan)
{
    Ifx_CAN_OCS ocs;


    ocs.U = mcan->OCS.U;


    return ocs.B.SUSSTA;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setSuspendMode(Ifx_CAN *mcan, IfxMultican_SuspendMode mode)
{
    Ifx_CAN_OCS ocs;


    ocs.B.SUS_P = 1;
    ocs.B.SUS = mode;
    mcan->OCS.U = ocs.U;
}
# 752 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h" 2

# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxScu_regdef.h" 1
# 754 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h" 2
# 763 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
typedef struct
{
    uint32 nominalBaudrate;
    uint16 nominalSynchJumpWidth;
    uint16 nominalSamplePoint;
    uint32 fastBaudrate;
    uint16 fastSynchJumpWidth;
    uint16 fastSamplePoint;
    uint16 loopDelayOffset;
} IfxMultican_Can_FdConfig;



typedef struct
{
    uint32 copyDataLengthCode : 1;
    uint32 copyData : 1;
    uint32 copyId : 1;
    uint32 enableTransmit : 1;
    IfxMultican_MsgObjId gatewayDstObjId;
} IfxMultican_Can_GatewayConfig;



typedef struct
{
    uint16 priority;
    IfxSrc_Tos typeOfService;
} IfxMultican_Can_InterruptConfig;



typedef struct
{
    boolean enabled;
    IfxMultican_SrcId srcId;
} IfxMultican_Can_InterruptSource;



typedef struct
{
    uint32 singleDataTransfer : 1;
    uint32 singleTransmitTrial : 1;
    IfxMultican_DataLengthCode messageLen;
    uint32 extendedFrame : 1;
    uint32 matchingId : 1;
    IfxMultican_MsgObjId topMsgObjId;
    IfxMultican_MsgObjId bottomMsgObjId;
    uint32 fastBitRate : 1;
} IfxMultican_Can_MsgObjControl;



typedef struct
{
    Ifx_CAN *mcan;
    Ifx_CAN_N *node;
    IfxMultican_NodeId nodeId;
    boolean fastNode;
} IfxMultican_Can_Node;







typedef struct
{
    Ifx_CAN *mcan;
} IfxMultican_Can;



typedef struct
{
    Ifx_CAN *module;
    IfxMultican_ClockSelect clockSelect;
    float32 moduleFreq;
    IfxMultican_Can_InterruptConfig nodePointer[(16)];
} IfxMultican_Can_Config;



typedef struct
{
    IfxMultican_Can_Node *node;
    IfxMultican_MsgObjId msgObjId;
    uint16 msgObjCount;
    IfxMultican_MsgObjId fifoPointer;
} IfxMultican_Can_MsgObj;



typedef struct
{
    IfxMultican_Can_Node *node;
    IfxMultican_MsgObjId msgObjId;
    uint16 msgObjCount;
    IfxMultican_Can_MsgObjControl control;
    IfxMultican_Frame frame;
    uint32 acceptanceMask;
    uint32 messageId;
    IfxMultican_Priority priority;
    IfxMultican_Can_InterruptSource rxInterrupt;
    IfxMultican_Can_InterruptSource txInterrupt;
    uint32 gatewayTransfers : 1;
    IfxMultican_Can_GatewayConfig gatewayConfig;
    IfxMultican_MsgObjId firstSlaveObjId;
} IfxMultican_Can_MsgObjConfig;



typedef struct
{
    Ifx_CAN *module;
    IfxMultican_NodeId nodeId;
    boolean analyzerMode;
    boolean loopBackMode;
    uint32 baudrate;
    uint16 samplePoint;
    uint16 synchJumpWidth;
    boolean flexibleDataRate;
    IfxMultican_Can_FdConfig fdConfig;
    IfxMultican_Rxd_In *rxPin;
    IfxPort_InputMode rxPinMode;
    IfxMultican_Txd_Out *txPin;
    IfxPort_OutputMode txPinMode;
    uint8 errorWarningLevel;
    IfxMultican_Can_InterruptSource transferInterrupt;
    IfxMultican_Can_InterruptSource lastErrorCodeInterrupt;
    IfxMultican_Can_InterruptSource alertInterrupt;
    IfxMultican_Can_InterruptSource frameCounterInterrupt;
    IfxMultican_Can_InterruptSource timerInterrupt;
    IfxPort_PadDriver pinDriver;
} IfxMultican_Can_NodeConfig;
# 915 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_deinit(IfxMultican_Can *mcan);
# 926 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_getConfig(IfxMultican_Can *mcan, IfxMultican_Can_Config *config);





extern float32 IfxMultican_Can_getModuleFrequency(IfxMultican_Can *mcan);
# 947 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_initModule(IfxMultican_Can *mcan, const IfxMultican_Can_Config *config);
# 957 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_initModuleConfig(IfxMultican_Can_Config *config, Ifx_CAN *mcan);
# 972 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_activate(IfxMultican_Can_Node *node);





static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deactivate(IfxMultican_Can_Node *node);





static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deinit(IfxMultican_Can_Node *node);
# 998 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_Node_recoverBusOff(IfxMultican_Can_Node *node);
# 1009 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_getConfig(IfxMultican_Can_Node *node, IfxMultican_Can_NodeConfig *config);
# 1019 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_Node_init(IfxMultican_Can_Node *node, const IfxMultican_Can_NodeConfig *config);
# 1029 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_initConfig(IfxMultican_Can_NodeConfig *config, IfxMultican_Can *mcan);
# 1038 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_Node_sendToBusOff(IfxMultican_Can_Node *node);
# 1054 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) boolean IfxMultican_Can_MsgObj_cancelSend(IfxMultican_Can_MsgObj *msgObj);
# 1063 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearRxPending(IfxMultican_Can_MsgObj *msgObj);
# 1072 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearTxPending(IfxMultican_Can_MsgObj *msgObj);






static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_deinit(IfxMultican_Can_MsgObj *msgObj);






static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_Can_MsgObj_getPendingId(IfxMultican_Can_MsgObj *msgObj, IfxMultican_MsgObjGroup msgObjGroup);
# 1095 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_MsgObjStat IfxMultican_Can_MsgObj_getStatus(IfxMultican_Can_MsgObj *msgObj);
# 1109 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_readLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data);
# 1121 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_sendLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data);
# 1132 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_MsgObj_getConfig(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Can_MsgObjConfig *config);
# 1142 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_init(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Can_MsgObjConfig *config);
# 1152 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern void IfxMultican_Can_MsgObj_initConfig(IfxMultican_Can_MsgObjConfig *config, IfxMultican_Can_Node *node);





extern boolean IfxMultican_Can_MsgObj_isRxPending(IfxMultican_Can_MsgObj *msgObj);





extern boolean IfxMultican_Can_MsgObj_isTransmitRequested(IfxMultican_Can_MsgObj *msgObj);





extern boolean IfxMultican_Can_MsgObj_isTxPending(IfxMultican_Can_MsgObj *msgObj);
# 1183 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_readMessage(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg);
# 1194 "0_Src/BaseSw/iLLD/TC23A/Tricore/Multican/Can/IfxMultican_Can.h"
extern IfxMultican_Status IfxMultican_Can_MsgObj_sendMessage(IfxMultican_Can_MsgObj *msgObj, const IfxMultican_Message *msg);







static inline __attribute__ ((always_inline)) boolean IfxMultican_Can_MsgObj_cancelSend(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    return IfxMultican_MsgObj_cancelSend(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearRxPending(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    IfxMultican_MsgObj_clearRxPending(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_clearTxPending(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    IfxMultican_MsgObj_clearTxPending(hwObj);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_MsgObj_deinit(IfxMultican_Can_MsgObj *msgObj)
{
    IfxMultican_MsgObj_deinit(msgObj->node->mcan, msgObj->msgObjId);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_Can_MsgObj_getPendingId(IfxMultican_Can_MsgObj *msgObj, IfxMultican_MsgObjGroup msgObjGroup)
{
    return IfxMultican_MsgObj_getPendingId(msgObj->node->mcan, msgObjGroup);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjStat IfxMultican_Can_MsgObj_getStatus(IfxMultican_Can_MsgObj *msgObj)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(msgObj->node->mcan, msgObj->msgObjId);

    return IfxMultican_MsgObj_getStatus(hwObj);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_readLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data)
{
    return IfxMultican_MsgObj_readLongFrame(msgObj->node->mcan, msgObj->msgObjId, msg, data);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_MsgObj_sendLongFrame(IfxMultican_Can_MsgObj *msgObj, IfxMultican_Message *msg, uint32 *data)
{
    return IfxMultican_MsgObj_sendLongFrame(msgObj->node->mcan, msgObj->msgObjId, msg, data);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_activate(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    IfxMultican_Node_activate(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deactivate(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);
    IfxMultican_Node_deactivate(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_Node_deinit(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    IfxMultican_Node_deinit(hwNode);
}


static inline __attribute__ ((always_inline)) IfxMultican_Status IfxMultican_Can_Node_recoverBusOff(IfxMultican_Can_Node *node)
{
    Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(node->mcan, node->nodeId);

    return IfxMultican_Node_recoverBusOff(hwNode);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Can_deinit(IfxMultican_Can *mcan)
{
    IfxMultican_deinit(mcan->mcan);
}
# 19 "0_Src/AppSw/Tricore/HLD/BasicModules/MultiCAN/Multican.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/HLD.h" 1
# 21 "0_Src/AppSw/Tricore/HLD/BasicModules/MultiCAN/Multican.h" 2
# 51 "0_Src/AppSw/Tricore/HLD/BasicModules/MultiCAN/Multican.h"
typedef struct{
 boolean isUpdated;
 IfxMultican_Can_MsgObj msgObj;
 IfxMultican_MsgObjId msgObjId;
 uint32 msgId;
 sint8 nodeId;
 boolean canId;
 boolean canType;
 IfxMultican_Message message;
}HLD_MultiCan_Message;


typedef struct{
 sint8 nodeId;
 boolean canId;
 uint64 msgId;
 boolean canType;
}HLD_Multican_msgConfig;


typedef struct{
 sint8 nodeId;
 IfxMultican_Can_Node ifxCanNode;
 IfxMultican_Rxd_In *rxPin;
 IfxMultican_Txd_Out *txPin;
 uint32 baudrate;
}HLD_MultiCan_Can_Node;

typedef struct
{
    struct
    {
     struct{
      IfxMultican_Can can;
      HLD_MultiCan_Can_Node node0;
      HLD_MultiCan_Can_Node node1;
      HLD_MultiCan_Can_Node node2;



      uint8 msgCnt;

     }can0;

     struct{
      IfxMultican_Can can;
      HLD_MultiCan_Can_Node node0;
      HLD_MultiCan_Can_Node node1;
      HLD_MultiCan_Can_Node node2;
      uint8 msgCnt;
     }can1;

    }drivers;
} Multican_t;



extern Multican_t g_Multican;




extern void HLD_Multican_init (void);
extern void HLD_Multican_setMsgConfig(HLD_MultiCan_Message *msg, HLD_Multican_msgConfig config);
extern void HLD_Multican_initMessage(HLD_MultiCan_Message *msg);

extern void HLD_Multican_receiveMessage(HLD_MultiCan_Message *msg);
extern void HLD_Multican_transmitMessage(HLD_MultiCan_Message *msg);





static inline __attribute__ ((always_inline)) void HLD_Multican_setMessageId(HLD_MultiCan_Message *msg, uint32 msgId)
{
 msg->msgId = msgId;
}

static inline __attribute__ ((always_inline)) void HLD_Multican_setNodeBaudrate(HLD_MultiCan_Can_Node *Node, uint32 baud)
{
 Node->baudrate = baud;
}

static inline __attribute__ ((always_inline)) void HLD_Multican_resetUpdatedVaule(HLD_MultiCan_Message *msg)
{
 msg->isUpdated = 0;
}

static inline __attribute__ ((always_inline)) void HLD_Multican_setMessage_data(uint32 data0, uint32 data1, HLD_MultiCan_Message *msg)
{
 msg->message.data[0] = data0;
 msg->message.data[1] = data1;
}
# 139 "0_Src/AppSw/Tricore/HLD/HLD.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h" 1
# 16 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 1
# 53 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxVadc_cfg.h" 1
# 99 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxVadc_cfg.h"
typedef enum
{
    IfxVadc_GroupId_0,
    IfxVadc_GroupId_1,
    IfxVadc_GroupId_global0,
    IfxVadc_GroupId_global1
} IfxVadc_GroupId;






extern const uint32 IfxVadc_cfg_srcAddresses[((2) *4) + ((1) * 4) ];
# 54 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxVadc_PinMap.h" 1
# 31 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxVadc_PinMap.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_reg.h" 1
# 36 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_regdef.h" 1
# 49 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_regdef.h"
typedef struct _Ifx_VADC_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_VADC_ACCEN0_Bits;


typedef struct _Ifx_VADC_ACCPROT0_Bits
{
    unsigned int APC0 : 1;
    unsigned int APC1 : 1;
    unsigned int APC2 : 1;
    unsigned int APC3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int APEM : 1;
    unsigned int API0 : 1;
    unsigned int API1 : 1;
    unsigned int API2 : 1;
    unsigned int API3 : 1;
    unsigned int reserved_20 : 11;
    unsigned int APGC : 1;
} Ifx_VADC_ACCPROT0_Bits;


typedef struct _Ifx_VADC_ACCPROT1_Bits
{
    unsigned int APS0 : 1;
    unsigned int APS1 : 1;
    unsigned int APS2 : 1;
    unsigned int APS3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int APTF : 1;
    unsigned int APR0 : 1;
    unsigned int APR1 : 1;
    unsigned int APR2 : 1;
    unsigned int APR3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_ACCPROT1_Bits;


typedef struct _Ifx_VADC_BRSCTRL_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 8;
} Ifx_VADC_BRSCTRL_Bits;


typedef struct _Ifx_VADC_BRSMR_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int ENSI : 1;
    unsigned int SCAN : 1;
    unsigned int LDM : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int CLRPND : 1;
    unsigned int LDEV : 1;
    unsigned int reserved_10 : 6;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_BRSMR_Bits;


typedef struct _Ifx_VADC_BRSPND_Bits
{
    unsigned int CHPNDGy : 32;
} Ifx_VADC_BRSPND_Bits;


typedef struct _Ifx_VADC_BRSSEL_Bits
{
    unsigned int CHSELGy : 32;
} Ifx_VADC_BRSSEL_Bits;


typedef struct _Ifx_VADC_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_CLC_Bits;


typedef struct _Ifx_VADC_EMUXSEL_Bits
{
    unsigned int EMUXGRP0 : 4;
    unsigned int EMUXGRP1 : 4;
    unsigned int reserved_8 : 24;
} Ifx_VADC_EMUXSEL_Bits;


typedef struct _Ifx_VADC_G_ALIAS_Bits
{
    unsigned int ALIAS0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int ALIAS1 : 5;
    unsigned int reserved_13 : 19;
} Ifx_VADC_G_ALIAS_Bits;


typedef struct _Ifx_VADC_G_ARBCFG_Bits
{
    unsigned int ANONC : 2;
    unsigned int reserved_2 : 2;
    unsigned int ARBRND : 2;
    unsigned int reserved_6 : 1;
    unsigned int ARBM : 1;
    unsigned int reserved_8 : 8;
    unsigned int ANONS : 2;
    unsigned int CSRC : 2;
    unsigned int CHNR : 5;
    unsigned int SYNRUN : 1;
    unsigned int reserved_26 : 2;
    unsigned int CAL : 1;
    unsigned int CALS : 1;
    unsigned int BUSY : 1;
    unsigned int SAMPLE : 1;
} Ifx_VADC_G_ARBCFG_Bits;


typedef struct _Ifx_VADC_G_ARBPR_Bits
{
    unsigned int PRIO0 : 2;
    unsigned int reserved_2 : 1;
    unsigned int CSM0 : 1;
    unsigned int PRIO1 : 2;
    unsigned int reserved_6 : 1;
    unsigned int CSM1 : 1;
    unsigned int PRIO2 : 2;
    unsigned int reserved_10 : 1;
    unsigned int CSM2 : 1;
    unsigned int PRIO3 : 2;
    unsigned int reserved_14 : 1;
    unsigned int CSM3 : 1;
    unsigned int reserved_16 : 8;
    unsigned int ASEN0 : 1;
    unsigned int ASEN1 : 1;
    unsigned int ASEN2 : 1;
    unsigned int ASEN3 : 1;
    unsigned int reserved_28 : 4;
} Ifx_VADC_G_ARBPR_Bits;


typedef struct _Ifx_VADC_G_ASCTRL_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_ASCTRL_Bits;


typedef struct _Ifx_VADC_G_ASMR_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int ENSI : 1;
    unsigned int SCAN : 1;
    unsigned int LDM : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int CLRPND : 1;
    unsigned int LDEV : 1;
    unsigned int reserved_10 : 6;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_ASMR_Bits;


typedef struct _Ifx_VADC_G_ASPND_Bits
{
    unsigned int CHPND : 32;
} Ifx_VADC_G_ASPND_Bits;


typedef struct _Ifx_VADC_G_ASSEL_Bits
{
    unsigned int CHSEL : 32;
} Ifx_VADC_G_ASSEL_Bits;


typedef struct _Ifx_VADC_G_BFL_Bits
{
    unsigned int BFL0 : 1;
    unsigned int BFL1 : 1;
    unsigned int BFL2 : 1;
    unsigned int BFL3 : 1;
    unsigned int reserved_4 : 4;
    unsigned int BFA0 : 1;
    unsigned int BFA1 : 1;
    unsigned int BFA2 : 1;
    unsigned int BFA3 : 1;
    unsigned int reserved_12 : 4;
    unsigned int BFI0 : 1;
    unsigned int BFI1 : 1;
    unsigned int BFI2 : 1;
    unsigned int BFI3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_G_BFL_Bits;


typedef struct _Ifx_VADC_G_BFLC_Bits
{
    unsigned int BFM0 : 4;
    unsigned int BFM1 : 4;
    unsigned int BFM2 : 4;
    unsigned int BFM3 : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_BFLC_Bits;


typedef struct _Ifx_VADC_G_BFLNP_Bits
{
    unsigned int BFL0NP : 4;
    unsigned int BFL1NP : 4;
    unsigned int BFL2NP : 4;
    unsigned int BFL3NP : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_BFLNP_Bits;


typedef struct _Ifx_VADC_G_BFLS_Bits
{
    unsigned int BFC0 : 1;
    unsigned int BFC1 : 1;
    unsigned int BFC2 : 1;
    unsigned int BFC3 : 1;
    unsigned int reserved_4 : 12;
    unsigned int BFS0 : 1;
    unsigned int BFS1 : 1;
    unsigned int BFS2 : 1;
    unsigned int BFS3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_G_BFLS_Bits;


typedef struct _Ifx_VADC_G_BOUND_Bits
{
    unsigned int BOUNDARY0 : 12;
    unsigned int reserved_12 : 4;
    unsigned int BOUNDARY1 : 12;
    unsigned int reserved_28 : 4;
} Ifx_VADC_G_BOUND_Bits;


typedef struct _Ifx_VADC_G_CEFCLR_Bits
{
    unsigned int CEV0 : 1;
    unsigned int CEV1 : 1;
    unsigned int CEV2 : 1;
    unsigned int CEV3 : 1;
    unsigned int CEV4 : 1;
    unsigned int CEV5 : 1;
    unsigned int CEV6 : 1;
    unsigned int CEV7 : 1;
    unsigned int CEV8 : 1;
    unsigned int CEV9 : 1;
    unsigned int CEV10 : 1;
    unsigned int CEV11 : 1;
    unsigned int CEV12 : 1;
    unsigned int CEV13 : 1;
    unsigned int CEV14 : 1;
    unsigned int CEV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_CEFCLR_Bits;


typedef struct _Ifx_VADC_G_CEFLAG_Bits
{
    unsigned int CEV0 : 1;
    unsigned int CEV1 : 1;
    unsigned int CEV2 : 1;
    unsigned int CEV3 : 1;
    unsigned int CEV4 : 1;
    unsigned int CEV5 : 1;
    unsigned int CEV6 : 1;
    unsigned int CEV7 : 1;
    unsigned int CEV8 : 1;
    unsigned int CEV9 : 1;
    unsigned int CEV10 : 1;
    unsigned int CEV11 : 1;
    unsigned int CEV12 : 1;
    unsigned int CEV13 : 1;
    unsigned int CEV14 : 1;
    unsigned int CEV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_CEFLAG_Bits;


typedef struct _Ifx_VADC_G_CEVNP0_Bits
{
    unsigned int CEV0NP : 4;
    unsigned int CEV1NP : 4;
    unsigned int CEV2NP : 4;
    unsigned int CEV3NP : 4;
    unsigned int CEV4NP : 4;
    unsigned int CEV5NP : 4;
    unsigned int CEV6NP : 4;
    unsigned int CEV7NP : 4;
} Ifx_VADC_G_CEVNP0_Bits;


typedef struct _Ifx_VADC_G_CEVNP1_Bits
{
    unsigned int CEV8NP : 4;
    unsigned int CEV9NP : 4;
    unsigned int CEV10NP : 4;
    unsigned int CEV11NP : 4;
    unsigned int CEV12NP : 4;
    unsigned int CEV13NP : 4;
    unsigned int CEV14NP : 4;
    unsigned int CEV15NP : 4;
} Ifx_VADC_G_CEVNP1_Bits;


typedef struct _Ifx_VADC_G_CHASS_Bits
{
    unsigned int ASSCH0 : 1;
    unsigned int ASSCH1 : 1;
    unsigned int ASSCH2 : 1;
    unsigned int ASSCH3 : 1;
    unsigned int ASSCH4 : 1;
    unsigned int ASSCH5 : 1;
    unsigned int ASSCH6 : 1;
    unsigned int ASSCH7 : 1;
    unsigned int ASSCH8 : 1;
    unsigned int ASSCH9 : 1;
    unsigned int ASSCH10 : 1;
    unsigned int ASSCH11 : 1;
    unsigned int ASSCH12 : 1;
    unsigned int ASSCH13 : 1;
    unsigned int ASSCH14 : 1;
    unsigned int ASSCH15 : 1;
    unsigned int ASSCH16 : 1;
    unsigned int ASSCH17 : 1;
    unsigned int ASSCH18 : 1;
    unsigned int ASSCH19 : 1;
    unsigned int ASSCH20 : 1;
    unsigned int ASSCH21 : 1;
    unsigned int ASSCH22 : 1;
    unsigned int ASSCH23 : 1;
    unsigned int ASSCH24 : 1;
    unsigned int ASSCH25 : 1;
    unsigned int ASSCH26 : 1;
    unsigned int ASSCH27 : 1;
    unsigned int ASSCH28 : 1;
    unsigned int ASSCH29 : 1;
    unsigned int ASSCH30 : 1;
    unsigned int ASSCH31 : 1;
} Ifx_VADC_G_CHASS_Bits;


typedef struct _Ifx_VADC_G_CHCTR_Bits
{
    unsigned int ICLSEL : 2;
    unsigned int reserved_2 : 2;
    unsigned int BNDSELL : 2;
    unsigned int BNDSELU : 2;
    unsigned int CHEVMODE : 2;
    unsigned int SYNC : 1;
    unsigned int REFSEL : 1;
    unsigned int BNDSELX : 4;
    unsigned int RESREG : 4;
    unsigned int RESTBS : 1;
    unsigned int RESPOS : 1;
    unsigned int reserved_22 : 6;
    unsigned int BWDCH : 2;
    unsigned int BWDEN : 1;
    unsigned int reserved_31 : 1;
} Ifx_VADC_G_CHCTR_Bits;


typedef struct _Ifx_VADC_G_EMUXCTR_Bits
{
    unsigned int EMUXSET : 3;
    unsigned int reserved_3 : 5;
    unsigned int EMUXACT : 3;
    unsigned int reserved_11 : 5;
    unsigned int EMUXCH : 10;
    unsigned int EMUXMODE : 2;
    unsigned int EMXCOD : 1;
    unsigned int EMXST : 1;
    unsigned int EMXCSS : 1;
    unsigned int EMXWC : 1;
} Ifx_VADC_G_EMUXCTR_Bits;


typedef struct _Ifx_VADC_G_Q0R0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_Q0R0_Bits;


typedef struct _Ifx_VADC_G_Q0R3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_Q0R3_Bits;


typedef struct _Ifx_VADC_G_QBUR0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QBUR0_Bits;


typedef struct _Ifx_VADC_G_QBUR3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_QBUR3_Bits;


typedef struct _Ifx_VADC_G_QCTRL0_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_QCTRL0_Bits;


typedef struct _Ifx_VADC_G_QCTRL3_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_QCTRL3_Bits;


typedef struct _Ifx_VADC_G_QINR0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int reserved_8 : 24;
} Ifx_VADC_G_QINR0_Bits;


typedef struct _Ifx_VADC_G_QINR3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int reserved_8 : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_QINR3_Bits;


typedef struct _Ifx_VADC_G_QMR0_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int reserved_3 : 5;
    unsigned int CLRV : 1;
    unsigned int TREV : 1;
    unsigned int FLUSH : 1;
    unsigned int CEV : 1;
    unsigned int reserved_12 : 4;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_QMR0_Bits;


typedef struct _Ifx_VADC_G_QMR3_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int reserved_3 : 5;
    unsigned int CLRV : 1;
    unsigned int TREV : 1;
    unsigned int FLUSH : 1;
    unsigned int CEV : 1;
    unsigned int reserved_12 : 4;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_QMR3_Bits;


typedef struct _Ifx_VADC_G_QSR0_Bits
{
    unsigned int FILL : 4;
    unsigned int reserved_4 : 1;
    unsigned int EMPTY : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int EV : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QSR0_Bits;


typedef struct _Ifx_VADC_G_QSR3_Bits
{
    unsigned int FILL : 4;
    unsigned int reserved_4 : 1;
    unsigned int EMPTY : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int EV : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QSR3_Bits;


typedef struct _Ifx_VADC_G_RCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int DRCTR : 4;
    unsigned int DMM : 2;
    unsigned int reserved_22 : 2;
    unsigned int WFR : 1;
    unsigned int FEN : 2;
    unsigned int reserved_27 : 4;
    unsigned int SRGEN : 1;
} Ifx_VADC_G_RCR_Bits;


typedef struct _Ifx_VADC_G_REFCLR_Bits
{
    unsigned int REV0 : 1;
    unsigned int REV1 : 1;
    unsigned int REV2 : 1;
    unsigned int REV3 : 1;
    unsigned int REV4 : 1;
    unsigned int REV5 : 1;
    unsigned int REV6 : 1;
    unsigned int REV7 : 1;
    unsigned int REV8 : 1;
    unsigned int REV9 : 1;
    unsigned int REV10 : 1;
    unsigned int REV11 : 1;
    unsigned int REV12 : 1;
    unsigned int REV13 : 1;
    unsigned int REV14 : 1;
    unsigned int REV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_REFCLR_Bits;


typedef struct _Ifx_VADC_G_REFLAG_Bits
{
    unsigned int REV0 : 1;
    unsigned int REV1 : 1;
    unsigned int REV2 : 1;
    unsigned int REV3 : 1;
    unsigned int REV4 : 1;
    unsigned int REV5 : 1;
    unsigned int REV6 : 1;
    unsigned int REV7 : 1;
    unsigned int REV8 : 1;
    unsigned int REV9 : 1;
    unsigned int REV10 : 1;
    unsigned int REV11 : 1;
    unsigned int REV12 : 1;
    unsigned int REV13 : 1;
    unsigned int REV14 : 1;
    unsigned int REV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_REFLAG_Bits;


typedef struct _Ifx_VADC_G_RES_Bits
{
    unsigned int RESULT : 16;
    unsigned int DRC : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_G_RES_Bits;


typedef struct _Ifx_VADC_G_RESD_Bits
{
    unsigned int RESULT : 16;
    unsigned int DRC : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_G_RESD_Bits;


typedef struct _Ifx_VADC_G_REVNP0_Bits
{
    unsigned int REV0NP : 4;
    unsigned int REV1NP : 4;
    unsigned int REV2NP : 4;
    unsigned int REV3NP : 4;
    unsigned int REV4NP : 4;
    unsigned int REV5NP : 4;
    unsigned int REV6NP : 4;
    unsigned int REV7NP : 4;
} Ifx_VADC_G_REVNP0_Bits;


typedef struct _Ifx_VADC_G_REVNP1_Bits
{
    unsigned int REV8NP : 4;
    unsigned int REV9NP : 4;
    unsigned int REV10NP : 4;
    unsigned int REV11NP : 4;
    unsigned int REV12NP : 4;
    unsigned int REV13NP : 4;
    unsigned int REV14NP : 4;
    unsigned int REV15NP : 4;
} Ifx_VADC_G_REVNP1_Bits;


typedef struct _Ifx_VADC_G_RRASS_Bits
{
    unsigned int ASSRR0 : 1;
    unsigned int ASSRR1 : 1;
    unsigned int ASSRR2 : 1;
    unsigned int ASSRR3 : 1;
    unsigned int ASSRR4 : 1;
    unsigned int ASSRR5 : 1;
    unsigned int ASSRR6 : 1;
    unsigned int ASSRR7 : 1;
    unsigned int ASSRR8 : 1;
    unsigned int ASSRR9 : 1;
    unsigned int ASSRR10 : 1;
    unsigned int ASSRR11 : 1;
    unsigned int ASSRR12 : 1;
    unsigned int ASSRR13 : 1;
    unsigned int ASSRR14 : 1;
    unsigned int ASSRR15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_RRASS_Bits;


typedef struct _Ifx_VADC_G_SEFCLR_Bits
{
    unsigned int SEV0 : 1;
    unsigned int SEV1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SEV3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_G_SEFCLR_Bits;


typedef struct _Ifx_VADC_G_SEFLAG_Bits
{
    unsigned int SEV0 : 1;
    unsigned int SEV1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SEV3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_G_SEFLAG_Bits;


typedef struct _Ifx_VADC_G_SEVNP_Bits
{
    unsigned int SEV0NP : 4;
    unsigned int SEV1NP : 4;
    unsigned int reserved_8 : 4;
    unsigned int SEV3NP : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_SEVNP_Bits;


typedef struct _Ifx_VADC_G_SRACT_Bits
{
    unsigned int AGSR0 : 1;
    unsigned int AGSR1 : 1;
    unsigned int AGSR2 : 1;
    unsigned int AGSR3 : 1;
    unsigned int reserved_4 : 4;
    unsigned int ASSR0 : 1;
    unsigned int ASSR1 : 1;
    unsigned int ASSR2 : 1;
    unsigned int ASSR3 : 1;
    unsigned int reserved_12 : 20;
} Ifx_VADC_G_SRACT_Bits;


typedef struct _Ifx_VADC_G_SYNCTR_Bits
{
    unsigned int STSEL : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVALR1 : 1;
    unsigned int EVALR2 : 1;
    unsigned int EVALR3 : 1;
    unsigned int reserved_7 : 25;
} Ifx_VADC_G_SYNCTR_Bits;


typedef struct _Ifx_VADC_G_TRCTR_Bits
{
    unsigned int TSC : 6;
    unsigned int reserved_6 : 8;
    unsigned int Q3ACT : 1;
    unsigned int OV : 1;
    unsigned int TSCSET : 6;
    unsigned int reserved_22 : 2;
    unsigned int ITSEL : 2;
    unsigned int reserved_26 : 2;
    unsigned int SRDIS : 1;
    unsigned int reserved_29 : 2;
    unsigned int COV : 1;
} Ifx_VADC_G_TRCTR_Bits;


typedef struct _Ifx_VADC_G_VFR_Bits
{
    unsigned int VF0 : 1;
    unsigned int VF1 : 1;
    unsigned int VF2 : 1;
    unsigned int VF3 : 1;
    unsigned int VF4 : 1;
    unsigned int VF5 : 1;
    unsigned int VF6 : 1;
    unsigned int VF7 : 1;
    unsigned int VF8 : 1;
    unsigned int VF9 : 1;
    unsigned int VF10 : 1;
    unsigned int VF11 : 1;
    unsigned int VF12 : 1;
    unsigned int VF13 : 1;
    unsigned int VF14 : 1;
    unsigned int VF15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_VFR_Bits;


typedef struct _Ifx_VADC_GLOBBOUND_Bits
{
    unsigned int BOUNDARY0 : 12;
    unsigned int reserved_12 : 4;
    unsigned int BOUNDARY1 : 12;
    unsigned int reserved_28 : 4;
} Ifx_VADC_GLOBBOUND_Bits;


typedef struct _Ifx_VADC_GLOBCFG_Bits
{
    unsigned int DIVA : 5;
    unsigned int reserved_5 : 2;
    unsigned int DCMSB : 1;
    unsigned int DIVD : 2;
    unsigned int reserved_10 : 2;
    unsigned int REFPC : 1;
    unsigned int reserved_13 : 1;
    unsigned int LOSUP : 1;
    unsigned int DIVWC : 1;
    unsigned int DPCAL0 : 1;
    unsigned int DPCAL1 : 1;
    unsigned int DPCAL2 : 1;
    unsigned int DPCAL3 : 1;
    unsigned int reserved_20 : 11;
    unsigned int SUCAL : 1;
} Ifx_VADC_GLOBCFG_Bits;


typedef struct _Ifx_VADC_GLOBEFLAG_Bits
{
    unsigned int SEVGLB : 1;
    unsigned int reserved_1 : 7;
    unsigned int REVGLB : 1;
    unsigned int reserved_9 : 7;
    unsigned int SEVGLBCLR : 1;
    unsigned int reserved_17 : 7;
    unsigned int REVGLBCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_VADC_GLOBEFLAG_Bits;


typedef struct _Ifx_VADC_GLOBEVNP_Bits
{
    unsigned int SEV0NP : 4;
    unsigned int reserved_4 : 12;
    unsigned int REV0NP : 4;
    unsigned int reserved_20 : 12;
} Ifx_VADC_GLOBEVNP_Bits;


typedef struct _Ifx_VADC_GLOBRCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int DRCTR : 4;
    unsigned int reserved_20 : 4;
    unsigned int WFR : 1;
    unsigned int reserved_25 : 6;
    unsigned int SRGEN : 1;
} Ifx_VADC_GLOBRCR_Bits;


typedef struct _Ifx_VADC_GLOBRES_Bits
{
    unsigned int RESULT : 16;
    unsigned int GNR : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_GLOBRES_Bits;


typedef struct _Ifx_VADC_GLOBRESD_Bits
{
    unsigned int RESULT : 16;
    unsigned int GNR : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_GLOBRESD_Bits;


typedef struct _Ifx_VADC_GLOBTE_Bits
{
    unsigned int TFEG0 : 1;
    unsigned int TFEG1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_VADC_GLOBTE_Bits;


typedef struct _Ifx_VADC_GLOBTF_Bits
{
    unsigned int CDCH : 4;
    unsigned int CDGR : 4;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_11 : 4;
    unsigned int CDWC : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int reserved_19 : 4;
    unsigned int MDWC : 1;
    unsigned int reserved_24 : 6;
    unsigned int RCEN : 1;
    unsigned int RCWC : 1;
} Ifx_VADC_GLOBTF_Bits;


typedef struct _Ifx_VADC_ICLASS_Bits
{
    unsigned int STCS : 5;
    unsigned int reserved_5 : 3;
    unsigned int CMS : 3;
    unsigned int reserved_11 : 5;
    unsigned int STCE : 5;
    unsigned int reserved_21 : 3;
    unsigned int CME : 3;
    unsigned int reserved_27 : 5;
} Ifx_VADC_ICLASS_Bits;


typedef struct _Ifx_VADC_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_VADC_ID_Bits;


typedef struct _Ifx_VADC_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_VADC_KRST0_Bits;


typedef struct _Ifx_VADC_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_VADC_KRST1_Bits;


typedef struct _Ifx_VADC_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_VADC_KRSTCLR_Bits;


typedef struct _Ifx_VADC_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_VADC_OCS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCEN0_Bits B;
} Ifx_VADC_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT0_Bits B;
} Ifx_VADC_ACCPROT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT1_Bits B;
} Ifx_VADC_ACCPROT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSCTRL_Bits B;
} Ifx_VADC_BRSCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSMR_Bits B;
} Ifx_VADC_BRSMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSPND_Bits B;
} Ifx_VADC_BRSPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSSEL_Bits B;
} Ifx_VADC_BRSSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_CLC_Bits B;
} Ifx_VADC_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_EMUXSEL_Bits B;
} Ifx_VADC_EMUXSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ALIAS_Bits B;
} Ifx_VADC_G_ALIAS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBCFG_Bits B;
} Ifx_VADC_G_ARBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBPR_Bits B;
} Ifx_VADC_G_ARBPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASCTRL_Bits B;
} Ifx_VADC_G_ASCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASMR_Bits B;
} Ifx_VADC_G_ASMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASPND_Bits B;
} Ifx_VADC_G_ASPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASSEL_Bits B;
} Ifx_VADC_G_ASSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFL_Bits B;
} Ifx_VADC_G_BFL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLC_Bits B;
} Ifx_VADC_G_BFLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLNP_Bits B;
} Ifx_VADC_G_BFLNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLS_Bits B;
} Ifx_VADC_G_BFLS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BOUND_Bits B;
} Ifx_VADC_G_BOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFCLR_Bits B;
} Ifx_VADC_G_CEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFLAG_Bits B;
} Ifx_VADC_G_CEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEVNP0_Bits B;
} Ifx_VADC_G_CEVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEVNP1_Bits B;
} Ifx_VADC_G_CEVNP1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHASS_Bits B;
} Ifx_VADC_G_CHASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHCTR_Bits B;
} Ifx_VADC_G_CHCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_EMUXCTR_Bits B;
} Ifx_VADC_G_EMUXCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_Q0R0_Bits B;
} Ifx_VADC_G_Q0R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_Q0R3_Bits B;
} Ifx_VADC_G_Q0R3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QBUR0_Bits B;
} Ifx_VADC_G_QBUR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QBUR3_Bits B;
} Ifx_VADC_G_QBUR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QCTRL0_Bits B;
} Ifx_VADC_G_QCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QCTRL3_Bits B;
} Ifx_VADC_G_QCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QINR0_Bits B;
} Ifx_VADC_G_QINR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QINR3_Bits B;
} Ifx_VADC_G_QINR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QMR0_Bits B;
} Ifx_VADC_G_QMR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QMR3_Bits B;
} Ifx_VADC_G_QMR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QSR0_Bits B;
} Ifx_VADC_G_QSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QSR3_Bits B;
} Ifx_VADC_G_QSR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RCR_Bits B;
} Ifx_VADC_G_RCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFCLR_Bits B;
} Ifx_VADC_G_REFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFLAG_Bits B;
} Ifx_VADC_G_REFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RES_Bits B;
} Ifx_VADC_G_RES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RESD_Bits B;
} Ifx_VADC_G_RESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP0_Bits B;
} Ifx_VADC_G_REVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP1_Bits B;
} Ifx_VADC_G_REVNP1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RRASS_Bits B;
} Ifx_VADC_G_RRASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFCLR_Bits B;
} Ifx_VADC_G_SEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFLAG_Bits B;
} Ifx_VADC_G_SEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEVNP_Bits B;
} Ifx_VADC_G_SEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SRACT_Bits B;
} Ifx_VADC_G_SRACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SYNCTR_Bits B;
} Ifx_VADC_G_SYNCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_TRCTR_Bits B;
} Ifx_VADC_G_TRCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_VFR_Bits B;
} Ifx_VADC_G_VFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBBOUND_Bits B;
} Ifx_VADC_GLOBBOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBCFG_Bits B;
} Ifx_VADC_GLOBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEFLAG_Bits B;
} Ifx_VADC_GLOBEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEVNP_Bits B;
} Ifx_VADC_GLOBEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRCR_Bits B;
} Ifx_VADC_GLOBRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRES_Bits B;
} Ifx_VADC_GLOBRES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRESD_Bits B;
} Ifx_VADC_GLOBRESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBTE_Bits B;
} Ifx_VADC_GLOBTE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBTF_Bits B;
} Ifx_VADC_GLOBTF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ICLASS_Bits B;
} Ifx_VADC_ICLASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ID_Bits B;
} Ifx_VADC_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST0_Bits B;
} Ifx_VADC_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST1_Bits B;
} Ifx_VADC_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRSTCLR_Bits B;
} Ifx_VADC_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_OCS_Bits B;
} Ifx_VADC_OCS;
# 1625 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC_G
{
    Ifx_VADC_G_ARBCFG ARBCFG;
    Ifx_VADC_G_ARBPR ARBPR;
    Ifx_VADC_G_CHASS CHASS;
    Ifx_VADC_G_RRASS RRASS;
    unsigned char reserved_10[16];
    Ifx_VADC_ICLASS ICLASS[2];
    unsigned char reserved_28[8];
    Ifx_VADC_G_ALIAS ALIAS;
    unsigned char reserved_34[4];
    Ifx_VADC_G_BOUND BOUND;
    unsigned char reserved_3C[4];
    Ifx_VADC_G_SYNCTR SYNCTR;
    unsigned char reserved_44[4];
    Ifx_VADC_G_BFL BFL;
    Ifx_VADC_G_BFLS BFLS;
    Ifx_VADC_G_BFLC BFLC;
    Ifx_VADC_G_BFLNP BFLNP;
    unsigned char reserved_58[40];
    Ifx_VADC_G_QCTRL0 QCTRL0;
    Ifx_VADC_G_QMR0 QMR0;
    Ifx_VADC_G_QSR0 QSR0;
    Ifx_VADC_G_Q0R0 Q0R0;
    union
    {
        Ifx_VADC_G_QBUR0 QBUR0;
        Ifx_VADC_G_QINR0 QINR0;
    };

    unsigned char reserved_94[12];
    Ifx_VADC_G_ASCTRL ASCTRL;
    Ifx_VADC_G_ASMR ASMR;
    Ifx_VADC_G_ASSEL ASSEL;
    Ifx_VADC_G_ASPND ASPND;
    unsigned char reserved_B0[16];
    Ifx_VADC_G_QCTRL3 QCTRL3;
    Ifx_VADC_G_QMR3 QMR3;
    Ifx_VADC_G_QSR3 QSR3;
    Ifx_VADC_G_Q0R3 Q0R3;
    union
    {
        Ifx_VADC_G_QBUR3 QBUR3;
        Ifx_VADC_G_QINR3 QINR3;
    };

    Ifx_VADC_G_TRCTR TRCTR;
    unsigned char reserved_D8[40];
    Ifx_VADC_G_CEFLAG CEFLAG;
    Ifx_VADC_G_REFLAG REFLAG;
    Ifx_VADC_G_SEFLAG SEFLAG;
    unsigned char reserved_10C[4];
    Ifx_VADC_G_CEFCLR CEFCLR;
    Ifx_VADC_G_REFCLR REFCLR;
    Ifx_VADC_G_SEFCLR SEFCLR;
    unsigned char reserved_11C[4];
    Ifx_VADC_G_CEVNP0 CEVNP0;
    Ifx_VADC_G_CEVNP1 CEVNP1;
    unsigned char reserved_128[8];
    Ifx_VADC_G_REVNP0 REVNP0;
    Ifx_VADC_G_REVNP1 REVNP1;
    unsigned char reserved_138[8];
    Ifx_VADC_G_SEVNP SEVNP;
    unsigned char reserved_144[4];
    Ifx_VADC_G_SRACT SRACT;
    unsigned char reserved_14C[36];
    Ifx_VADC_G_EMUXCTR EMUXCTR;
    unsigned char reserved_174[4];
    Ifx_VADC_G_VFR VFR;
    unsigned char reserved_17C[4];
    Ifx_VADC_G_CHCTR CHCTR[12];
    unsigned char reserved_1B0[80];
    Ifx_VADC_G_RCR RCR[16];
    unsigned char reserved_240[64];
    Ifx_VADC_G_RES RES[16];
    unsigned char reserved_2C0[64];
    Ifx_VADC_G_RESD RESD[16];
    unsigned char reserved_340[192];
} Ifx_VADC_G;
# 1716 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC
{
    Ifx_VADC_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_VADC_ID ID;
    unsigned char reserved_C[28];
    Ifx_VADC_OCS OCS;
    Ifx_VADC_KRSTCLR KRSTCLR;
    Ifx_VADC_KRST1 KRST1;
    Ifx_VADC_KRST0 KRST0;
    unsigned char reserved_38[4];
    Ifx_VADC_ACCEN0 ACCEN0;
    unsigned char reserved_40[64];
    Ifx_VADC_GLOBCFG GLOBCFG;
    unsigned char reserved_84[4];
    Ifx_VADC_ACCPROT0 ACCPROT0;
    Ifx_VADC_ACCPROT1 ACCPROT1;
    unsigned char reserved_90[16];
    Ifx_VADC_ICLASS GLOBICLASS[2];
    unsigned char reserved_A8[16];
    Ifx_VADC_GLOBBOUND GLOBBOUND;
    unsigned char reserved_BC[36];
    Ifx_VADC_GLOBEFLAG GLOBEFLAG;
    unsigned char reserved_E4[92];
    Ifx_VADC_GLOBEVNP GLOBEVNP;
    unsigned char reserved_144[28];
    Ifx_VADC_GLOBTF GLOBTF;
    Ifx_VADC_GLOBTE GLOBTE;
    unsigned char reserved_168[24];
    Ifx_VADC_BRSSEL BRSSEL[4];
    unsigned char reserved_190[48];
    Ifx_VADC_BRSPND BRSPND[4];
    unsigned char reserved_1D0[48];
    Ifx_VADC_BRSCTRL BRSCTRL;
    Ifx_VADC_BRSMR BRSMR;
    unsigned char reserved_208[120];
    Ifx_VADC_GLOBRCR GLOBRCR;
    unsigned char reserved_284[124];
    Ifx_VADC_GLOBRES GLOBRES;
    unsigned char reserved_304[124];
    Ifx_VADC_GLOBRESD GLOBRESD;
    unsigned char reserved_384[108];
    Ifx_VADC_EMUXSEL EMUXSEL;
    unsigned char reserved_3F4[140];
    Ifx_VADC_G G[4];
    unsigned char reserved_1480[11136];
} Ifx_VADC;
# 37 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_reg.h" 2
# 32 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxVadc_PinMap.h" 2







typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_GxBfl_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_Emux_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    uint8 channelId;
} IfxVadc_Vadcg_In;

extern IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL2_P33_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL3_P33_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P00_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_0_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P00_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_1_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P00_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P33_2_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P00_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P33_3_OUT;
# 97 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxVadc_PinMap.h"
extern const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[1][12];


extern const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[1][2][8];
# 55 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxVadc_bf.h" 1
# 56 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 2



# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_reg.h" 1
# 39 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_reg.h"
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_regdef.h" 1
# 45 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_regdef.h"
typedef struct _Ifx_CCU6_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_CCU6_ACCEN0_Bits;


typedef struct _Ifx_CCU6_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CCU6_ACCEN1_Bits;


typedef struct _Ifx_CCU6_CC60R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC60R_Bits;


typedef struct _Ifx_CCU6_CC60SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC60SR_Bits;


typedef struct _Ifx_CCU6_CC61R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC61R_Bits;


typedef struct _Ifx_CCU6_CC61SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC61SR_Bits;


typedef struct _Ifx_CCU6_CC62R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC62R_Bits;


typedef struct _Ifx_CCU6_CC62SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC62SR_Bits;


typedef struct _Ifx_CCU6_CC63R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC63R_Bits;


typedef struct _Ifx_CCU6_CC63SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC63SR_Bits;


typedef struct _Ifx_CCU6_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_CCU6_CLC_Bits;


typedef struct _Ifx_CCU6_CMPMODIF_Bits
{
    unsigned int MCC60S : 1;
    unsigned int MCC61S : 1;
    unsigned int MCC62S : 1;
    unsigned int reserved_3 : 3;
    unsigned int MCC63S : 1;
    unsigned int reserved_7 : 1;
    unsigned int MCC60R : 1;
    unsigned int MCC61R : 1;
    unsigned int MCC62R : 1;
    unsigned int reserved_11 : 3;
    unsigned int MCC63R : 1;
    unsigned int reserved_15 : 17;
} Ifx_CCU6_CMPMODIF_Bits;


typedef struct _Ifx_CCU6_CMPSTAT_Bits
{
    unsigned int CC60ST : 1;
    unsigned int CC61ST : 1;
    unsigned int CC62ST : 1;
    unsigned int CCPOS60 : 1;
    unsigned int CCPOS61 : 1;
    unsigned int CCPOS62 : 1;
    unsigned int CC63ST : 1;
    unsigned int reserved_7 : 1;
    unsigned int CC60PS : 1;
    unsigned int COUT60PS : 1;
    unsigned int CC61PS : 1;
    unsigned int COUT61PS : 1;
    unsigned int CC62PS : 1;
    unsigned int COUT62PS : 1;
    unsigned int COUT63PS : 1;
    unsigned int T13IM : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CMPSTAT_Bits;


typedef struct _Ifx_CCU6_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODNUMBER : 8;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ID_Bits;


typedef struct _Ifx_CCU6_IEN_Bits
{
    unsigned int ENCC60R : 1;
    unsigned int ENCC60F : 1;
    unsigned int ENCC61R : 1;
    unsigned int ENCC61F : 1;
    unsigned int ENCC62R : 1;
    unsigned int ENCC62F : 1;
    unsigned int ENT12OM : 1;
    unsigned int ENT12PM : 1;
    unsigned int ENT13CM : 1;
    unsigned int ENT13PM : 1;
    unsigned int ENTRPF : 1;
    unsigned int reserved_11 : 1;
    unsigned int ENCHE : 1;
    unsigned int ENWHE : 1;
    unsigned int ENIDLE : 1;
    unsigned int ENSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_IEN_Bits;


typedef struct _Ifx_CCU6_IMON_Bits
{
    unsigned int LBE : 1;
    unsigned int CCPOS0I : 1;
    unsigned int CCPOS1I : 1;
    unsigned int CCPOS2I : 1;
    unsigned int CC60INI : 1;
    unsigned int CC61INI : 1;
    unsigned int CC62INI : 1;
    unsigned int CTRAPI : 1;
    unsigned int T12HRI : 1;
    unsigned int T13HRI : 1;
    unsigned int reserved_10 : 22;
} Ifx_CCU6_IMON_Bits;


typedef struct _Ifx_CCU6_INP_Bits
{
    unsigned int INPCC60 : 2;
    unsigned int INPCC61 : 2;
    unsigned int INPCC62 : 2;
    unsigned int INPCHE : 2;
    unsigned int INPERR : 2;
    unsigned int INPT12 : 2;
    unsigned int INPT13 : 2;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_INP_Bits;


typedef struct _Ifx_CCU6_IS_Bits
{
    unsigned int ICC60R : 1;
    unsigned int ICC60F : 1;
    unsigned int ICC61R : 1;
    unsigned int ICC61F : 1;
    unsigned int ICC62R : 1;
    unsigned int ICC62F : 1;
    unsigned int T12OM : 1;
    unsigned int T12PM : 1;
    unsigned int T13CM : 1;
    unsigned int T13PM : 1;
    unsigned int TRPF : 1;
    unsigned int TRPS : 1;
    unsigned int CHE : 1;
    unsigned int WHE : 1;
    unsigned int IDLE : 1;
    unsigned int STR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_IS_Bits;


typedef struct _Ifx_CCU6_ISR_Bits
{
    unsigned int RCC60R : 1;
    unsigned int RCC60F : 1;
    unsigned int RCC61R : 1;
    unsigned int RCC61F : 1;
    unsigned int RCC62R : 1;
    unsigned int RCC62F : 1;
    unsigned int RT12OM : 1;
    unsigned int RT12PM : 1;
    unsigned int RT13CM : 1;
    unsigned int RT13PM : 1;
    unsigned int RTRPF : 1;
    unsigned int reserved_11 : 1;
    unsigned int RCHE : 1;
    unsigned int RWHE : 1;
    unsigned int RIDLE : 1;
    unsigned int RSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ISR_Bits;


typedef struct _Ifx_CCU6_ISS_Bits
{
    unsigned int SCC60R : 1;
    unsigned int SCC60F : 1;
    unsigned int SCC61R : 1;
    unsigned int SCC61F : 1;
    unsigned int SCC62R : 1;
    unsigned int SCC62F : 1;
    unsigned int ST12OM : 1;
    unsigned int ST12PM : 1;
    unsigned int ST13CM : 1;
    unsigned int ST13PM : 1;
    unsigned int STRPF : 1;
    unsigned int SWHC : 1;
    unsigned int SCHE : 1;
    unsigned int SWHE : 1;
    unsigned int SIDLE : 1;
    unsigned int SSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ISS_Bits;


typedef struct _Ifx_CCU6_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_CCU6_KRST0_Bits;


typedef struct _Ifx_CCU6_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_CCU6_KRST1_Bits;


typedef struct _Ifx_CCU6_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_CCU6_KRSTCLR_Bits;


typedef struct _Ifx_CCU6_KSCSR_Bits
{
    unsigned int SB0 : 1;
    unsigned int SB1 : 1;
    unsigned int SB2 : 1;
    unsigned int SB3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_CCU6_KSCSR_Bits;


typedef struct _Ifx_CCU6_LI_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CCPOS0EN : 1;
    unsigned int CCPOS1EN : 1;
    unsigned int CCPOS2EN : 1;
    unsigned int CC60INEN : 1;
    unsigned int CC61INEN : 1;
    unsigned int CC62INEN : 1;
    unsigned int CTRAPEN : 1;
    unsigned int T12HREN : 1;
    unsigned int T13HREN : 1;
    unsigned int reserved_10 : 3;
    unsigned int LBEEN : 1;
    unsigned int INPLBE : 2;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_LI_Bits;


typedef struct _Ifx_CCU6_MCFG_Bits
{
    unsigned int T12 : 1;
    unsigned int T13 : 1;
    unsigned int MCM : 1;
    unsigned int reserved_3 : 29;
} Ifx_CCU6_MCFG_Bits;


typedef struct _Ifx_CCU6_MCMCTR_Bits
{
    unsigned int SWSEL : 3;
    unsigned int reserved_3 : 1;
    unsigned int SWSYN : 2;
    unsigned int reserved_6 : 2;
    unsigned int STE12U : 1;
    unsigned int STE12D : 1;
    unsigned int STE13U : 1;
    unsigned int reserved_11 : 21;
} Ifx_CCU6_MCMCTR_Bits;


typedef struct _Ifx_CCU6_MCMOUT_Bits
{
    unsigned int MCMP : 6;
    unsigned int R : 1;
    unsigned int reserved_7 : 1;
    unsigned int EXPH : 3;
    unsigned int CURH : 3;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_MCMOUT_Bits;


typedef struct _Ifx_CCU6_MCMOUTS_Bits
{
    unsigned int MCMPS : 6;
    unsigned int reserved_6 : 1;
    unsigned int STRMCM : 1;
    unsigned int EXPHS : 3;
    unsigned int CURHS : 3;
    unsigned int reserved_14 : 1;
    unsigned int STRHP : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_MCMOUTS_Bits;


typedef struct _Ifx_CCU6_MODCTR_Bits
{
    unsigned int T12MODEN : 6;
    unsigned int reserved_6 : 1;
    unsigned int MCMEN : 1;
    unsigned int T13MODEN : 6;
    unsigned int reserved_14 : 1;
    unsigned int ECT13O : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_MODCTR_Bits;


typedef struct _Ifx_CCU6_MOSEL_Bits
{
    unsigned int TRIG0SEL : 3;
    unsigned int TRIG1SEL : 3;
    unsigned int TRIG2SEL : 3;
    unsigned int reserved_9 : 23;
} Ifx_CCU6_MOSEL_Bits;


typedef struct _Ifx_CCU6_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_CCU6_OCS_Bits;


typedef struct _Ifx_CCU6_PISEL0_Bits
{
    unsigned int ISCC60 : 2;
    unsigned int ISCC61 : 2;
    unsigned int ISCC62 : 2;
    unsigned int ISTRP : 2;
    unsigned int ISPOS0 : 2;
    unsigned int ISPOS1 : 2;
    unsigned int ISPOS2 : 2;
    unsigned int IST12HR : 2;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_PISEL0_Bits;


typedef struct _Ifx_CCU6_PISEL2_Bits
{
    unsigned int IST13HR : 2;
    unsigned int ISCNT12 : 2;
    unsigned int ISCNT13 : 2;
    unsigned int T12EXT : 1;
    unsigned int T13EXT : 1;
    unsigned int reserved_8 : 24;
} Ifx_CCU6_PISEL2_Bits;


typedef struct _Ifx_CCU6_PSLR_Bits
{
    unsigned int PSL : 6;
    unsigned int reserved_6 : 1;
    unsigned int PSL63 : 1;
    unsigned int reserved_8 : 24;
} Ifx_CCU6_PSLR_Bits;


typedef struct _Ifx_CCU6_T12_Bits
{
    unsigned int T12CV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12_Bits;


typedef struct _Ifx_CCU6_T12DTC_Bits
{
    unsigned int DTM : 8;
    unsigned int DTE0 : 1;
    unsigned int DTE1 : 1;
    unsigned int DTE2 : 1;
    unsigned int reserved_11 : 1;
    unsigned int DTR0 : 1;
    unsigned int DTR1 : 1;
    unsigned int DTR2 : 1;
    unsigned int reserved_15 : 17;
} Ifx_CCU6_T12DTC_Bits;


typedef struct _Ifx_CCU6_T12MSEL_Bits
{
    unsigned int MSEL60 : 4;
    unsigned int MSEL61 : 4;
    unsigned int MSEL62 : 4;
    unsigned int HSYNC : 3;
    unsigned int DBYP : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12MSEL_Bits;


typedef struct _Ifx_CCU6_T12PR_Bits
{
    unsigned int T12PV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12PR_Bits;


typedef struct _Ifx_CCU6_T13_Bits
{
    unsigned int T13CV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T13_Bits;


typedef struct _Ifx_CCU6_T13PR_Bits
{
    unsigned int T13PV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T13PR_Bits;


typedef struct _Ifx_CCU6_TCTR0_Bits
{
    unsigned int T12CLK : 3;
    unsigned int T12PRE : 1;
    unsigned int T12R : 1;
    unsigned int STE12 : 1;
    unsigned int CDIR : 1;
    unsigned int CTM : 1;
    unsigned int T13CLK : 3;
    unsigned int T13PRE : 1;
    unsigned int T13R : 1;
    unsigned int STE13 : 1;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_TCTR0_Bits;


typedef struct _Ifx_CCU6_TCTR2_Bits
{
    unsigned int T12SSC : 1;
    unsigned int T13SSC : 1;
    unsigned int T13TEC : 3;
    unsigned int T13TED : 2;
    unsigned int reserved_7 : 1;
    unsigned int T12RSEL : 2;
    unsigned int T13RSEL : 2;
    unsigned int reserved_12 : 20;
} Ifx_CCU6_TCTR2_Bits;


typedef struct _Ifx_CCU6_TCTR4_Bits
{
    unsigned int T12RR : 1;
    unsigned int T12RS : 1;
    unsigned int T12RES : 1;
    unsigned int DTRES : 1;
    unsigned int reserved_4 : 1;
    unsigned int T12CNT : 1;
    unsigned int T12STR : 1;
    unsigned int T12STD : 1;
    unsigned int T13RR : 1;
    unsigned int T13RS : 1;
    unsigned int T13RES : 1;
    unsigned int reserved_11 : 2;
    unsigned int T13CNT : 1;
    unsigned int T13STR : 1;
    unsigned int T13STD : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_TCTR4_Bits;


typedef struct _Ifx_CCU6_TRPCTR_Bits
{
    unsigned int TRPM0 : 1;
    unsigned int TRPM1 : 1;
    unsigned int TRPM2 : 1;
    unsigned int reserved_3 : 5;
    unsigned int TRPEN : 6;
    unsigned int TRPEN13 : 1;
    unsigned int TRPPEN : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_TRPCTR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN0_Bits B;
} Ifx_CCU6_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN1_Bits B;
} Ifx_CCU6_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60R_Bits B;
} Ifx_CCU6_CC60R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60SR_Bits B;
} Ifx_CCU6_CC60SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61R_Bits B;
} Ifx_CCU6_CC61R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61SR_Bits B;
} Ifx_CCU6_CC61SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62R_Bits B;
} Ifx_CCU6_CC62R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62SR_Bits B;
} Ifx_CCU6_CC62SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63R_Bits B;
} Ifx_CCU6_CC63R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63SR_Bits B;
} Ifx_CCU6_CC63SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CLC_Bits B;
} Ifx_CCU6_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPMODIF_Bits B;
} Ifx_CCU6_CMPMODIF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPSTAT_Bits B;
} Ifx_CCU6_CMPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ID_Bits B;
} Ifx_CCU6_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IEN_Bits B;
} Ifx_CCU6_IEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IMON_Bits B;
} Ifx_CCU6_IMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_INP_Bits B;
} Ifx_CCU6_INP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IS_Bits B;
} Ifx_CCU6_IS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISR_Bits B;
} Ifx_CCU6_ISR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISS_Bits B;
} Ifx_CCU6_ISS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST0_Bits B;
} Ifx_CCU6_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST1_Bits B;
} Ifx_CCU6_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRSTCLR_Bits B;
} Ifx_CCU6_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KSCSR_Bits B;
} Ifx_CCU6_KSCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_LI_Bits B;
} Ifx_CCU6_LI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCFG_Bits B;
} Ifx_CCU6_MCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMCTR_Bits B;
} Ifx_CCU6_MCMCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUT_Bits B;
} Ifx_CCU6_MCMOUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUTS_Bits B;
} Ifx_CCU6_MCMOUTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MODCTR_Bits B;
} Ifx_CCU6_MODCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MOSEL_Bits B;
} Ifx_CCU6_MOSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_OCS_Bits B;
} Ifx_CCU6_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL0_Bits B;
} Ifx_CCU6_PISEL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL2_Bits B;
} Ifx_CCU6_PISEL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PSLR_Bits B;
} Ifx_CCU6_PSLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12_Bits B;
} Ifx_CCU6_T12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12DTC_Bits B;
} Ifx_CCU6_T12DTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12MSEL_Bits B;
} Ifx_CCU6_T12MSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12PR_Bits B;
} Ifx_CCU6_T12PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13_Bits B;
} Ifx_CCU6_T13;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13PR_Bits B;
} Ifx_CCU6_T13PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR0_Bits B;
} Ifx_CCU6_TCTR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR2_Bits B;
} Ifx_CCU6_TCTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR4_Bits B;
} Ifx_CCU6_TCTR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TRPCTR_Bits B;
} Ifx_CCU6_TRPCTR;
# 972 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_regdef.h"
typedef volatile struct _Ifx_CCU6
{
    Ifx_CCU6_CLC CLC;
    Ifx_CCU6_MCFG MCFG;
    Ifx_CCU6_ID ID;
    Ifx_CCU6_MOSEL MOSEL;
    Ifx_CCU6_PISEL0 PISEL0;
    Ifx_CCU6_PISEL2 PISEL2;
    unsigned char reserved_18[4];
    Ifx_CCU6_KSCSR KSCSR;
    Ifx_CCU6_T12 T12;
    Ifx_CCU6_T12PR T12PR;
    Ifx_CCU6_T12DTC T12DTC;
    unsigned char reserved_2C[4];
    Ifx_CCU6_CC60R CC60R;
    Ifx_CCU6_CC61R CC61R;
    Ifx_CCU6_CC62R CC62R;
    unsigned char reserved_3C[4];
    Ifx_CCU6_CC60SR CC60SR;
    Ifx_CCU6_CC61SR CC61SR;
    Ifx_CCU6_CC62SR CC62SR;
    unsigned char reserved_4C[4];
    Ifx_CCU6_T13 T13;
    Ifx_CCU6_T13PR T13PR;
    Ifx_CCU6_CC63R CC63R;
    Ifx_CCU6_CC63SR CC63SR;
    Ifx_CCU6_CMPSTAT CMPSTAT;
    Ifx_CCU6_CMPMODIF CMPMODIF;
    Ifx_CCU6_T12MSEL T12MSEL;
    unsigned char reserved_6C[4];
    Ifx_CCU6_TCTR0 TCTR0;
    Ifx_CCU6_TCTR2 TCTR2;
    Ifx_CCU6_TCTR4 TCTR4;
    unsigned char reserved_7C[4];
    Ifx_CCU6_MODCTR MODCTR;
    Ifx_CCU6_TRPCTR TRPCTR;
    Ifx_CCU6_PSLR PSLR;
    Ifx_CCU6_MCMOUTS MCMOUTS;
    Ifx_CCU6_MCMOUT MCMOUT;
    Ifx_CCU6_MCMCTR MCMCTR;
    Ifx_CCU6_IMON IMON;
    Ifx_CCU6_LI LI;
    Ifx_CCU6_IS IS;
    Ifx_CCU6_ISS ISS;
    Ifx_CCU6_ISR ISR;
    Ifx_CCU6_INP INP;
    Ifx_CCU6_IEN IEN;
    unsigned char reserved_B4[52];
    Ifx_CCU6_OCS OCS;
    Ifx_CCU6_KRSTCLR KRSTCLR;
    Ifx_CCU6_KRST1 KRST1;
    Ifx_CCU6_KRST0 KRST0;
    Ifx_CCU6_ACCEN1 ACCEN1;
    Ifx_CCU6_ACCEN0 ACCEN0;
} Ifx_CCU6;
# 40 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_reg.h" 2
# 60 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxCcu6_bf.h" 1
# 61 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h" 2
# 70 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
typedef enum
{
    IfxVadc_AnalogConverterMode_off = 0,
    IfxVadc_AnalogConverterMode_slowStandby = 1,
    IfxVadc_AnalogConverterMode_fastStandby = 2,
    IfxVadc_AnalogConverterMode_normalOperation = 3
} IfxVadc_AnalogConverterMode;



typedef enum
{
    IfxVadc_ArbitrationRounds_4_slots = 0,
    IfxVadc_ArbitrationRounds_8_slots = 1,
    IfxVadc_ArbitrationRounds_16_slots = 2,
    IfxVadc_ArbitrationRounds_20_slots = 3
} IfxVadc_ArbitrationRounds;



typedef enum
{
    IfxVadc_BoundaryExtension_standard = 0,
    IfxVadc_BoundaryExtension_fastCompareResult1 = 1,
    IfxVadc_BoundaryExtension_fastCompareResult2 = 2,
    IfxVadc_BoundaryExtension_fastCompareResult3 = 3,
    IfxVadc_BoundaryExtension_fastCompareResult4 = 4,
    IfxVadc_BoundaryExtension_fastCompareResult5 = 5,
    IfxVadc_BoundaryExtension_fastCompareResult6 = 6,
    IfxVadc_BoundaryExtension_fastCompareResult7 = 7,
    IfxVadc_BoundaryExtension_fastCompareResult8 = 8,
    IfxVadc_BoundaryExtension_fastCompareResult9 = 9,
    IfxVadc_BoundaryExtension_fastCompareResult10 = 10,
    IfxVadc_BoundaryExtension_fastCompareResult11 = 11,
    IfxVadc_BoundaryExtension_fastCompareResult12 = 12,
    IfxVadc_BoundaryExtension_fastCompareResult13 = 13,
    IfxVadc_BoundaryExtension_fastCompareResult14 = 14,
    IfxVadc_BoundaryExtension_fastCompareResult15 = 15
} IfxVadc_BoundaryExtension;



typedef enum
{
    IfxVadc_BoundarySelection_group0 = 0,
    IfxVadc_BoundarySelection_group1 = 1,
    IfxVadc_BoundarySelection_global0 = 2,
    IfxVadc_BoundarySelection_global1 = 3
} IfxVadc_BoundarySelection;



typedef enum
{
    IfxVadc_ChannelId_none = -1,
    IfxVadc_ChannelId_0 = 0,
    IfxVadc_ChannelId_1 = 1,
    IfxVadc_ChannelId_2 = 2,
    IfxVadc_ChannelId_3 = 3,
    IfxVadc_ChannelId_4 = 4,
    IfxVadc_ChannelId_5 = 5,
    IfxVadc_ChannelId_6 = 6,
    IfxVadc_ChannelId_7 = 7,
    IfxVadc_ChannelId_8 = 8,
    IfxVadc_ChannelId_9 = 9,
    IfxVadc_ChannelId_10 = 10,
    IfxVadc_ChannelId_11 = 11
} IfxVadc_ChannelId;



typedef enum
{
    IfxVadc_ChannelReference_standard = 0,
    IfxVadc_ChannelReference_channel0 = 1
} IfxVadc_ChannelReference;



typedef enum
{
    IfxVadc_ChannelResolution_12bit = 0,
    IfxVadc_ChannelResolution_10bit = 1,
    IfxVadc_ChannelResolution_8bit = 2,
    IfxVadc_ChannelResolution_10bitFast = 5
} IfxVadc_ChannelResolution;



typedef enum
{
    IfxVadc_ChannelResult_0 = 0,
    IfxVadc_ChannelResult_1,
    IfxVadc_ChannelResult_2,
    IfxVadc_ChannelResult_3,
    IfxVadc_ChannelResult_4,
    IfxVadc_ChannelResult_5,
    IfxVadc_ChannelResult_6,
    IfxVadc_ChannelResult_7,
    IfxVadc_ChannelResult_8,
    IfxVadc_ChannelResult_9,
    IfxVadc_ChannelResult_10,
    IfxVadc_ChannelResult_11,
    IfxVadc_ChannelResult_12,
    IfxVadc_ChannelResult_13,
    IfxVadc_ChannelResult_14,
    IfxVadc_ChannelResult_15
} IfxVadc_ChannelResult;




typedef enum
{
    IfxVadc_ChannelSelectionStyle_channelNumber = 0,
    IfxVadc_ChannelSelectionStyle_binary = 1

} IfxVadc_ChannelSelectionStyle;



typedef enum
{
    IfxVadc_ConversionType_Compatible = 0
} IfxVadc_ConversionType;




typedef enum
{
    IfxVadc_EmuxCodingScheme_binary = 0,
    IfxVadc_EmuxCodingScheme_gray = 1
} IfxVadc_EmuxCodingScheme;



typedef enum
{
    IfxVadc_EmuxInterface_0 = 0,
    IfxVadc_EmuxInterface_1 = 1
} IfxVadc_EmuxInterface;




typedef enum
{
    IfxVadc_EmuxSampleTimeControl_settingChanges = 0,
    IfxVadc_EmuxSampleTimeControl_always = 1
} IfxVadc_EmuxSampleTimeControl;




typedef enum
{
    IfxVadc_EmuxSelectValue_0 = 0,
    IfxVadc_EmuxSelectValue_1,
    IfxVadc_EmuxSelectValue_2,
    IfxVadc_EmuxSelectValue_3,
    IfxVadc_EmuxSelectValue_4,
    IfxVadc_EmuxSelectValue_5,
    IfxVadc_EmuxSelectValue_6,
    IfxVadc_EmuxSelectValue_7
} IfxVadc_EmuxSelectValue;




typedef enum
{
    IfxVadc_ExternalMultiplexerMode_softwareControl = 0,
    IfxVadc_ExternalMultiplexerMode_steady = 1,
    IfxVadc_ExternalMultiplexerMode_singleStep = 2,
    IfxVadc_ExternalMultiplexerMode_sequence = 3
} IfxVadc_ExternalMultiplexerMode;



typedef enum
{
    IfxVadc_FifoMode_seperateResultRegister = 0,
    IfxVadc_FifoMode_fifoStructure = 1,
    IfxVadc_FifoMode_maximumMode = 2,
    IfxVadc_FifoMode_minimumMode = 3
} IfxVadc_FifoMode;



typedef enum
{
    IfxVadc_GatingMode_disabled = 0,
    IfxVadc_GatingMode_always = 1,
    IfxVadc_GatingMode_gatingHigh = 2,
    IfxVadc_GatingMode_gatingLow = 3
} IfxVadc_GatingMode;



typedef enum
{
    IfxVadc_GatingSource_0 = 0,
    IfxVadc_GatingSource_1,
    IfxVadc_GatingSource_2,
    IfxVadc_GatingSource_3,
    IfxVadc_GatingSource_4,
    IfxVadc_GatingSource_5,
    IfxVadc_GatingSource_6,
    IfxVadc_GatingSource_7,
    IfxVadc_GatingSource_8,
    IfxVadc_GatingSource_9,
    IfxVadc_GatingSource_10,
    IfxVadc_GatingSource_11,
    IfxVadc_GatingSource_12,
    IfxVadc_GatingSource_13,
    IfxVadc_GatingSource_14,
    IfxVadc_GatingSource_15
} IfxVadc_GatingSource;



typedef enum
{
    IfxVadc_InputClasses_group0 = 0,
    IfxVadc_InputClasses_group1 = 1,
    IfxVadc_InputClasses_global0 = 2,
    IfxVadc_InputClasses_global1 = 3
} IfxVadc_InputClasses;



typedef enum
{
    IfxVadc_LimitCheck_noCheck = 0,
    IfxVadc_LimitCheck_eventIfInArea = 1,
    IfxVadc_LimitCheck_eventIfOutsideArea = 2,
    IfxVadc_LimitCheck_always = 3
} IfxVadc_LimitCheck;



typedef enum
{
    IfxVadc_LowSupplyVoltageSelect_5V = 0,
    IfxVadc_LowSupplyVoltageSelect_3V = 1
} IfxVadc_LowSupplyVoltageSelect;



typedef enum
{
    IfxVadc_Protection_channelControl0 = 0,
    IfxVadc_Protection_channelControl1 = 1,
    IfxVadc_Protection_channelControl2 = 2,
    IfxVadc_Protection_channelControl3 = 3,
    IfxVadc_Protection_channelControl4 = 4,
    IfxVadc_Protection_channelControl5 = 5,
    IfxVadc_Protection_channelControl6 = 6,
    IfxVadc_Protection_channelControl7 = 7,
    IfxVadc_Protection_channelControl8 = 8,
    IfxVadc_Protection_channelControl9 = 9,
    IfxVadc_Protection_channelControl10 = 10,
    IfxVadc_Protection_channelControl11 = 11,
    IfxVadc_Protection_channelControl12 = 12,
    IfxVadc_Protection_channelControl13 = 13,
    IfxVadc_Protection_channelControl14 = 14,
    IfxVadc_Protection_externalMultiplexer = 15,
    IfxVadc_Protection_initGroup0 = 16,
    IfxVadc_Protection_initGroup1 = 17,
    IfxVadc_Protection_initGroup2 = 18,
    IfxVadc_Protection_initGroup3 = 19,
    IfxVadc_Protection_initGroup4 = 20,
    IfxVadc_Protection_initGroup5 = 21,
    IfxVadc_Protection_initGroup6 = 22,
    IfxVadc_Protection_initGroup7 = 23,
    IfxVadc_Protection_initGroup8 = 24,
    IfxVadc_Protection_initGroup9 = 25,
    IfxVadc_Protection_initGroup10 = 26,
    IfxVadc_Protection_initGroup11 = 27,
    IfxVadc_Protection_initGroup12 = 28,
    IfxVadc_Protection_initGroup13 = 29,
    IfxVadc_Protection_initGroup14 = 30,
    IfxVadc_Protection_globalConfig = 31,
    IfxVadc_Protection_serviceGroup0 = 32,
    IfxVadc_Protection_serviceGroup1 = 33,
    IfxVadc_Protection_serviceGroup2 = 34,
    IfxVadc_Protection_serviceGroup3 = 35,
    IfxVadc_Protection_serviceGroup4 = 36,
    IfxVadc_Protection_serviceGroup5 = 37,
    IfxVadc_Protection_serviceGroup6 = 38,
    IfxVadc_Protection_serviceGroup7 = 39,
    IfxVadc_Protection_serviceGroup8 = 40,
    IfxVadc_Protection_serviceGroup9 = 41,
    IfxVadc_Protection_serviceGroup10 = 42,
    IfxVadc_Protection_serviceGroup11 = 43,
    IfxVadc_Protection_serviceGroup12 = 44,
    IfxVadc_Protection_serviceGroup13 = 45,
    IfxVadc_Protection_serviceGroup14 = 46,
    IfxVadc_Protection_testFunction = 47,
    IfxVadc_Protection_resultRegisterGroup0 = 48,
    IfxVadc_Protection_resultRegisterGroup1 = 49,
    IfxVadc_Protection_resultRegisterGroup2 = 50,
    IfxVadc_Protection_resultRegisterGroup3 = 51,
    IfxVadc_Protection_resultRegisterGroup4 = 52,
    IfxVadc_Protection_resultRegisterGroup5 = 53,
    IfxVadc_Protection_resultRegisterGroup6 = 54,
    IfxVadc_Protection_resultRegisterGroup7 = 55,
    IfxVadc_Protection_resultRegisterGroup8 = 56,
    IfxVadc_Protection_resultRegisterGroup9 = 57,
    IfxVadc_Protection_resultRegisterGroup10 = 58,
    IfxVadc_Protection_resultRegisterGroup11 = 59,
    IfxVadc_Protection_resultRegisterGroup12 = 60,
    IfxVadc_Protection_resultRegisterGroup13 = 61,
    IfxVadc_Protection_resultRegisterGroup14 = 62
} IfxVadc_Protection;



typedef enum
{
    IfxVadc_RequestSlotPriority_lowest = 0,
    IfxVadc_RequestSlotPriority_low = 1,
    IfxVadc_RequestSlotPriority_high = 2,
    IfxVadc_RequestSlotPriority_highest = 3
} IfxVadc_RequestSlotPriority;



typedef enum
{
    IfxVadc_RequestSlotStartMode_waitForStart = 0,
    IfxVadc_RequestSlotStartMode_cancelInjectRepeat = 1
} IfxVadc_RequestSlotStartMode;



typedef enum
{
    IfxVadc_RequestSource_queue = 0,
    IfxVadc_RequestSource_scan = 1,
    IfxVadc_RequestSource_background = 2
} IfxVadc_RequestSource;




typedef enum
{
    IfxVadc_SleepMode_enable = 0,
    IfxVadc_SleepMode_disable = 1
} IfxVadc_SleepMode;



typedef enum
{
    IfxVadc_SrcNr_group0 = 0,
    IfxVadc_SrcNr_group1 = 1,
    IfxVadc_SrcNr_group2 = 2,
    IfxVadc_SrcNr_group3 = 3,
    IfxVadc_SrcNr_shared0 = 4,
    IfxVadc_SrcNr_shared1 = 5,
    IfxVadc_SrcNr_shared2 = 6,
    IfxVadc_SrcNr_shared3 = 7
} IfxVadc_SrcNr;





typedef enum
{
    IfxVadc_Status_noError = 0,
    IfxVadc_Status_notInitialised = 1,
    IfxVadc_Status_invalidGroup = 2,
    IfxVadc_Status_invalidChannel = 3,
    IfxVadc_Status_queueFull = 4,
    IfxVadc_Status_noAccess = 5,
    IfxVadc_Status_channelsStillPending = 6
} IfxVadc_Status;



typedef enum
{
    IfxVadc_TriggerMode_noExternalTrigger = 0,
    IfxVadc_TriggerMode_uponFallingEdge = 1,
    IfxVadc_TriggerMode_uponRisingEdge = 2,
    IfxVadc_TriggerMode_uponAnyEdge = 3
} IfxVadc_TriggerMode;



typedef enum
{
    IfxVadc_TriggerSource_0 = 0,
    IfxVadc_TriggerSource_1,
    IfxVadc_TriggerSource_2,
    IfxVadc_TriggerSource_3,
    IfxVadc_TriggerSource_4,
    IfxVadc_TriggerSource_5,
    IfxVadc_TriggerSource_6,
    IfxVadc_TriggerSource_7,
    IfxVadc_TriggerSource_8,
    IfxVadc_TriggerSource_9,
    IfxVadc_TriggerSource_10,
    IfxVadc_TriggerSource_11,
    IfxVadc_TriggerSource_12,
    IfxVadc_TriggerSource_13,
    IfxVadc_TriggerSource_14,
    IfxVadc_TriggerSource_15
} IfxVadc_TriggerSource;
# 499 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead);






static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);
# 585 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);
# 629 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);
# 663 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable);
# 713 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 738 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_getDebugResult(Ifx_VADC_G *group, uint32 resultIdx);
# 755 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getBackgroundScanStatus(Ifx_VADC *vadc);
# 792 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern Ifx_VADC_G_RES IfxVadc_getResultBasedOnRequestSource(Ifx_VADC *vadc, Ifx_VADC_G *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 807 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 893 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group);
# 903 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getScanStatus(Ifx_VADC_G *group);
# 929 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setScan(Ifx_VADC_G *group, uint32 channels, uint32 mask);
# 958 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options);






static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue);





static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);





static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group);
# 1057 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getQueueStatus(Ifx_VADC_G *group);
# 1074 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1098 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime);
# 1108 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getAdcAnalogFrequency(Ifx_VADC *vadc);





extern float32 IfxVadc_getAdcDigitalFrequency(Ifx_VADC *vadc);
# 1129 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode);






static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength);







static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1196 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex);
# 1217 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setArbiterPriority(Ifx_VADC_G *vadcG, boolean slotEnable, IfxVadc_RequestSlotPriority prio, IfxVadc_RequestSlotStartMode mode, IfxVadc_RequestSource slot);
# 1232 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum);





static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1280 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode);
# 1298 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_disableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);







extern void IfxVadc_disablePostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group, boolean disable);






extern void IfxVadc_enableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);






extern void IfxVadc_enableGroupSync(Ifx_VADC *vadc, uint32 ccu6Num);




extern float32 IfxVadc_getAdcModuleFrequency(void);






extern volatile Ifx_SRC_SRCR *IfxVadc_getSrcAddress(IfxVadc_GroupId group, IfxVadc_SrcNr index);






extern void IfxVadc_initialiseAdcArbiterClock(Ifx_VADC *vadc, uint32 arbiterClockDivider);






extern void IfxVadc_initialiseAdcConverterClock(Ifx_VADC *vadc, uint32 converterClockDivider);






extern uint32 IfxVadc_initializeFAdcD(Ifx_VADC *vadc, uint32 fAdcD);






extern uint32 IfxVadc_initializeFAdcI(Ifx_VADC *vadc, uint32 fAdcI);






extern boolean IfxVadc_isPostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group);





extern void IfxVadc_resetKernel(Ifx_VADC *vadc);






extern void IfxVadc_selectPowerSupplyVoltage(Ifx_VADC *vadc, IfxVadc_LowSupplyVoltageSelect supplyVoltage);





extern void IfxVadc_startupCalibration(Ifx_VADC *vadc);
# 1402 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId);







static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode);






static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage);







static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck);






static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage);







static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize);







static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister);
# 1585 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getChannelConversionTime(Ifx_VADC *vadc, IfxVadc_GroupId group, IfxVadc_InputClasses inputClass, float32 analogFrequency, float32 moduleFrequency, IfxVadc_ConversionType conversionMode);
# 1601 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1641 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1658 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group);
# 1683 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_configExternalMultiplexerMode(Ifx_VADC *vadc, Ifx_VADC_G *vadcG, IfxVadc_ExternalMultiplexerMode mode, uint8 channels, IfxVadc_EmuxSelectValue startChannel, IfxVadc_EmuxCodingScheme code, IfxVadc_EmuxSampleTimeControl sampleTimeControl, IfxVadc_ChannelSelectionStyle channelSelectionStyle);
# 1695 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP1 IfxVadc_getChannelServiceRequestNodePointer1(Ifx_VADC_G *vadcG);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel);





static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options)
{
    group->QINR0.U = channel | options;
}


static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime)
{
    uint32 ticks;

    ticks = (uint32)(sampleTime * analogFrequency) - 2;

    if (ticks > 31)
    {
        ticks = (ticks / 16) + 15;
    }

    ticks = __minu(ticks, 0xFFu);

    return ticks;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG)
{
    vadcG->REFCLR.U = 0x0000FFFFu;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId)
{
    vadcG->CEFCLR.U = 1 << channelId;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue)
{
    vadcG->QMR0.B.FLUSH = flushQueue;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead)
{
    group->RCR[resultIdx].B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead)
{
    vadc->GLOBRCR.B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.DISR = 1;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode)
{
    vadcG->RCR[resultRegister].B.FEN = fifoMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.U = 0x00000000;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister)
{
    vadcG->RCR[resultRegister].B.SRGEN = 1;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum)
{
    uint8 status;
    status = vadc->G[adcCalGroupNum].ARBCFG.B.CAL;
    return status;
}


static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_ArbitrationRounds)vadcG->ARBCFG.B.ARBRND;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CHASS assignChannels;
    assignChannels.U = vadcG->CHASS.U;
    return assignChannels;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingMode)vadc->BRSMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingSource)vadc->BRSCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO2;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM2;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerSource)vadc->BRSCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerMode)vadc->BRSCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    Ifx_VADC_G_CHCTR tempChctr;
    tempChctr.U = vadcG->CHCTR[channelIndex].U;
    return tempChctr;
}


static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    return (IfxVadc_InputClasses)vadcG->CHCTR[channelIndex].B.ICLSEL;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP0 resultServiceRequestNodePtr0;
    resultServiceRequestNodePtr0.U = vadcG->REVNP0.U;
    return resultServiceRequestNodePtr0;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP1 resultServiceRequestNodePtr1;
    resultServiceRequestNodePtr1.U = vadcG->REVNP1.U;
    return resultServiceRequestNodePtr1;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CEVNP0 serviceRequestNodePtr;
    serviceRequestNodePtr.U = vadcG->CEVNP0.U;
    return serviceRequestNodePtr;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP1 IfxVadc_getChannelServiceRequestNodePointer1(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CEVNP1 serviceRequestNodePtr;
    serviceRequestNodePtr.U = vadcG->CEVNP1.U;
    return serviceRequestNodePtr;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadc->GLOBICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadcG->ICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBCFG globCfg;
    globCfg.U = vadc->GLOBCFG.U;
    return globCfg;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBRES tmpGlobalResult;

    tmpGlobalResult.U = vadc->GLOBRES.U;

    return tmpGlobalResult;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadc->GLOBICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    uint32 idx;

    for (idx = 0; idx < numResults; idx++)
    {
        results[idx].U = group->RES[resultOffset + idx].U;
    }
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadcG->ICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG)
{
    uint8 masterIndex = 0;
    masterIndex = vadcG->SYNCTR.B.STSEL;
    return masterIndex;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->QMR0.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->QCTRL0.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO0;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM0;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->QCTRL0.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->QCTRL0.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx)
{
    Ifx_VADC_G_RES tmpResult;

    tmpResult.U = group->RES[resultIdx].U;

    return tmpResult;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->ASMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->ASCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO1;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM1;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->ASCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->ASCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc)
{
    return (boolean)vadc->GLOBCFG.B.SUCAL;
}


static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(emux->pin.port, emux->pin.pinIndex, outputMode, emux->select);
    IfxPort_setPinPadDriver(emux->pin.port, emux->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(gxBfl->pin.port, gxBfl->pin.pinIndex, outputMode, gxBfl->select);
    IfxPort_setPinPadDriver(gxBfl->pin.port, gxBfl->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc)
{
    vadc->GLOBCFG.B.SUCAL = 1;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc)
{
    return (boolean)vadc->BRSMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ASMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN2;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN0;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG)
{
    vadcG->ARBCFG.B.ANONC = IfxVadc_AnalogConverterMode_off;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode)
{
    vadcG->ARBCFG.B.ANONC = analogConverterMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength)
{
    vadcG->ARBCFG.B.ARBRND = arbiterRoundLength;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable)
{
    vadc->BRSMR.B.SCAN = autoBackgroundScanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable)
{
    vadcG->ASMR.B.SCAN = autoscanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U &= ~(1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage)
{
    vadcG->CHCTR[channelIndex].B.RESTBS = globalResultUsage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask)
{
    channels = (vadc->BRSSEL[groupId].U & ~mask) | channels;
    vadc->BRSSEL[groupId].U = channels;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.GTWC = 1;
    brsctrl.B.GTSEL = gatingSource;
    vadc->BRSCTRL.U = brsctrl.U;
    vadc->BRSMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.XTWC = 1;
    brsctrl.B.XTMODE = triggerMode;
    brsctrl.B.XTSEL = triggerSource;
    vadc->BRSCTRL.U = brsctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode)
{
    vadcG->CHCTR[channelIndex].B.BNDSELX = boundaryMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel)
{
    vadcG->CEVNP0.U &= ~((0xfu) << (channel * 4));
    vadcG->CEVNP0.U |= (channelSrcNr << (channel * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel)
{
    vadcG->CEVNP1.U &= ~((0xfu) << (channel * 4));
    vadcG->CEVNP1.U |= (channelSrcNr << (channel * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass)
{
    vadcG->CHCTR[channelIndex].B.ICLSEL = inputClass;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck)
{
    vadcG->CHCTR[channelIndex].B.CHEVMODE = limitCheck;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group)
{
    if (emuxInterface == IfxVadc_EmuxInterface_0)
    {
        vadc->EMUXSEL.B.EMUXGRP0 = group;
    }
    else
    {
        vadc->EMUXSEL.B.EMUXGRP1 = group;
    }
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U |= (1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELL = lowerBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex)
{
    vadcG->SYNCTR.B.STSEL = (masterIndex % 4);
    vadcG->SYNCTR.U |= (0x00000008U << (masterIndex % 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.GTWC = 1;
    qctrl0.B.GTSEL = gatingSource;
    vadcG->QCTRL0.U = qctrl0.U;
    vadcG->QMR0.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.XTWC = 1;
    qctrl0.B.XTMODE = triggerMode;
    qctrl0.B.XTSEL = triggerSource;
    vadcG->QCTRL0.U = qctrl0.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference)
{
    vadcG->CHCTR[channelIndex].B.REFSEL = reference;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP0.U &= ~((0xfu) << (resultRegister * 4));
    vadcG->REVNP0.U |= (resultSrcNr << (resultRegister * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP1.U &= ~((0xfu) << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
    vadcG->REVNP1.U |= (resultSrcNr << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage)
{
    vadcG->CHCTR[channelIndex].B.RESPOS = rightAlignedStorage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.GTWC = 1;
    asctrl.B.GTSEL = gatingSource;
    vadcG->ASCTRL.U = asctrl.U;
    vadcG->ASMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.XTWC = 1;
    asctrl.B.XTMODE = triggerMode;
    asctrl.B.XTSEL = triggerSource;
    vadcG->ASCTRL.U = asctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize)
{
    vadcG->CHCTR[channelIndex].B.SYNC = synchonize;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELU = upperBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group)
{
    group->QMR0.B.TREV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group)
{
    group->ASMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister)
{
    vadcG->CHCTR[channelIndex].B.RESREG = resultRegister;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_getDebugResult(Ifx_VADC_G *group, uint32 resultIdx)
{
    Ifx_VADC_G_RESD tmpResult;

    tmpResult.U = group->RESD[resultIdx].U;

    return tmpResult;
}
# 17 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h" 2
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h" 1
# 349 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
typedef uint8 IfxVadc_Adc_SYNCTR_STSEL;
# 359 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
typedef struct
{
    Ifx_VADC *vadc;
} IfxVadc_Adc;



typedef struct
{
    IfxVadc_GatingSource gatingSource;
    IfxVadc_TriggerSource triggerSource;
    IfxVadc_GatingMode gatingMode;
    IfxVadc_TriggerMode triggerMode;
} IfxVadc_Adc_GatingTriggerConfig;







typedef struct
{
    IfxVadc_ArbitrationRounds arbiterRoundLength;
    boolean requestSlotQueueEnabled;
    boolean requestSlotScanEnabled;
    boolean requestSlotBackgroundScanEnabled;
} IfxVadc_Adc_ArbiterConfig;



typedef struct
{
    boolean autoBackgroundScanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_BackgroundScanConfig;



typedef struct
{
    float32 sampleTime;
    IfxVadc_ChannelResolution resolution;
} IfxVadc_Adc_ClassConfig;



typedef struct
{
    IfxVadc_Adc module;
    Ifx_VADC_G *group;
    IfxVadc_GroupId groupId;
} IfxVadc_Adc_Group;



typedef struct
{
    boolean flushQueueAfterInit;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_QueueConfig;



typedef struct
{
    boolean autoscanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_ScanConfig;



typedef struct
{
    IfxVadc_Emux_Out *pins[3];
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver padDriver;
} IfxVadc_Adc_EmuxPinConfig;





typedef struct
{
    IfxVadc_ChannelId channel;
    IfxVadc_ChannelResult resultreg;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_Channel;



typedef struct
{
    boolean globalResultUsage;
    boolean synchonize;
    boolean backgroundChannel;
    boolean rightAlignedStorage;
    Ifx_Priority resultPriority;
    Ifx_Priority channelPriority;
    IfxSrc_Tos resultServProvider;
    IfxSrc_Tos channelServProvider;
    IfxVadc_SrcNr resultSrcNr;
    IfxVadc_SrcNr channelSrcNr;
    IfxVadc_ChannelId channelId;
    IfxVadc_InputClasses inputClass;
    IfxVadc_ChannelReference reference;
    IfxVadc_ChannelResult resultRegister;
    IfxVadc_BoundarySelection lowerBoundary;
    IfxVadc_BoundarySelection upperBoundary;
    IfxVadc_BoundaryExtension boundaryMode;
    IfxVadc_LimitCheck limitCheck;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_ChannelConfig;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_Adc_ClassConfig globalInputClass[(2)];
    float32 digitalFrequency;
    float32 analogFrequency;
    float32 moduleFrequency;
    boolean startupCalibration;


    IfxVadc_LowSupplyVoltageSelect supplyVoltage;
} IfxVadc_Adc_Config;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_ExternalMultiplexerMode mode;
    IfxVadc_EmuxSelectValue startChannel;

    IfxVadc_EmuxCodingScheme code;
    IfxVadc_EmuxSampleTimeControl sampleTimeControl;
    IfxVadc_GroupId groupId;
    uint8 channels;
    IfxVadc_EmuxInterface emuxInterface;
    IfxVadc_Adc_EmuxPinConfig emuxOutPinConfig;
    IfxVadc_ChannelSelectionStyle channelSelectionStyle;
} IfxVadc_Adc_EmuxControl;



typedef struct
{
    const IfxVadc_Adc *module;
    IfxVadc_GroupId groupId;
    IfxVadc_GroupId master;
    IfxVadc_Adc_ClassConfig inputClass[(2)];
    IfxVadc_Adc_ScanConfig scanRequest;
    IfxVadc_Adc_QueueConfig queueRequest;
    IfxVadc_Adc_BackgroundScanConfig backgroundScanRequest;
    boolean disablePostCalibration;
    IfxVadc_Adc_ArbiterConfig arbiter;
} IfxVadc_Adc_GroupConfig;
# 543 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc);
# 553 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config);
# 621 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 631 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_disableModule(Ifx_VADC *vadc);
# 641 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initModule(IfxVadc_Adc *vadc, const IfxVadc_Adc_Config *config);
# 651 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initModuleConfig(IfxVadc_Adc_Config *config, Ifx_VADC *vadc);
# 692 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group);
# 779 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);





static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group);
# 798 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_deInitGroup(IfxVadc_Adc_Group *group);
# 808 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getGroupConfig(IfxVadc_Adc_Group *group, IfxVadc_Adc_GroupConfig *config);
# 818 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initGroup(IfxVadc_Adc_Group *group, const IfxVadc_Adc_GroupConfig *config);
# 828 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initGroupConfig(IfxVadc_Adc_GroupConfig *config, IfxVadc_Adc *vadc);
# 847 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead);
# 856 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_Adc_getDebugResult(IfxVadc_Adc_Channel *channel);
# 876 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getChannelConfig(IfxVadc_Adc_Channel *channel, IfxVadc_Adc_ChannelConfig *config);






extern float32 IfxVadc_Adc_getChannelConversionTime(IfxVadc_Adc_Channel *channel, IfxVadc_ConversionType conversionMode);
# 893 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initChannel(IfxVadc_Adc_Channel *channel, const IfxVadc_Adc_ChannelConfig *config);
# 903 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initChannelConfig(IfxVadc_Adc_ChannelConfig *config, const IfxVadc_Adc_Group *group);
# 922 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc);
# 1017 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc);
# 1029 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1038 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc);
# 1056 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group);
# 1067 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1076 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group);
# 1098 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options);
# 1107 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group);
# 1116 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group);
# 1125 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group);
# 1141 "0_Src/BaseSw/iLLD/TC23A/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initExternalMultiplexerModeConfig(IfxVadc_Adc_EmuxControl *emuxConfig, Ifx_VADC *vadc);






extern void IfxVadc_Adc_initExternalMultiplexerMode(Ifx_VADC *vadc, const IfxVadc_Adc_EmuxControl *emuxControl);







static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options)
{
    IfxVadc_addToQueue(channel->group->group, channel->channel, options);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_clearQueue(group->group, 1);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead)
{
    IfxVadc_configureWaitForReadMode(channel->group->group, channel->resultreg, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead)
{
    IfxVadc_configureWaitForReadModeForGlobalResultRegister(vadc->vadc, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc)
{
    Ifx_VADC *vadcSFR = vadc->vadc;

    IfxVadc_resetKernel(vadcSFR);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc)
{
    return IfxVadc_getBackgroundScanStatus(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc)
{
    return IfxVadc_getGlobalResult(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->group;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    IfxVadc_getGroupResult(group->group, results, resultOffset, numResults);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config)
{
    config->vadc = vadc->vadc;
    config->analogFrequency = IfxVadc_getAdcAnalogFrequency(vadc->vadc);
    config->digitalFrequency = IfxVadc_getAdcDigitalFrequency(vadc->vadc);
    config->globalInputClass[0].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 0);
    config->globalInputClass[1].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 1);
    config->globalInputClass[0].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 0, config->analogFrequency);
    config->globalInputClass[1].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 1, config->analogFrequency);
    config->moduleFrequency = IfxVadc_getAdcModuleFrequency();
    config->startupCalibration = IfxVadc_getStartupCalibration(vadc->vadc);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getQueueStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel)
{
    return IfxVadc_getResult(channel->group->group, channel->resultreg);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType)
{
    return IfxVadc_getResultBasedOnRequestSource(group->module.vadc, group->group, channel, sourceType);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getScanStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->module.vadc;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setBackgroundScan(vadc->vadc, group->groupId, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setScan(group->group, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc)
{
    IfxVadc_startBackgroundScan(vadc->vadc);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_startQueue(group->group);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group)
{
    IfxVadc_startScan(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RESD IfxVadc_Adc_getDebugResult(IfxVadc_Adc_Channel *channel)
{
    return IfxVadc_getDebugResult(channel->group->group, channel->resultreg);
}
# 18 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h" 2
# 1 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h" 1
# 44 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h"
typedef struct
{
    float32 a;
    float32 b;
    float32 out;
} Ifx_LowPassPt1F32;


typedef struct
{
    float32 cutOffFrequency;
    float32 gain;
    float32 samplingTime;
} Ifx_LowPassPt1F32_Config;





extern void Ifx_LowPassPt1F32_init(Ifx_LowPassPt1F32 *filter, const Ifx_LowPassPt1F32_Config *config);
static inline __attribute__ ((always_inline)) void Ifx_LowPassPt1F32_reset(Ifx_LowPassPt1F32 *filter);
extern float32 Ifx_LowPassPt1F32_do(Ifx_LowPassPt1F32 *filter, float32 input);







static inline __attribute__ ((always_inline)) void Ifx_LowPassPt1F32_reset(Ifx_LowPassPt1F32 *filter)
{
    filter->out = 0.0;
}
# 19 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h" 2
# 38 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h"
typedef enum
{
 HLD_Vadc_GroupId_0 = 0,
 HLD_Vadc_GroupId_1 = 1,
}HLD_Vadc_GroupId;
# 59 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h"
typedef enum
{
 HLD_Vadc_ChannelId_none = -1,
 HLD_Vadc_ChannelId_0 = 0,
 HLD_Vadc_ChannelId_1 = 1,
 HLD_Vadc_ChannelId_2 = 2,
 HLD_Vadc_ChannelId_3 = 3,
 HLD_Vadc_ChannelId_4 = 4,
 HLD_Vadc_ChannelId_5 = 5,
 HLD_Vadc_ChannelId_6 = 6,
 HLD_Vadc_ChannelId_7 = 7,

 HLD_Vadc_ChannelId_8 = 8,
 HLD_Vadc_ChannelId_9 = 9,
 HLD_Vadc_ChannelId_10 = 10,
 HLD_Vadc_ChannelId_11 = 11

}HLD_Vadc_ChannelId;


typedef struct
{
 struct
 {
  IfxVadc_Adc vadc;


  union
  {
   struct
   {
    IfxVadc_Adc_Group g0;
    IfxVadc_Adc_Group g1;

   }S;
   IfxVadc_Adc_Group A[2];
  }adcGroup;
# 111 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h"
 }driver;

}HLD_Vadc_t;



typedef struct
{
 IfxVadc_Adc_Channel channel;

 IfxVadc_ChannelResult result;

 Ifx_LowPassPt1F32 lpf;

}HLD_Vadc_Channel;

typedef struct
{
 HLD_Vadc_GroupId groupId;
 HLD_Vadc_ChannelId channelId;
}HLD_Vadc_Channel_In;


typedef struct
{
 HLD_Vadc_Channel_In* channelIn;
 struct
 {
  boolean activated;
  Ifx_LowPassPt1F32_Config config;
 }lpf;

}HLD_Vadc_Channel_Config;

typedef struct
{
 uint32 rawData;
 float32 voltage;
}HLD_Vadc_Data;





extern HLD_Vadc_Channel_In HLD_Vadc_AN0_G0CH0_X102_12;
extern HLD_Vadc_Channel_In HLD_Vadc_AN1_G0CH1_X102_11;
extern HLD_Vadc_Channel_In HLD_Vadc_AN2_G0CH2_X102_10;
extern HLD_Vadc_Channel_In HLD_Vadc_AN3_G0CH3_X102_9;
extern HLD_Vadc_Channel_In HLD_Vadc_AN9_G0CH9_X102_6;
extern HLD_Vadc_Channel_In HLD_Vadc_AN10_G0CH10_X102_10;
extern HLD_Vadc_Channel_In HLD_Vadc_AN11_G0CH11_X103_39;
extern HLD_Vadc_Channel_In HLD_Vadc_AN12_G1CH0_X103_40;
extern HLD_Vadc_Channel_In HLD_Vadc_AN13_G1CH1_X103_38;
extern HLD_Vadc_Channel_In HLD_Vadc_AN15_G1CH3_X102_8;
extern HLD_Vadc_Channel_In HLD_Vadc_AN16_G1CH4_X102_7;
extern HLD_Vadc_Channel_In HLD_Vadc_AN17_G1CH5_X103_37;
extern HLD_Vadc_Channel_In HLD_Vadc_AN20_G1CH8_X103_36;
extern HLD_Vadc_Channel_In HLD_Vadc_AN21_G1CH9_X103_35;
# 178 "0_Src/AppSw/Tricore/HLD/BasicModules/Vadc/Vadc.h"
extern void HLD_Vadc_init(void);
extern void HLD_Vadc_initChannel(HLD_Vadc_Channel* channel, HLD_Vadc_Channel_Config* config);
extern void HLD_Vadc_initChannelConfig(HLD_Vadc_Channel_Config* config);
extern void HLD_Vadc_forceStart(void);
extern void HLD_Vadc_getData(HLD_Vadc_Data* data, HLD_Vadc_Channel* channel);
# 141 "0_Src/AppSw/Tricore/HLD/HLD.h" 2

# 1 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/Led.h" 1
# 14 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/Led.h"
# 1 "0_Src/AppSw/Tricore/HLD/BasicModules/Stm/Stm.h" 1
# 22 "0_Src/AppSw/Tricore/HLD/BasicModules/Stm/Stm.h"
# 1 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h" 1
# 46 "0_Src/AppSw/Tricore/Main/Cpu0_Main.h"
typedef struct
{
    float32 sysFreq;
    float32 cpuFreq;
    float32 pllFreq;
    float32 stmFreq;
} AppInfo;


typedef struct
{
    AppInfo info;
} App_Cpu0;





extern App_Cpu0 g_AppCpu0;
# 23 "0_Src/AppSw/Tricore/HLD/BasicModules/Stm/Stm.h" 2
# 39 "0_Src/AppSw/Tricore/HLD/BasicModules/Stm/Stm.h"
typedef union
{







 uint8 U;
 struct
 {
  volatile boolean Led107:1;
  volatile boolean Led108:1;
  volatile boolean Led109:1;
  volatile boolean Led110:1;
 } B;

}Stm_LedState;

typedef struct
{
 Ifx_STM *stmSfr;
 IfxStm_CompareConfig stmConfig;
 Stm_LedState LedState;
 volatile sint32 counter;
}Stm_data;

typedef struct
{
 volatile boolean flag_1ms:1;
 volatile boolean flag_10ms:1;
 volatile boolean flag_10ms_slot1:1;
 volatile boolean flag_100ms:1;
 volatile boolean flag_100ms_slot4:1;
 volatile boolean flag_100ms_slot5:1;
 volatile boolean flag_100ms_slot14:1;
 volatile boolean flag_100ms_slot24:1;
 volatile boolean flag_100ms_slot34:1;
 volatile boolean flag_100ms_slot44:1;
 volatile boolean flag_1000ms:1;
 volatile boolean flag_1000ms_slot3:1;
}Stm_task;







extern void Stm_init (void);
extern void Stm_scheduler (void);
# 15 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/Led.h" 2
# 42 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/Led.h"
extern Stm_data g_Stm;



static inline __attribute__ ((always_inline)) void HLD_Led_setLedBinary(uint8);
static inline __attribute__ ((always_inline)) uint8 HLD_Led_getLedState(void);




static inline __attribute__ ((always_inline)) void HLD_Led_setLedBinary(uint8 b)
{
 (g_Stm.LedState.U = (b));
}
static inline __attribute__ ((always_inline)) uint8 HLD_Led_getLedState(void)
{
 return (g_Stm.LedState.U);
}
# 143 "0_Src/AppSw/Tricore/HLD/HLD.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/IMU/IMU.h" 1
# 34 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/IMU/IMU.h"
typedef struct
{
 float32 Gyro_x;
 float32 Gyro_y;
 float32 Gyro_z;

 float32 Accel_x;
 float32 Accel_y;
 float32 Accel_z;

 boolean isOk;
}HLD_Imu_data_t;


typedef struct
{
# 65 "0_Src/AppSw/Tricore/HLD/AbstractionLayer/IMU/IMU.h"
 HLD_Imu_data_t data;
 struct
 {
  IfxCpu_mutexLock mutex;
  HLD_Imu_data_t data;
 }shared;

 struct
 {

  sint16 Gyro_x;
  sint16 Gyro_y;
  sint16 Gyro_z;

  sint16 Accel_x;
  sint16 Accel_y;
  sint16 Accel_z;

  uint16 WhoAmI;
 }MPU;


}HLD_Imu_t;



extern HLD_Imu_t HLD_Imu;



extern void HLD_Imu_init(void);
extern void HLD_Imu_run_10ms_s0(void);
extern void HLD_Imu_run_10ms_s1(void);
extern void HLD_Imu_run_1ms_c1(void);




static inline __attribute__ ((always_inline)) float32 HLD_Imu_getAccelX (void)
{
 return HLD_Imu.data.Accel_x;
}
static inline __attribute__ ((always_inline)) float32 HLD_Imu_getAccelY (void)
{
 return HLD_Imu.data.Accel_y;
}
static inline __attribute__ ((always_inline)) float32 HLD_Imu_getAccelZ (void)
{
 return HLD_Imu.data.Accel_z;
}

static inline __attribute__ ((always_inline)) float32 HLD_Imu_getGyroX (void)
{
 return HLD_Imu.data.Gyro_x;
}
static inline __attribute__ ((always_inline)) float32 HLD_Imu_getGyroY (void)
{
 return HLD_Imu.data.Gyro_y;
}
static inline __attribute__ ((always_inline)) float32 HLD_Imu_getGyroZ (void)
{
 return HLD_Imu.data.Gyro_z;
}




static inline __attribute__ ((always_inline)) boolean HLD_Imu_shared_acquireMutex(void)
{
 return IfxCpu_acquireMutex(&HLD_Imu.shared.mutex);
}
static inline __attribute__ ((always_inline)) void HLD_Imu_shared_releaseMutex(void)
{
 return IfxCpu_releaseMutex(&HLD_Imu.shared.mutex);
}
static inline __attribute__ ((always_inline)) HLD_Imu_data_t HLD_Imu_shared_getData(void)
{
 return HLD_Imu.shared.data;
}
# 144 "0_Src/AppSw/Tricore/HLD/HLD.h" 2




# 1 "0_Src/AppSw/Tricore/HLD/LcdInterface.h" 1
# 18 "0_Src/AppSw/Tricore/HLD/LcdInterface.h"
# 1 "0_Src/AppSw/Tricore/HLD/Lcd.h" 1
# 20 "0_Src/AppSw/Tricore/HLD/Lcd.h"
# 1 "0_Src/AppSw/Tricore/HLD/LCD/glcd.h" 1
# 76 "0_Src/AppSw/Tricore/HLD/LCD/glcd.h"
extern void GLCD_init(void);
extern void GLCD_clear(unsigned short color);
extern void GLCD_setTextColor(unsigned short color);
extern void GLCD_setBackColor(unsigned short color);
extern void GLCD_displayChar(unsigned int ln, unsigned int col, unsigned char c);
extern void GLCD_displayStringLn(unsigned int ln, const char *s);
extern void GLCD_displayStringLn_col(unsigned int ln, unsigned int col, const char *s);
extern void GLCD_displayStringLn_col_inv(unsigned int ln, unsigned int col, const char *s);
extern void GLCD_bitmap(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const void *bitmap);
extern void GLCD_clreaWindow(unsigned int x, unsigned int y, unsigned int w, unsigned int h, const unsigned short color);
extern void GLCD_clearLn(unsigned int ln);
extern void GLCD_putPixel(unsigned int x, unsigned int y);
extern int GLCD_getLineNo(unsigned int line);


extern int GLCD_GetTouchXY(unsigned int *x, unsigned int *y);
# 21 "0_Src/AppSw/Tricore/HLD/Lcd.h" 2
# 1 "0_Src/AppSw/Tricore/HLD/LCD/usr_sprintf.h" 1
# 15 "0_Src/AppSw/Tricore/HLD/LCD/usr_sprintf.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 98 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 16 "0_Src/AppSw/Tricore/HLD/LCD/usr_sprintf.h" 2

int usr_vsprintf(char *dest, const char *fmt, va_list ap);

int usr_sprintf(char *buf, char const *fmt, ...);
# 22 "0_Src/AppSw/Tricore/HLD/Lcd.h" 2
# 46 "0_Src/AppSw/Tricore/HLD/Lcd.h"
typedef struct __attribute__((packed))
{
 struct
 {
  unsigned int x;
  unsigned int y;
 }touch;

 char text[32];
 uint8 page;
 const uint8 lastPage;
 uint8 arrayPage;
 const uint8 arrayLastPage;

 boolean array:1;
 boolean isRun:1;
 boolean arrayEnabled:1;

}Lcd_t;

typedef struct __attribute__((aligned(2),packed))
{
 uint16 xStart;
 uint16 yStart;
 uint16 xAxis;
 uint16 yAxis;
 uint32 yScale;
 uint8 prevVal[320];

}ArrayChart_t;

typedef struct __attribute__((aligned(2),packed))
{
 uint32 accum;
 const uint16 xmin;
 const uint16 xmax;
 const uint16 ymin;
 const uint16 ymax;
}TouchButton_t;



extern Lcd_t g_Lcd;



extern void HLD_Lcd_init(void);
extern void HLD_Lcd_run(void);
extern void HLD_Lcd_run1(void);

extern boolean HLD_Lcd_getButton (TouchButton_t* button);
# 114 "0_Src/AppSw/Tricore/HLD/Lcd.h"
extern int Lcd_sprintf(uint8 ln, char const *fmt, ...);





extern int Lcd_sprintf_col(uint8 ln, uint16 col, char const *fmt, ...);
extern int Lcd_sprintf_col_inv(uint8 ln, uint16 col, char const *fmt, ...);
# 19 "0_Src/AppSw/Tricore/HLD/LcdInterface.h" 2
# 46 "0_Src/AppSw/Tricore/HLD/LcdInterface.h"
extern void HLD_LcdInterface_init(void);
extern void HLD_LcdInterface_setPage(void);




extern void HLD_LcdInterface_page1(void);
extern void HLD_LcdInterface_page2(void);
extern void HLD_LcdInterface_page3(void);
extern void HLD_LcdInterface_page1_1(void);
extern void HLD_LcdInterface_page2_1(void);
extern void HLD_LcdInterface_page3_1(void);




extern void HLD_LcdInterface_doStart(void);
extern void HLD_LcdInterface_doStop(void);
# 149 "0_Src/AppSw/Tricore/HLD/HLD.h" 2
# 17 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c" 2
# 43 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
Qspi_t g_Qspi;
# 76 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""ISR_qspi2_Tx"",""0"",""3" );extern void __attribute__ ((interrupt_handler)) ISR_qspi2_Tx(); void ISR_qspi2_Tx (void);
__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""ISR_qspi2_Rx"",""0"",""4" );extern void __attribute__ ((interrupt_handler)) ISR_qspi2_Rx(); void ISR_qspi2_Rx (void);
__asm__ (".ifndef .intr.entry.include                        \n" ".altmacro                                           \n" ".macro .int_entry.2 intEntryLabel, name # define the section and inttab entry code \n" "	.pushsection .\\intEntryLabel,\"ax\",@progbits   \n" "	__\\intEntryLabel :                              \n" "		svlcx                                        \n" "		movh.a  %a14, hi:\\name                      \n" "		lea     %a14, [%a14]lo:\\name                \n" "		ji      %a14                                 \n" "	.popsection                                      \n" ".endm                                               \n" ".macro .int_entry.1 prio,vectabNum,u,name           \n" ".int_entry.2 intvec_tc\\vectabNum\\u\\prio,(name) # build the unique name \n" ".endm                                               \n" "                                                    \n" ".macro .intr.entry name,vectabNum,prio              \n" ".int_entry.1 %(prio),%(vectabNum),_,name # evaluate the priority and the cpu number \n" ".endm                                               \n" ".intr.entry.include:                                \n" ".endif                                              \n" ".intr.entry ""ISR_qspi2_Er"",""0"",""10" );extern void __attribute__ ((interrupt_handler)) ISR_qspi2_Er(); void ISR_qspi2_Er (void);
void ISR_qspi2_Tx(void)
{
    IfxCpu_enableInterrupts();
    IfxQspi_SpiMaster_isrTransmit(&g_Qspi.drivers.spiMaster);
}
void ISR_qspi2_Rx(void)
{
    IfxCpu_enableInterrupts();
    IfxQspi_SpiMaster_isrReceive(&g_Qspi.drivers.spiMaster);
}
void ISR_qspi2_Er(void)
{
    IfxCpu_enableInterrupts();
    IfxQspi_SpiMaster_isrError(&g_Qspi.drivers.spiMaster);
}


static void HLD_QspiModule_init(void)
{
 printf("QspiModule_init() called\n");
 IfxQspi_SpiMaster_Config spiMasterConfig;
 IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;
 Ifx_QSPI *qspi2SFR;
 {

  IfxQspi_SpiMaster_initModuleConfig(&spiMasterConfig, &(*(Ifx_QSPI *)0xF0001E00u));


  spiMasterConfig.base.maximumBaudrate = 10000000;
# 119 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
  spiMasterConfig.base.txPriority = 3;
  spiMasterConfig.base.rxPriority = 4;
  spiMasterConfig.base.erPriority = 10;
  spiMasterConfig.base.isrProvider = (IfxSrc_Tos)IfxCpu_getCoreIndex();



  spiMasterConfig.rxFifoThreshold = IfxQspi_RxFifoInt_1;







  const IfxQspi_SpiMaster_Pins pins = {&IfxQspi2_SCLK_P15_6_OUT,
    IfxPort_OutputMode_pushPull,
    &IfxQspi2_MTSR_P15_5_OUT, IfxPort_OutputMode_pushPull,

    &IfxQspi2_MRSTA_P15_4_IN, IfxPort_InputMode_pullUp,

    IfxPort_PadDriver_cmosAutomotiveSpeed3
  };
  spiMasterConfig.pins = &pins;


  IfxQspi_SpiMaster_initModule(&g_Qspi.drivers.spiMaster, &spiMasterConfig);
# 154 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
 }

 {

  IfxQspi_SpiMaster_initChannelConfig(&spiMasterChannelConfig,
    &g_Qspi.drivers.spiMaster);


  spiMasterChannelConfig.base.baudrate = 1000000;

  spiMasterChannelConfig.channelBasedCs = IfxQspi_SpiMaster_ChannelBasedCs_disabled;
  spiMasterChannelConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge;

  spiMasterChannelConfig.base.mode.clockPolarity = SpiIf_ClockPolarity_idleHigh;


  const IfxQspi_SpiMaster_Output slsOutput = {&IfxQspi2_SLSO4_P14_7_OUT,
    IfxPort_OutputMode_pushPull,
    IfxPort_PadDriver_cmosAutomotiveSpeed1};


  spiMasterChannelConfig.sls.output.pin = slsOutput.pin;
  spiMasterChannelConfig.sls.output.mode = slsOutput.mode;
  spiMasterChannelConfig.sls.output.driver = slsOutput.driver;


  IfxQspi_SpiMaster_initChannel(&g_Qspi.drivers.spiMasterChannel,
    &spiMasterChannelConfig);
 }
 printf("QspiModule initialized\n");
}





void HLD_Qspi_init(void)
{
 printf("Qspi_init() called\n");

    boolean interruptState = IfxCpu_disableInterrupts();

 HLD_QspiModule_init();

 printf("Qspi initialized\n");

 IfxCpu_restoreInterrupts(interruptState);
}
# 234 "0_Src/AppSw/Tricore/HLD/BasicModules/Qspi/Qspi.c"
void HLD_Qspi_writeReg(uint8 address, uint8 value)
{
 HLD_Qspi_Mpu9250_writeReg(address, value);
}
uint8 HLD_Qspi_readReg(uint8 address)
{
 return HLD_Qspi_Mpu9250_readReg(address);
}
sint16 HLD_Qspi_getSint16(uint8 addressLow,uint8 addressHigh)
{
 return HLD_Qspi_Mpu9250_getSint16(addressLow,addressHigh);
}
