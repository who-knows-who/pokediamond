#include "global.h"
#include "math_util.h"

extern const s16 UNK_020FFA38[]; // temporary until further notice

/*
 * Constant tables
 */
const s32 gSineTable[] =
{
    0x00000000, 0x00000047, 0x0000008F, 0x000000D6,
    0x0000011E, 0x00000165, 0x000001AC, 0x000001F3,
    0x0000023A, 0x00000281, 0x000002C7, 0x0000030E,
    0x00000354, 0x00000399, 0x000003DF, 0x00000424,
    0x00000469, 0x000004AE, 0x000004F2, 0x00000536,
    0x00000579, 0x000005BC, 0x000005FE, 0x00000640,
    0x00000682, 0x000006C3, 0x00000704, 0x00000744,
    0x00000783, 0x000007C2, 0x00000800, 0x0000083E,
    0x0000087B, 0x000008B7, 0x000008F2, 0x0000092D,
    0x00000968, 0x000009A1, 0x000009DA, 0x00000A12,
    0x00000A49, 0x00000A7F, 0x00000AB5, 0x00000AE9,
    0x00000B1D, 0x00000B50, 0x00000B82, 0x00000BB4,
    0x00000BE4, 0x00000C13, 0x00000C42, 0x00000C6F,
    0x00000C9C, 0x00000CC7, 0x00000CF2, 0x00000D1B,
    0x00000D44, 0x00000D6B, 0x00000D92, 0x00000DB7,
    0x00000DDB, 0x00000DFE, 0x00000E21, 0x00000E42,
    0x00000E61, 0x00000E80, 0x00000E9E, 0x00000EBA,
    0x00000ED6, 0x00000EF0, 0x00000F09, 0x00000F21,
    0x00000F38, 0x00000F4D, 0x00000F61, 0x00000F74,
    0x00000F86, 0x00000F97, 0x00000FA6, 0x00000FB5,
    0x00000FC2, 0x00000FCE, 0x00000FD8, 0x00000FE1,
    0x00000FEA, 0x00000FF0, 0x00000FF6, 0x00000FFA,
    0x00000FFE, 0x00000FFF, 0x00001000, 0x00000FFF,
    0x00000FFE, 0x00000FFA, 0x00000FF6, 0x00000FF0,
    0x00000FEA, 0x00000FE1, 0x00000FD8, 0x00000FCE,
    0x00000FC2, 0x00000FB5, 0x00000FA6, 0x00000F97,
    0x00000F86, 0x00000F74, 0x00000F61, 0x00000F4D,
    0x00000F38, 0x00000F21, 0x00000F09, 0x00000EF0,
    0x00000ED6, 0x00000EBA, 0x00000E9E, 0x00000E80,
    0x00000E61, 0x00000E42, 0x00000E21, 0x00000DFE,
    0x00000DDB, 0x00000DB7, 0x00000D92, 0x00000D6B,
    0x00000D44, 0x00000D1B, 0x00000CF2, 0x00000CC7,
    0x00000C9C, 0x00000C6F, 0x00000C42, 0x00000C13,
    0x00000BE4, 0x00000BB4, 0x00000B82, 0x00000B50,
    0x00000B1D, 0x00000AE9, 0x00000AB5, 0x00000A7F,
    0x00000A49, 0x00000A12, 0x000009DA, 0x000009A1,
    0x00000968, 0x0000092D, 0x000008F2, 0x000008B7,
    0x0000087B, 0x0000083E, 0x00000800, 0x000007C2,
    0x00000783, 0x00000744, 0x00000704, 0x000006C3,
    0x00000682, 0x00000640, 0x000005FE, 0x000005BC,
    0x00000579, 0x00000536, 0x000004F2, 0x000004AE,
    0x00000469, 0x00000424, 0x000003DF, 0x00000399,
    0x00000354, 0x0000030E, 0x000002C7, 0x00000281,
    0x0000023A, 0x000001F3, 0x000001AC, 0x00000165,
    0x0000011E, 0x000000D6, 0x0000008F, 0x00000047,
    0x00000000, 0xFFFFFFB9, 0xFFFFFF71, 0xFFFFFF2A,
    0xFFFFFEE2, 0xFFFFFE9B, 0xFFFFFE54, 0xFFFFFE0D,
    0xFFFFFDC6, 0xFFFFFD7F, 0xFFFFFD39, 0xFFFFFCF2,
    0xFFFFFCAC, 0xFFFFFC67, 0xFFFFFC21, 0xFFFFFBDC,
    0xFFFFFB97, 0xFFFFFB52, 0xFFFFFB0E, 0xFFFFFACA,
    0xFFFFFA87, 0xFFFFFA44, 0xFFFFFA02, 0xFFFFF9C0,
    0xFFFFF97E, 0xFFFFF93D, 0xFFFFF8FC, 0xFFFFF8BC,
    0xFFFFF87D, 0xFFFFF83E, 0xFFFFF800, 0xFFFFF7C2,
    0xFFFFF785, 0xFFFFF749, 0xFFFFF70E, 0xFFFFF6D3,
    0xFFFFF698, 0xFFFFF65F, 0xFFFFF626, 0xFFFFF5EE,
    0xFFFFF5B7, 0xFFFFF581, 0xFFFFF54B, 0xFFFFF517,
    0xFFFFF4E3, 0xFFFFF4B0, 0xFFFFF47E, 0xFFFFF44C,
    0xFFFFF41C, 0xFFFFF3ED, 0xFFFFF3BE, 0xFFFFF391,
    0xFFFFF364, 0xFFFFF339, 0xFFFFF30E, 0xFFFFF2E5,
    0xFFFFF2BC, 0xFFFFF295, 0xFFFFF26E, 0xFFFFF249,
    0xFFFFF225, 0xFFFFF202, 0xFFFFF1DF, 0xFFFFF1BE,
    0xFFFFF19F, 0xFFFFF180, 0xFFFFF162, 0xFFFFF146,
    0xFFFFF12A, 0xFFFFF110, 0xFFFFF0F7, 0xFFFFF0DF,
    0xFFFFF0C8, 0xFFFFF0B3, 0xFFFFF09F, 0xFFFFF08C,
    0xFFFFF07A, 0xFFFFF069, 0xFFFFF05A, 0xFFFFF04B,
    0xFFFFF03E, 0xFFFFF032, 0xFFFFF028, 0xFFFFF01F,
    0xFFFFF016, 0xFFFFF010, 0xFFFFF00A, 0xFFFFF006,
    0xFFFFF002, 0xFFFFF001, 0xFFFFF000, 0xFFFFF001,
    0xFFFFF002, 0xFFFFF006, 0xFFFFF00A, 0xFFFFF010,
    0xFFFFF016, 0xFFFFF01F, 0xFFFFF028, 0xFFFFF032,
    0xFFFFF03E, 0xFFFFF04B, 0xFFFFF05A, 0xFFFFF069,
    0xFFFFF07A, 0xFFFFF08C, 0xFFFFF09F, 0xFFFFF0B3,
    0xFFFFF0C8, 0xFFFFF0DF, 0xFFFFF0F7, 0xFFFFF110,
    0xFFFFF12A, 0xFFFFF146, 0xFFFFF162, 0xFFFFF180,
    0xFFFFF19F, 0xFFFFF1BE, 0xFFFFF1DF, 0xFFFFF202,
    0xFFFFF225, 0xFFFFF249, 0xFFFFF26E, 0xFFFFF295,
    0xFFFFF2BC, 0xFFFFF2E5, 0xFFFFF30E, 0xFFFFF339,
    0xFFFFF364, 0xFFFFF391, 0xFFFFF3BE, 0xFFFFF3ED,
    0xFFFFF41C, 0xFFFFF44C, 0xFFFFF47E, 0xFFFFF4B0,
    0xFFFFF4E3, 0xFFFFF517, 0xFFFFF54B, 0xFFFFF581,
    0xFFFFF5B7, 0xFFFFF5EE, 0xFFFFF626, 0xFFFFF65F,
    0xFFFFF698, 0xFFFFF6D3, 0xFFFFF70E, 0xFFFFF749,
    0xFFFFF785, 0xFFFFF7C2, 0xFFFFF800, 0xFFFFF83E,
    0xFFFFF87D, 0xFFFFF8BC, 0xFFFFF8FC, 0xFFFFF93D,
    0xFFFFF97E, 0xFFFFF9C0, 0xFFFFFA02, 0xFFFFFA44,
    0xFFFFFA87, 0xFFFFFACA, 0xFFFFFB0E, 0xFFFFFB52,
    0xFFFFFB97, 0xFFFFFBDC, 0xFFFFFC21, 0xFFFFFC67,
    0xFFFFFCAC, 0xFFFFFCF2, 0xFFFFFD39, 0xFFFFFD7F,
    0xFFFFFDC6, 0xFFFFFE0D, 0xFFFFFE54, 0xFFFFFE9B,
    0xFFFFFEE2, 0xFFFFFF2A, 0xFFFFFF71, 0xFFFFFFB9,
    0x00000000, 0x00000047, 0x0000008F, 0x000000D6,
    0x0000011E, 0x00000165, 0x000001AC, 0x000001F3,
    0x0000023A, 0x00000281, 0x000002C7, 0x0000030E,
    0x00000354, 0x00000399, 0x000003DF, 0x00000424,
    0x00000469, 0x000004AE, 0x000004F2, 0x00000536,
    0x00000579, 0x000005BC, 0x000005FE, 0x00000640,
    0x00000682, 0x000006C3, 0x00000704, 0x00000744,
    0x00000783, 0x000007C2, 0x00000800, 0x0000083E,
    0x0000087B, 0x000008B7, 0x000008F2, 0x0000092D,
    0x00000968, 0x000009A1, 0x000009DA, 0x00000A12,
    0x00000A49, 0x00000A7F, 0x00000AB5, 0x00000AE9,
    0x00000B1D, 0x00000B50, 0x00000B82, 0x00000BB4,
    0x00000BE4, 0x00000C13, 0x00000C42, 0x00000C6F,
    0x00000C9C, 0x00000CC7, 0x00000CF2, 0x00000D1B,
    0x00000D44, 0x00000D6B, 0x00000D92, 0x00000DB7,
    0x00000DDB, 0x00000DFE, 0x00000E21, 0x00000E42,
    0x00000E61, 0x00000E80, 0x00000E9E, 0x00000EBA,
    0x00000ED6, 0x00000EF0, 0x00000F09, 0x00000F21,
    0x00000F38, 0x00000F4D, 0x00000F61, 0x00000F74,
    0x00000F86, 0x00000F97, 0x00000FA6, 0x00000FB5,
    0x00000FC2, 0x00000FCE, 0x00000FD8, 0x00000FE1,
    0x00000FEA, 0x00000FF0, 0x00000FF6, 0x00000FFA,
    0x00000FFE, 0x00000FFF
};

