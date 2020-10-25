#include "functions.h"
#include "minny.h"

struct Object2* CreateMinny(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    if (obj->x > obj->unkAC->base.x) {
        obj->flags |= 1;
    }
    else {
        obj->flags &= ~1;
    }
    sub_0803E2B0(obj, -2, -2, 2, 2);
    sub_0803E308(obj, -5, 0, 7, 4);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

#define abs(n) (((n) >= 0) ? (n) : -(n))

void sub_080B3C44(struct Object2* arg0) {
    arg0->flags |= 4;
    if (arg0->x > arg0->unkAC->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
    if (--arg0->counter == 0) {
        sub_080B3CD8(arg0);
    }
    else {
        if (abs(arg0->unkAC->base.x - arg0->x) <= 0x3bff) {
            if (abs(arg0->unkAC->base.y - arg0->y) <= 0x3bff) {
                sub_080B3CD8(arg0);
            }
        }
    }
}

void sub_080B3CD8(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080B3F08);
    if (arg0->x > arg0->unkAC->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
    arg0->flags ^= 1;
    arg0->xspeed = 0x120;
    if (arg0->subtype != 0) {
        arg0->xspeed = 0x200;
    }
    if (arg0->flags & 1) {
        arg0->xspeed = -arg0->xspeed;
    }
}
