// cookie monster support
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo, false, true)) {
    show_message("Oh, Elmo my boy! Thank you for getting rid of Big Bird for me!");
	show_message("Elmo, before you go I just want to say this was never personal.");
	instance_destroy(other)
}