const u16 UNK_020EDC7E[] = // rotations?
{
    0x0000, 0x00B7, 0x016D, 0x0223, 0x02D9, 0x038F, 0x0445, 0x04FB, 0x05B1, 0x0667,
    0x071D, 0x07D3, 0x0889, 0x093F, 0x09F5, 0x0AAB, 0x0B61, 0x0C17, 0x0CCD, 0x0D83,
    0x0E39, 0x0EEF, 0x0FA5, 0x105C, 0x1112, 0x11C8, 0x127E, 0x1334, 0x13EA, 0x14A0,
    0x1556, 0x160C, 0x16C2, 0x1778, 0x182E, 0x18E4, 0x199A, 0x1A50, 0x1B06, 0x1BBC,
    0x1C72, 0x1D28, 0x1DDE, 0x1E94, 0x1F4A, 0x2000, 0x20B7, 0x216D, 0x2223, 0x22D9,
    0x238F, 0x2445, 0x24FB, 0x25B1, 0x2667, 0x271D, 0x27D3, 0x2889, 0x293F, 0x29F5,
    0x2AAB, 0x2B61, 0x2C17, 0x2CCD, 0x2D83, 0x2E39, 0x2EEF, 0x2FA5, 0x305C, 0x3112,
    0x31C8, 0x327E, 0x3334, 0x33EA, 0x34A0, 0x3556, 0x360C, 0x36C2, 0x3778, 0x382E,
    0x38E4, 0x399A, 0x3A50, 0x3B06, 0x3BBC, 0x3C72, 0x3D28, 0x3DDE, 0x3E94, 0x3F4A,
    0x4000, 0x40B7, 0x416D, 0x4223, 0x42D9, 0x438F, 0x4445, 0x44FB, 0x45B1, 0x4667,
    0x471D, 0x47D3, 0x4889, 0x493F, 0x49F5, 0x4AAB, 0x4B61, 0x4C17, 0x4CCD, 0x4D83,
    0x4E39, 0x4EEF, 0x4FA5, 0x505C, 0x5112, 0x51C8, 0x527E, 0x5334, 0x53EA, 0x54A0,
    0x5556, 0x560C, 0x56C2, 0x5778, 0x582E, 0x58E4, 0x599A, 0x5A50, 0x5B06, 0x5BBC,
    0x5C72, 0x5D28, 0x5DDE, 0x5E94, 0x5F4A, 0x6000, 0x60B7, 0x616D, 0x6223, 0x62D9,
    0x638F, 0x6445, 0x64FB, 0x65B1, 0x6667, 0x671D, 0x67D3, 0x6889, 0x693F, 0x69F5,
    0x6AAB, 0x6B61, 0x6C17, 0x6CCD, 0x6D83, 0x6E39, 0x6EEF, 0x6FA5, 0x705C, 0x7112,
    0x71C8, 0x727E, 0x7334, 0x73EA, 0x74A0, 0x7556, 0x760C, 0x76C2, 0x7778, 0x782E,
    0x78E4, 0x799A, 0x7A50, 0x7B06, 0x7BBC, 0x7C72, 0x7D28, 0x7DDE, 0x7E94, 0x7F4A,
    0x8000, 0x80B7, 0x816D, 0x8223, 0x82D9, 0x838F, 0x8445, 0x84FB, 0x85B1, 0x8667,
    0x871D, 0x87D3, 0x8889, 0x893F, 0x89F5, 0x8AAB, 0x8B61, 0x8C17, 0x8CCD, 0x8D83,
    0x8E39, 0x8EEF, 0x8FA5, 0x905C, 0x9112, 0x91C8, 0x927E, 0x9334, 0x93EA, 0x94A0,
    0x9556, 0x960C, 0x96C2, 0x9778, 0x982E, 0x98E4, 0x999A, 0x9A50, 0x9B06, 0x9BBC,
    0x9C72, 0x9D28, 0x9DDE, 0x9E94, 0x9F4A, 0xA000, 0xA0B7, 0xA16D, 0xA223, 0xA2D9,
    0xA38F, 0xA445, 0xA4FB, 0xA5B1, 0xA667, 0xA71D, 0xA7D3, 0xA889, 0xA93F, 0xA9F5,
    0xAAAB, 0xAB61, 0xAC17, 0xACCD, 0xAD83, 0xAE39, 0xAEEF, 0xAFA5, 0xB05C, 0xB112,
    0xB1C8, 0xB27E, 0xB334, 0xB3EA, 0xB4A0, 0xB556, 0xB60C, 0xB6C2, 0xB778, 0xB82E,
    0xB8E4, 0xB99A, 0xBA50, 0xBB06, 0xBBBC, 0xBC72, 0xBD28, 0xBDDE, 0xBE94, 0xBF4A,
    0xC000, 0xC0B7, 0xC16D, 0xC223, 0xC2D9, 0xC38F, 0xC445, 0xC4FB, 0xC5B1, 0xC667,
    0xC71D, 0xC7D3, 0xC889, 0xC93F, 0xC9F5, 0xCAAB, 0xCB61, 0xCC17, 0xCCCD, 0xCD83,
    0xCE39, 0xCEEF, 0xCFA5, 0xD05C, 0xD112, 0xD1C8, 0xD27E, 0xD334, 0xD3EA, 0xD4A0,
    0xD556, 0xD60C, 0xD6C2, 0xD778, 0xD82E, 0xD8E4, 0xD99A, 0xDA50, 0xDB06, 0xDBBC,
    0xDC72, 0xDD28, 0xDDDE, 0xDE94, 0xDF4A, 0xE000, 0xE0B7, 0xE16D, 0xE223, 0xE2D9,
    0xE38F, 0xE445, 0xE4FB, 0xE5B1, 0xE667, 0xE71D, 0xE7D3, 0xE889, 0xE93F, 0xE9F5,
    0xEAAB, 0xEB61, 0xEC17, 0xECCD, 0xED83, 0xEE39, 0xEEEF, 0xEFA5, 0xF05C, 0xF112,
    0xF1C8, 0xF27E, 0xF334, 0xF3EA, 0xF4A0, 0xF556, 0xF60C, 0xF6C2, 0xF778, 0xF82E,
    0xF8E4, 0xF99A, 0xFA50, 0xFB06, 0xFBBC, 0xFC72, 0xFD28, 0xFDDE, 0xFE94, 0xFF4A
};

