#ifndef GUARD_GX_G3_H
#define GUARD_GX_G3_H

struct GXDLInfo
{
    u8     *curr_cmd;
    u32    *curr_param;
    u32    *bottom;
    u32     length;
    BOOL    param0_cmd_flg;
};

void G3_BeginMakeDL(struct GXDLInfo *displaylist, void *r1, u32 r2);
s32 G3_EndMakeDL(struct GXDLInfo *displaylist);

typedef enum
{
    GX_MTXMODE_PROJECTION = 0,
    GX_MTXMODE_POSITION = 1,
    GX_MTXMODE_POSITION_VECTOR = 2,
    GX_MTXMODE_TEXTURE = 3
}
GXMtxMode;

typedef enum
{
    GX_BEGIN_TRIANGLES = 0,
    GX_BEGIN_QUADS = 1,
    GX_BEGIN_TRIANGLE_STRIP = 2,
    GX_BEGIN_QUAD_STRIP = 3
}
GXBegin;

typedef enum
{
    GX_SORTMODE_AUTO = 0,
    GX_SORTMODE_MANUAL = 1
}
GXSortMode;

typedef enum
{
    GX_BUFFERMODE_Z = 0,
    GX_BUFFERMODE_W = 1
}
GXBufferMode;

typedef enum
{
    GX_LIGHTMASK_NONE = 0,
    GX_LIGHTMASK_0 = 1,
    GX_LIGHTMASK_1 = 2,
    GX_LIGHTMASK_01 = 3,
    GX_LIGHTMASK_2 = 4,
    GX_LIGHTMASK_02 = 5,
    GX_LIGHTMASK_12 = 6,
    GX_LIGHTMASK_012 = 7,
    GX_LIGHTMASK_3 = 8,
    GX_LIGHTMASK_03 = 9,
    GX_LIGHTMASK_13 = 10,
    GX_LIGHTMASK_013 = 11,
    GX_LIGHTMASK_23 = 12,
    GX_LIGHTMASK_023 = 13,
    GX_LIGHTMASK_123 = 14,
    GX_LIGHTMASK_0123 = 15
}
GXLightMask;

typedef enum
{
    GX_POLYGONMODE_MODULATE = 0,
    GX_POLYGONMODE_DECAL = 1,
    GX_POLYGONMODE_TOON = 2,
    GX_POLYGONMODE_SHADOW = 3
}
GXPolygonMode;

typedef enum
{
    GX_CULL_ALL = 0,
    GX_CULL_FRONT = 1,
    GX_CULL_BACK = 2,
    GX_CULL_NONE = 3
}
GXCull;

typedef enum
{
    GX_TEXREPEAT_NONE = 0,
    GX_TEXREPEAT_S = 1,
    GX_TEXREPEAT_T = 2,
    GX_TEXREPEAT_ST = 3
}
GXTexRepeat;

typedef enum
{
    GX_TEXFLIP_NONE = 0,
    GX_TEXFLIP_S = 1,
    GX_TEXFLIP_T = 2,
    GX_TEXFLIP_ST = 3
}
GXTexFlip;

typedef enum
{
    GX_TEXSIZE_S8 = 0,
    GX_TEXSIZE_S16 = 1,
    GX_TEXSIZE_S32 = 2,
    GX_TEXSIZE_S64 = 3,
    GX_TEXSIZE_S128 = 4,
    GX_TEXSIZE_S256 = 5,
    GX_TEXSIZE_S512 = 6,
    GX_TEXSIZE_S1024 = 7
}
GXTexSizeS;

typedef enum
{
    GX_TEXSIZE_T8 = 0,
    GX_TEXSIZE_T16 = 1,
    GX_TEXSIZE_T32 = 2,
    GX_TEXSIZE_T64 = 3,
    GX_TEXSIZE_T128 = 4,
    GX_TEXSIZE_T256 = 5,
    GX_TEXSIZE_T512 = 6,
    GX_TEXSIZE_T1024 = 7
}
GXTexSizeT;

typedef enum
{
    GX_TEXFMT_NONE = 0,
    GX_TEXFMT_A3I5 = 1,
    GX_TEXFMT_PLTT4 = 2,
    GX_TEXFMT_PLTT16 = 3,
    GX_TEXFMT_PLTT256 = 4,
    GX_TEXFMT_COMP4x4 = 5,
    GX_TEXFMT_A5I3 = 6,
    GX_TEXFMT_DIRECT = 7
}
GXTexFmt;

typedef enum
{
    GX_TEXPLTTCOLOR0_USE = 0,
    GX_TEXPLTTCOLOR0_TRNS = 1
}
GXTexPlttColor0;

typedef enum
{
    GX_TEXGEN_NONE = 0,
    GX_TEXGEN_TEXCOORD = 1,
    GX_TEXGEN_NORMAL = 2,
    GX_TEXGEN_VERTEX = 3
}
GXTexGen;

typedef enum
{
    GX_LIGHTID_0 = 0,
    GX_LIGHTID_1 = 1,
    GX_LIGHTID_2 = 2,
    GX_LIGHTID_3 = 3
}
GXLightId;

typedef union
{
    u32     val[3];
    struct
    {
        fx16    x;
        fx16    y;
        fx16    z;
        fx16    width;
        fx16    height;
        fx16    depth;
    };
}
GXBoxTestParam;

#endif //GUARD_GX_G3_H
