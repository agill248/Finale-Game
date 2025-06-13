// cookie monster support
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo, false, true)) {
    show_message("Elmo... You heard what Count Von said.. Get to 63rd and blast Big Bird a new one!");
	show_message("Remember that if you go off the road, you'll slowdown. Stay on the road.");
    instance_destroy();
}