const u16 UNK_020EDB80[] =
{
    0x169F, 0x0F14, 0x0B4F, 0x090C, 0x078A, 0x0676, 0x05A7, 0x0506,
    0x0486, 0x041C, 0x03C5, 0x037A, 0x033B, 0x0304, 0x02D3, 0x02A9,
    0x0283, 0x0261, 0x0243, 0x0227, 0x020E, 0x01F7, 0x01E2, 0x01CF,
    0x01BD, 0x01AC, 0x019D, 0x018F, 0x0182, 0x0175, 0x0169, 0x015E,
    0x0154, 0x014A, 0x0141, 0x0139, 0x0130, 0x0128, 0x0121, 0x011A,
    0x0113, 0x010D, 0x0107, 0x0101, 0x00FB, 0x00F6, 0x00F1, 0x00EC,
    0x00E7, 0x00E3, 0x00DE, 0x00DA, 0x00D6, 0x00D2, 0x00CE, 0x00CB,
    0x00C7, 0x00C4, 0x00C1, 0x00BD, 0x00BA, 0x00B7, 0x00B4, 0x00B2,
    0x00AF, 0x00AC, 0x00AA, 0x00A7, 0x00A5, 0x00A3, 0x00A0, 0x009E,
    0x009C, 0x009A, 0x0098, 0x0096, 0x0094, 0x0092, 0x0090, 0x008E,
    0x008D, 0x008B, 0x0089, 0x0088, 0x0086, 0x0085, 0x0083, 0x0082,
    0x0080, 0x007F, 0x007D, 0x007C, 0x007B, 0x0079, 0x0078, 0x0077,
    0x0076, 0x0074, 0x0073, 0x0072, 0x0071, 0x0070, 0x006F, 0x006E,
    0x006D, 0x006C, 0x006B, 0x006A, 0x0069, 0x0068, 0x0067, 0x0066,
    0x0065, 0x0064, 0x0063, 0x0062, 0x0062, 0x0061, 0x0060, 0x005F,
    0x005E, 0x005E, 0x005D, 0x005C, 0x005B, 0x005B, 0x005A
};

