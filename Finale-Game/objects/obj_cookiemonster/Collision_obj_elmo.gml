// cookie monster support
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo, false, true)) {
    show_message("Elmo... You heard what Count Von said.. Get to 63rd and blast Big Bird a new one!");
    instance_destroy();
}
