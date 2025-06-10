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
var rotation_speed = 4; 

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