/*
 * Temporary prototypes; keep until all files using math_util are decompiled.
 */
THUMB_FUNC s32 Sin(u16 degrees);
THUMB_FUNC s32 Cos(u16 degrees);
THUMB_FUNC s32 Sin_Wrap(u16 degrees);
THUMB_FUNC s32 Cos_Wrap(u16 degrees);
THUMB_FUNC u16 MathUtil_0201B9A0(u16 x);
THUMB_FUNC s32 Sin32(s32 degrees);

THUMB_FUNC u32 GetLCRNGSeed();
THUMB_FUNC void SetLCRNGSeed(u32 seed);
THUMB_FUNC u16 LCRandom(void);

THUMB_FUNC u32 PRandom(u32 seed);

THUMB_FUNC void SetMTRNGSeed(u32 seed);
THUMB_FUNC u32 MTRandom(void);

THUMB_FUNC void MTX22_2DAffine(struct Mtx22 * mtx, u16 radians, fx32 x, fx32 y, u8 type);

THUMB_FUNC s32 CircularDistance(s32 x1, s32 y1, s32 x2, s32 y2);
THUMB_FUNC s32 MathUtil_0201BC84(u16 arg0, s32 arg1);

/*
 * Trigonometric functions
 */
// Returns the sine of a 16-bit unsigned degree value.
THUMB_FUNC s32 Sin(u16 degrees)
{
    if (degrees >= 360)
        return 0;
    else
        return gSineTable[degrees];
}
// Returns the cosine of a 16-bit unsigned degree value.
THUMB_FUNC s32 Cos(u16 degrees)
{
    if (degrees >= 360)
        return 0;
    else
        return gSineTable[degrees + 90];
}

