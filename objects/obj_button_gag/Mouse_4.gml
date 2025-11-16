// Inherit the parent event
event_inherited();

// This will show the gag dialogue
if (instance_exists(obj_gag))
{
    instance_destroy(obj_gag);
}
else
{
    instance_create_layer(room_width / 2, room_height - 300, "Instances", obj_gag);
}

// This will play the heal sound effect
audio_play_sound(snd_heal, 0, false);