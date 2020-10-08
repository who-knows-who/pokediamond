#include "global.h"
#include "save_block_2.h"

#pragma thumb on

struct Unk0202A8F8
{
    u8 bytes[0xe];
};

int FUN_0202A8F4();
void FUN_0202A8F8(struct Unk0202A8F8 *unk);
void *FUN_0202A918(void *arg0);

int FUN_0202A8F4()
{
    return sizeof(struct Unk0202A8F8);
}

void FUN_0202A8F8(struct Unk0202A8F8 *unk)
{
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

void *FUN_0202A918(void *arg0)
{
    return SavArray_get(arg0, 24);
}