image_angle = point_direction(x,y,obj_elmo_tank.x,obj_elmo_tank.y);
move_towards_point(obj_elmo_tank.x, obj_elmo_tank.y, 3.25); 

// If the object is stopped, it will not move
if (stopped) {
    // Prevent movement
    speed = 0;
}

// Check for collision with obj_wall
if (place_meeting(x, y, obj_elmo_bullet) && !stopped) {
    stopped = true;  // Stop the object
    speed = 0;  // Set movement speed to 0
    alarm[1] = 30;   // Set the alarm to trigger in 1 second (60 frames)
}

// Check for space press and start slow effect
if (keyboard_check(vk_space) && slow_timer <= 0) {
    speed = slow_speed;
    slow_timer = room_speed * 5; // 5 seconds worth of steps
}

// Update timer and reset speed if time is up
if (slow_timer > 0) {
    slow_timer -= 1;
    if (slow_timer <= 0) {
        current_speed = speed;
    }
}

if (big_health = 0){
room_goto(rm_finale)
}