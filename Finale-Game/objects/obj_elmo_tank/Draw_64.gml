

// Health Bar
var bar_width = 200;
var bar_height = 20;
var bar_x = 10;
var bar_y = 10;

// Background
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Foreground (health)
var health_percentage = health / max_health;
var health_bar_width = bar_width * health_percentage;
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + health_bar_width, bar_y + bar_height, false);

// Health Text (optional)
var health_text = string(health) + " / " + string(max_health);
draw_set_color(c_white);
draw_text(bar_x + bar_width + 5, bar_y + bar_height / 2, health_text);
