// Slowdown ( if confused watch navidrct on yt )
global.slowDown = !global.slowDown;

if (global.slowDown) {
    room_speed = defaultRoomSpeed / 3; 
} else {
    room_speed = defaultRoomSpeed; 
}
