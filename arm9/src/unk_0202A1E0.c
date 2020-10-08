#include "global.h"
#include "MI_dma.h"
#include "MI_memory.h"
#include "mail_message.h"

struct Unk0202A1F0
{
    u8 b0;
    u8 b1;
    u8 b2;
    u8 b3;
};

struct Unk0202A204
{
    struct MailMessage msg0;
    struct MailMessage msg1;
    struct MailMessage msg2;
    struct MailMessage msg3;
};

struct Unk0202A240
{
    u8 u_0_0 : 1; // used
    u8 u_0_1 : 1;
    u8 u_0_2 : 3; // used
    u8 u_0_5 : 3; // used
    u8 u_1;
    u8 u_2; // used
    u8 u_3; // used
    u16 u_4; // used
    u16 u_6; // used
    int u_8; // used
    int u_C; // used
    int filler[6];
    u32 u_28; // used
    int u_2C; // used
};

struct Unk0202A3B4
{
    u16 u_0; // used
    u8 u_2; // used
    u8 u_3; // used
    u8 filler_0[4];
    u16 filler_1 : 4;
    u16 u_8_4 : 1; // used
};

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

// Prototypes from other files
extern void FUN_02013764(void *arg0, int arg1);
extern float _s32_div_f(s32 a0, s32 a1);

// Prototypes for this file
int FUN_0202A1E0();
void FUN_0202A1E4(void *dst);
void FUN_0202A1F0(struct Unk0202A1F0 *unk);
void FUN_0202A204(struct Unk0202A204 *unk);
void FUN_0202A230(void *dst);
u32 FUN_0202A240(struct Unk0202A240 *unk, u32 arg1, void *dst);
void FUN_0202A2C4(struct Unk0202A240 *dst, u32 arg1, void *src);
void FUN_0202A36C(struct Unk0202A240 *unk, int arg1, int arg2, int arg3);
u8 FUN_0202A398(struct Unk0202A240 *unk);
void FUN_0202A3A0(struct Unk0202A240 *unk, u16 arg1);
u16 FUN_0202A3B4(struct Unk0202A3B4 *unk, u16 arg1, int arg2);u8 FUN_0202A40C(struct Unk0202A3B4 *unk, int arg1);
u8 FUN_0202A444(struct Unk0202A3B4 *unk, int arg1);
void FUN_0202A474(void *dst, int arg1, const void *src);
void FUN_0202A498(const void *src, int arg1, void *dst);
void FUN_0202A4B8(void *arg0, void *arg1);

THUMB_FUNC int FUN_0202A1E0()
{
    return 0xe4;
}

THUMB_FUNC void FUN_0202A1E4(void *dst)
{
    MI_CpuFill8(dst, 0, 0x3c);
}

THUMB_FUNC void FUN_0202A1F0(struct Unk0202A1F0 *unk)
{
    MI_CpuFill8(unk, 0, 0x5a << 2);
    unk->b3 = 1;
}

THUMB_FUNC void FUN_0202A204(struct Unk0202A204 *unk)
{
    MailMsg_init_fromTemplate(&unk->msg0, 0);
    MailMsg_init_fromTemplate(&unk->msg1, 1);
    MailMsg_init_fromTemplate(&unk->msg2, 2);
    MailMsg_init_fromTemplate(&unk->msg3, 3);
}

THUMB_FUNC void FUN_0202A230(void *dst)
{
    MI_CpuFill8(dst, 0, 0xB3C);
}

THUMB_FUNC u32 FUN_0202A240(struct Unk0202A240 *unk, u32 arg1, void *dst)
{
    switch (arg1)
    {
    case 0:
        return unk->u_0_2;
    case 1:
        return unk->u_2;
    case 2:
        return unk->u_3;
    case 3:
        return unk->u_4;
    case 4:
        return unk->u_6;
    case 5:
        MI_CpuCopy8(&unk->u_8, dst, 4);
        return 0;
    case 6:
        MI_CpuCopy8(&unk->u_2C, dst, 16);
        return 0;
    case 7:
        return unk->u_0_0;
    case 8:
        MI_CpuCopy8(&unk->u_C, dst, 28);
        return 0;
    case 9:
        return unk->u_0_5;
    case 10:
        return unk->u_28;
    default:
        return 0;
    };
}

