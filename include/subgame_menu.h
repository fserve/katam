#ifndef GUARD_SUBGAME_MENU_H
#define GUARD_SUBGAME_MENU_H

#include "global.h"
#include "task.h"
#include "sprite.h"
#include "data.h"

struct SubGameMenu;

typedef void (*SubGameMenuFunc)(struct SubGameMenu*);

struct SubGameMenu {
    struct Unk_03002400 unk0[2];
    struct Sprite unk80[5];
    u32 filler148;
    u32 unk14C;
    u32 unk150;
    SubGameMenuFunc unk154;
    u8 filler158[0x20];
    u16 unk178;
    u8 filler17A[2];
}; /* size = 0x17C */

void sub_0801E630(s32);
void sub_0801E6C4(s32);
void sub_0801E754(s32);
void sub_0801ED94(struct SubGameMenu*);
void sub_0801F1F4(void);
void sub_0801F2E8(struct SubGameMenu*);
void sub_0801FD58(void);
void nullsub_29(struct Task*);
void nullsub_110(struct Task*);

#endif // GUARD_SUBGAME_MENU_H
