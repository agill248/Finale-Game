
var playerSpeed = slowDown ? 2 : 5; 
// Define player speed
var playerSpeed = 5; 

// Horizontal Movement
if (keyboard_check(ord("A"))) { 
    motion_set(180, playerSpeed); 
} 
else if (keyboard_check(ord("D"))) { 
    motion_set(0, playerSpeed);
}

// Vertical Movement
else if (keyboard_check(ord("W"))) { 
    motion_set(90, playerSpeed);
}
else if (keyboard_check(ord("S"))) { 
    motion_set(270, playerSpeed);
}

// If no key is pressed
else {
    motion_set(0, 0);
}