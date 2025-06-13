// make bullets
var bullet = instance_create_layer(x, y, "Instances", obj_bigbird_bullet);
with(bullet)
{
	speed = 10;
	
}
alarm_set(0, 120);
