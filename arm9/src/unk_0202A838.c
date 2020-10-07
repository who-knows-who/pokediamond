#include "global.h"
#include "MI_memory.h"
#include "heap.h"
#include "proto.h"
#include "party.h"

#pragma thumb on

// Prototypes from other files
void FUN_0202A1E4(void *dest);
void FUN_0202A1F0(void *unk);
void FUN_0202A204(void *arg0);
void FUN_0202A230(void *dest);

struct Unk0202A8F8 {
    u8 bytes[0xd];
};

// Prototypes for this file
void FUN_0202A838(void *dest, void *src, u8 arg2, u8 arg3);
void FUN_0202A864(void *ptr0, void *ptr1);
void *FUN_0202A878(void *src, u32 head_id);
int FUN_0202A89C();
void FUN_0202A8A4(void *ptr);
struct PlayerParty *FUN_0202A8CC(void *arg0);
void *FUN_0202A8D8(void *arg0);
void *FUN_0202A8E4(void *arg0);
int FUN_0202A8F4();
void FUN_0202A8F8(struct Unk0202A8F8 *unk);
struct PlayerParty *FUN_0202A918(void *arg0);

void FUN_0202A838(void *dest, void *src, u8 arg2, u8 arg3)
{
    MI_CpuCopy8(src, dest + 0x740, 0xff * 4);
    *(u8 *)(dest + 0x103) = arg2;
    *(u8 *)(dest + 0x102) = arg3;
    *(u8 *)(dest + 0xff) = 1;
}

void FUN_0202A864(void *ptr0, void *ptr1)
{
    *(u8 *)ptr1 = *(u8 *)(ptr0 + 0x103);
    *(u8 *)(ptr1 + 1) = *(u8 *)(ptr0 + 0x102);
}

void *FUN_0202A878(void *src, u32 head_id)
{
    void *ptr = AllocFromHeap(head_id, 0xff * 4);
    MI_CpuCopy8(src + 0x1d * 64, ptr, 0xff * 4);
    return ptr;
}

int FUN_0202A89C()
{
    return 0xd * 256;
}

void FUN_0202A8A4(void *ptr)
{
    FUN_0202A1E4(ptr);
    FUN_0202A1F0(ptr + 0x3c);
    FUN_0202A204(ptr + 0x69 * 4);
    FUN_0202A230(ptr + 0x71 * 4);
}

struct PlayerParty *FUN_0202A8CC(void *arg0)
{
    return FUN_02022610(arg0, 23);
}

void *FUN_0202A8D8(void *arg0)
{
    return FUN_02022610(arg0, 23) + 0x3c;
}

void *FUN_0202A8E4(void *arg0)
{
    return FUN_02022610(arg0, 23) + 0x71 * 4;
}

int FUN_0202A8F4()
{
    return 14;
}

void FUN_0202A8F8(struct Unk0202A8F8 *unk) {
    unk->bytes[0] = 0;
    unk->bytes[1] = 0;
    unk->bytes[2] = 0;
    unk->bytes[3] = 0;
    unk->bytes[4] = 0;
    unk->bytes[5] = 0;
    unk->bytes[6] = 0;
    unk->bytes[7] = 0;
    unk->bytes[8] = 0;
    unk->bytes[9] = 0;
    unk->bytes[10] = 0;
    unk->bytes[11] = 0;
    unk->bytes[12] = 0;
    unk->bytes[13] = 0;  
}

struct PlayerParty *FUN_0202A918(void *arg0)
{
    return FUN_02022610(arg0, 24);
}
