// move towards elmo
move_towards_point(obj_elmo.x, obj_elmo.y, 1.5);

// If the object is stopped, it will not move
if (stopped) {
    // Prevent movement
    speed = 0;
}

// Check for collision with elmo_bullet
if (place_meeting(x, y, obj_elmo_bullet) && !stopped) {
    stopped = true;  // Stop the object
    speed = 0;  // Set movement speed to 0
    alarm[1] = 30;   // Set the alarm to trigger in 1 second (60 frames)
}

// Update timer and reset speed if time is up
if (slow_timer > 0) {
    slow_timer -= 1;
    if (slow_timer <= 0) {
        current_speed = speed;
    }
}