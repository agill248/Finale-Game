// Making character sttionary when no key is pressed
ysp += 0.25
xsp = 0

// movement
if keyboard_check(ord("A"))
{
        xsp = -3
}

if keyboard_check(ord("D"))
{
        xsp = +3
}
if place_meeting(x, y+2, obj_ground)
{
        ysp = 0
        if keyboard_check(ord("W"))
        {
                ysp = -10 
        }
}

move_and_collide(xsp, ysp, obj_ground)