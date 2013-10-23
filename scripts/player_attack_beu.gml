if (keyboard_check_pressed(ord('Z'))) {
    if (punch){
        punch2 = true;
    } else if (punch2){
        punch = true;
    } else {
        image_index = 0;
        sprite_index = spr_player_punch;
        image_speed = punchSpeed;
        punch = true;
        if (image_xscale > 0)
            instance_create(x + 20, y, obj_damage);
        else
            instance_create(x - 20, y, obj_damage);
    }
}

if ((punch || punch2) && image_index > image_number - 1) {
    if (punch) {
        if(sprite_index == spr_player_punch2) {
            punch2 = false;
            image_index = 0;
            sprite_index = spr_player_punch;
            image_speed = punchSpeed;
            if (image_xscale > 0)
                instance_create(x + 20, y, obj_damage);
            else
                instance_create(x - 20, y, obj_damage);
        } else if (punch2){
            punch = false;
            image_index = 0;
            sprite_index = spr_player_punch2;
            image_speed = punchSpeed;
            if (image_xscale > 0)
                instance_create(x + 20, y, obj_damage);
            else
                instance_create(x - 20, y, obj_damage);
        } else {
            punch = false;
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed; 
        }
    } else if (punch2) {
            punch2 = false;
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed; 

    }

}