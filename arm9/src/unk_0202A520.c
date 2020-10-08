#include "global.h"

#pragma thumb on

struct Unk0202A4B8
{
    u8 filler[2];
    u8 u_2; // used
    u8 u_3; // used
    u16 u_4; // used
    u16 u_6; // used
    u16 filler_1[2];
    u16 u_array_C[5]; // used
    u16 u_16; // used
    u16 u_18; // used
};

u16 FUN_0202A520(struct Unk0202A4B8 *unk);
u8 FUN_0202A524(struct Unk0202A4B8 *unk);
u16 FUN_0202A538(struct Unk0202A4B8 *unk, int arg1, int arg2);

u16 FUN_0202A520(struct Unk0202A4B8 *unk)
{
    return unk->u_16;
}

u8 FUN_0202A524(struct Unk0202A4B8 *unk)
{
    return (u8)(unk->u_16 / (0xfa << 2));
}

u16 FUN_0202A538(struct Unk0202A4B8 *unk, int arg1, int arg2)
{
    if (arg1 == 5)
    {
        return 0;
    }

    switch(arg2) {
        case 2:
            unk->u_array_C[arg1] = 0;
            break;
        case 3:
            if (unk->u_array_C[arg1] < 0xfffe) {
                unk->u_array_C[arg1]++;
            }
            break;
    }
    return unk->u_array_C[arg1];    
}

// NONMATCHING
// struct Unk0202A578
// {
//     u8 filler[8];
//     u16 u_8;
// };
// ARM_FUNC u32 FUN_0202A578(struct Unk0202A578 *arg0, u16 arg1, u32 arg2) {
    
//     u16 r3 = 1;

//     for (u16 i = 0; i <= arg1; i++){
//         r3 *= 2;
//     }

//     switch (arg2) {
//         case 1:
//             // 0202a5ac
//             arg0->u_8 |= r3;
//             break;
//         case 0:
//             // 0202a5b4
//             return (arg0->u_8 / 2) & 1;
//             break;        
//         case 2:  
//             u16 mask = 0xffff ^ r3;
//             arg0->u_8 &= mask;          
//             break;
//     }
//     return 0;    
// }
