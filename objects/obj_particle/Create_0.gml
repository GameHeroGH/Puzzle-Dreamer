particle_system = part_system_create();

effect_drop = part_type_create();
part_type_sprite(effect_drop, spr_spark, false, false, true);
part_type_size(effect_drop, 1, 1, 0, 0);
part_type_life(effect_drop, 15, 15);
part_type_alpha1(effect_drop, 1);
part_type_gravity(effect_drop, 0.1, 270);
part_type_direction(effect_drop, 0, 360, 0, 5);
part_type_orientation(effect_drop, 0, 0, 0, 0, true);