if keyboard_check(ord("W"))
{
        motion_add(image_angle, 0.1);
}
if keyboard_check(ord("A"))
{
        image_angle += 4;
}
if keyboard_check(ord("D"))
{
        image_angle -= 4;
}


if (slowDown) {
    var slowDown = 0.8; // Adjust this to fine-tune slowdown
    xspd *= slowDown;
    vspd *= slowDown;
}