// Returns the wrapped sine of a 16-bit unsigned degree value.
THUMB_FUNC s32 Sin_Wrap(u16 degrees)
{
    return gSineTable[degrees % 360];
}

// Returns the wrapped cosine of a 16-bit unsigned degree value.
THUMB_FUNC s32 Cos_Wrap(u16 degrees)
{
    return gSineTable[(degrees % 360) + 90];
}

// Purpose unknown.
THUMB_FUNC u16 MathUtil_0201B9A0(u16 x)
{
    return UNK_020EDC7E[x % 360];
}

// Returns the sine of a 32-bit signed degree value.
THUMB_FUNC s32 Sin32(s32 degrees)
{
    return gSineTable[(u16)(degrees >> 12) % 360];
}

/*
 * Random number generators
 */
static u32 sMTRNG_State[624]; // Mersenne Twister seed storage/buffer
static union
{
    u32 LC_State; // Linear-congruential seed storage/buffer
    u32 MTRNG_State[]; // Don't bother asking why Game Freak did this. Just don't.
} sRNGHack;

// Returns the Linear-congruential buffer in full.
THUMB_FUNC u32 GetLCRNGSeed()
{
    return sRNGHack.LC_State;
}

// Initializes the Linear-congruential buffer with a 32-bit seed.
THUMB_FUNC void SetLCRNGSeed(u32 seed)
{
    sRNGHack.LC_State = seed;
}

