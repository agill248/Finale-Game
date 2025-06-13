// cookie monster support
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo, false, true)) {
    show_message("Elmo? What are you doing here? Did you find Big Bird and Take out the trash? You didn't?");
	show_message("Thats it, go back to 63rd. I'll give you a little treat to help you out...");
    instance_destroy();
}
