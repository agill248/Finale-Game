// cookie monster support
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo_car, false, true)) {
    show_message("Elmo... YOU NEED TO FIND THE EXIT BEFORE HE GETS TO YOU! HES TO FAST AND SMART!");
    instance_destroy();
}