// Calculates an unsigned 16-bit random integer using the Linear-congruential algorithm.
THUMB_FUNC u16 LCRandom(void)
{
    // cycle the RNG
    sRNGHack.LC_State *= 0x41C64E6D;
    sRNGHack.LC_State += 0x6073;
    return (u16)(sRNGHack.LC_State / 65536); // shut up the compiler
}

// Returns a cheap, psuedo-random unsigned 32-bit random integer from a seed.
THUMB_FUNC u32 PRandom(u32 seed)
{
    return seed * 1812433253 + 1; // seed from Mersenne Twister algorithm
}

static s32 sMTRNG_Cycles = 625; // Mersenne Twister cycle counter, 625 default value
static u32 sMTRNG_XOR[2] = {0, 0x9908b0df}; // Mersenne Twister XOR mask table

// Initializes the Mersenne Twister buffer with a 32-bit seed.
THUMB_FUNC void SetMTRNGSeed(u32 seed)
{
    sRNGHack.MTRNG_State[0+1] = seed;

    for (sMTRNG_Cycles = 1; sMTRNG_Cycles < 624; sMTRNG_Cycles++)
        sMTRNG_State[sMTRNG_Cycles] = 1812433253 * (sMTRNG_State[sMTRNG_Cycles - 1] ^ (sMTRNG_State[sMTRNG_Cycles - 1] >> 30)) + sMTRNG_Cycles;
}

