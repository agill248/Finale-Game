// Step Event

var move_speed = normal_speed;  // Default move speed

// Check if slowed down and reduce speed if necessary
if (is_slowed) {
    move_speed = normal_speed * slowdown_factor;
    slowdown_timer -= delta_time;
    
    if (slowdown_timer <= 0) {
        is_slowed = false; // End slowdown
    }
}

// Rotation speed in degrees per step
var rotation_speed = 3; 

// Move forward when W is pressed
if (keyboard_check(ord("W"))) {
    // Move forward in the direction of image_angle
    x += lengthdir_x(move_speed, image_angle);
    y += lengthdir_y(move_speed, image_angle);
}

// Rotate left (A) and right (D)
if (keyboard_check(ord("A"))) {
    image_angle += rotation_speed;
}
if (keyboard_check(ord("D"))) {
    image_angle -= rotation_speed;
}

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

if elmo_health == 0 {
room_restart()
}