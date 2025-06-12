
// Increase speed
speed_multiplier += 4; 

// Set alarm to reset speed after 5 seconds
alarm[0] = 150;

// Destroy the power-up object
with (other) {
    instance_destroy();
}

