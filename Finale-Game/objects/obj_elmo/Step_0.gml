//########## MOVEMENT ##########
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

//########## SHOOTING ########## 
// Shoot bullets
// Reduce fire_timer by the time that passed since the last frame
if (fire_timer > 0) {
    fire_timer -= delta_time / 1000000; // delta_time is in microseconds
}
if (mouse_check_button(mb_left) && fire_timer <= 0) {
    // Fire the bullet
    instance_create_layer(x, y, "Instances", obj_elmo_bullet); // or your method

    // Reset the cooldown
    fire_timer = fire_rate;
}