// Calculates an unsigned 32-bit random integer using the Mersenne Twister algorithm.
THUMB_FUNC u32 MTRandom(void)
{
    u32 val;
    s32 i;

    if (sMTRNG_Cycles >= 624)
    {
        if (sMTRNG_Cycles == 625)
            SetMTRNGSeed(5489);
 
        for (i = 0; i < 227; i++)
        {
            val = (sMTRNG_State[i] & 0x80000000) | (sMTRNG_State[i + 1] & 0x7fffffff);
            sMTRNG_State[i] = sMTRNG_State[i + 397] ^ (val >> 1) ^ sMTRNG_XOR[val & 0x1];
        }
        for (; i < 623; i++)
        {
            val = (sMTRNG_State[i] & 0x80000000) | (sMTRNG_State[i + 1] & 0x7fffffff);
            sMTRNG_State[i] = sMTRNG_State[i + -227] ^ (val >> 1) ^ sMTRNG_XOR[val & 0x1];
        }
 
        val = (sRNGHack.MTRNG_State[623+1] & 0x80000000) | (sRNGHack.MTRNG_State[0+1] & 0x7fffffff);
        sRNGHack.MTRNG_State[623+1] = sRNGHack.MTRNG_State[396+1] ^ (val >> 1) ^ sMTRNG_XOR[val & 0x1];

        sMTRNG_Cycles = 0;
    }
 
    val = sMTRNG_State[sMTRNG_Cycles++]; // has to be this way in order to match
 
    val ^= val >> 11;
    val ^= (val << 7) & 0x9d2c5680;
    val ^= (val << 15) & 0xefc60000;
    val ^= val >> 18;
 
    return val;
}

/*
 * Nitro FX specific functions
 */
// Rotates and scales a 2D plane by a number of degrees.
THUMB_FUNC void MTX22_2DAffine(struct Mtx22 * mtx, u16 radians, fx32 x, fx32 y, u8 type)
{
    if (type == 1)
        radians = (u16)((u32)(radians * 65535) >> 8); // shut up the compiler
    else if (type == 2)
        radians = (u16)((u32)(radians * 65535) / 360); // shut up the compiler

    MTX_Rot22_(mtx,
        UNK_020FFA38[((radians >> 4) * 2)], // TODO: macros
        UNK_020FFA38[((radians >> 4) * 2) + 1]); // TODO: macros
    MTX_ScaleApply22(mtx, mtx, x, y);
}

/*
 * Vector functions
 */
// Calculates the circular distance between two vector coordinates.
THUMB_FUNC s32 CircularDistance(s32 x1, s32 y1, s32 x2, s32 y2)
{
    struct Vecx32 v1, v2, v3, v4;
    fx32 f1, f2;
    s32 ret;

    // TODO: Code looks like it could have been macroized.
    v1.x = x1 << FX32_INT_SHIFT;
    v1.y = y1 << FX32_INT_SHIFT;
    v1.z = 0;

    v2.x = x2 << FX32_INT_SHIFT;
    v2.y = y2 << FX32_INT_SHIFT;
    v2.z = 0;

    v4.x = 0;
    v4.y = 0;
    v4.z = FX32_MUL(v1.x, v2.y) - FX32_MUL(v2.x, v1.y);

    f1 = v4.x + v4.y + v4.z;

    v1.x = y1 << FX32_INT_SHIFT;
    v1.y = x1 << FX32_INT_SHIFT;
    v1.z = 0;

    VEC_Normalize(&v1, &v3);

    v1.x = x1 << FX32_INT_SHIFT;
    v1.y = y1 << FX32_INT_SHIFT;
    v1.z = 0;

    v2.x = x2 << FX32_INT_SHIFT;
    v2.y = y2 << FX32_INT_SHIFT;
    v2.z = 0;

    VEC_Subtract(&v2, &v1, &v4);
    f2 = VEC_DotProduct(&v3, &v4);
    ret = f2 >> FX32_INT_SHIFT;
	ret = (ret < 0) ? -ret : ret;

    if (f1 <= 0)
        ret *= -1;
    return ret;
}

THUMB_FUNC s32 MathUtil_0201BC84(u16 arg0, s32 arg1)
{
    return (arg1 * 65535) /
        (FX32_MUL((arg0 * 2) << FX32_INT_SHIFT, FX32_CONST(3.140f)) >> FX32_INT_SHIFT);
}