THUMB_FUNC void FUN_0202A2C4(struct Unk0202A240 *dst, u32 arg1, void *src)
{
    switch (arg1)
    {
    case 0:
        dst->u_0_2 = *(u8 *)src;
        break;
    case 1:
        dst->u_2 = *(u8 *)(src + 0);
        break;
    case 2:
        dst->u_3 = *(u8 *)(src + 0);
        break;
    case 3:
        dst->u_4 = *(u16 *)(src + 0);
        break;
    case 4:
        dst->u_6 = *(u16 *)(src + 0);
        break;
    case 5:
        MI_CpuCopy8(src, &dst->u_8, 4);
        break;
    case 6:
        MI_CpuCopy8(src, &dst->u_2C, 16);
        break;
    case 7:
        dst->u_0_0 = *(u8 *)src;
        break;
    case 8:
        MI_CpuCopy8(src, &dst->u_C, 28);
        break;
    case 10:
        dst->u_28 = *(u32 *)src;
        break;
    case 9:
        dst->u_0_5 = *(u8 *)src;
        break;
    }
}

THUMB_FUNC void FUN_0202A36C(struct Unk0202A240 *unk, int arg1, int arg2, int arg3)
{
    if (unk->u_3 + arg1 < 0xff)
    {
        unk->u_3 += arg1;
    }

    if (unk->u_4 + arg2 < 0xffff)
    {
        unk->u_4 += arg2;
    }

    if (unk->u_6 + arg3 < 0xffff)
    {
        unk->u_6 += arg3;
    }
}

THUMB_FUNC u8 FUN_0202A398(struct Unk0202A240 *unk)
{
    return unk->u_0_1;
}

THUMB_FUNC void FUN_0202A3A0(struct Unk0202A240 *unk, u16 arg1)
{
    unk->u_0_1 = arg1;
}

THUMB_FUNC u16 FUN_0202A3B4(struct Unk0202A3B4 *unk, u16 arg1, int arg2)
{
    switch (arg2)
    {
    case 0:
        break;
    case 1:
        if (arg1 > 0x270F)
        {
            unk->u_0 = 0x270F;
        }
        else
        {
            unk->u_0 = arg1;
        }
        break;
    case 2:
    case 3:
    case 4:
        break;
    case 5:
        if (unk->u_0 + arg1 > 0x270F)
        {
            unk->u_0 = 0x270F;
        }
        else
        {
            unk->u_0 += arg1;
        }
        break;
    case 6:
        if (unk->u_0 < arg1)
        {
            unk->u_0 = 0;
        }
        else
        {
            unk->u_0 -= arg1;
        }
        break;
    }
    return unk->u_0;
}

THUMB_FUNC u8 FUN_0202A40C(struct Unk0202A3B4 *unk, int arg1)
{
    switch (arg1)
    {
    case 2:
        unk->u_2 = 0;
        unk->u_8_4 = 0;
        break;
    case 3:
        if (unk->u_8_4 != 0)
        {
            unk->u_2 += 1;
        }
        else
        {
            unk->u_2 = 1;
            unk->u_8_4 = 1;
        }
        break;
    }
    return unk->u_2;
}

THUMB_FUNC u8 FUN_0202A444(struct Unk0202A3B4 *unk, int arg1)
{
    switch (arg1)
    {
    case 2:
        unk->u_3 = 1;
        break;
    case 3:
        if (unk->u_3 < 0xa)
        {
            unk->u_3++;
        }
        break;
    case 4:
        if (unk->u_3 > 1)
        {
            unk->u_3--;
        }
        break;
    }
    return unk->u_3;
}

THUMB_FUNC void FUN_0202A474(void *dst, int arg1, const void *src)
{
    if (arg1 == 0)
    {
        MI_CpuCopy8(src, dst + 0xc0, 0xa8);
    }
    else
    {
        MI_CpuCopy8(src, dst + 0x18, 0xa8);
    }
}

THUMB_FUNC void FUN_0202A498(const void *src, int arg1, void *dst)
{
    if (arg1 == 0)
    {
        MI_CpuCopy8(src + 0xc0, dst, 0xa8);
    }
    else
    {
        MI_CpuCopy8(src + 0x18, dst, 0xa8);
    }
}


// NONMATCHING
// void FUN_0202A4B8(struct Unk0202A4B8 *arg0, struct Unk0202A4B8 *arg1)
// {
//     // u8 a1_2 = arg1->u_2;
//     // int r2 = 0xfa << 2 /*1000*/;
//     u16 r4 = (arg1->u_2 - 1) * (0xfa << 2);

//     u16 r5;
//     u16 r3 = arg1->u_4 * 0xa + arg1->u_3 * 0x14;
//     if (r3 > 950) {
//         r5 = 0;
//     } else {
//         r5 = 950 - r3;
//     }

//     u16 r1;
//     if (arg1->u_6 > 0x3ca) {
//         r1 = 0;
//     } else {
//         r1 = _s32_div_f(0x3ca + 0x1e - arg1->u_6, 0x1e);
//     }

//     arg0->u_16 = r4 + r5 + r1;
// }
