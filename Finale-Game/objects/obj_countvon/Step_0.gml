// Step event
if (x > right_bound) {
    motion_set(180, 4); // left
}
else if (x < left_bound) {
    motion_set(0, 4); // right
}
