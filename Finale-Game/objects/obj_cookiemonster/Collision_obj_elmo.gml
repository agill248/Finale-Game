// NPC Collision Event with obj_elmo
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_elmo, false, true)) {
    show_message("Elmo watch out, Big Bird is chasing you! Get to the end and get to 63rd!");
    instance_destroy();
}
