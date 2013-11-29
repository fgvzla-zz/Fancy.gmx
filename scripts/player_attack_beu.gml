if (keyboard_check_pressed(ord('Z'))) {
    // Si en el momento que se presiona Z se está realizando el un golpe, se
    // activa el siguiente.
    if (punch){
        punch2 = true;
    } else if (punch2){
        punch = true;
    // Caso contrario se activa el primer golpe.
    } else {
        image_index = 0;
        sprite_index = spr_player_punch;
        image_speed = punchSpeed;
        punch = true;
        // Se crea un objeto daño dependiendo de la dirección que esté viendo
        // el personaje
        if (image_xscale > 0) {
            instance_create(x, y, obj_damage);
                audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
        } else {
            instance_create(x - 20, y, obj_damage);
                audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
        }
    }
}

// Casos si se esta realizando un puño y se está en el último cuadro
if ((punch || punch2) && image_index > image_number - 1) {
    // Caso para que el primer golpe esté activo
    if (punch) {
        if (punch2){
            // Si se está realizando el segundo golpe, se desactiva y se realiza
            // el primero.
            if(sprite_index == spr_player_punch2) {
                punch2 = false;
                image_index = 0;
                sprite_index = spr_player_punch;
                image_speed = punchSpeed;
                if (image_xscale > 0) {
                    instance_create(x, y, obj_damage);
                    audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
                 } else {
                    instance_create(x - 20, y, obj_damage);
                    audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
                 }
            // Si el segundo golpe está activo y no se está realizando, quiere decir
            // que es el siguiente. Se cambia de sprite y se desactiva el primer
            // golpe.
            } else {
                punch = false;
                image_index = 0;
                sprite_index = spr_player_punch2;
                image_speed = punchSpeed;
                if (image_xscale > 0) {
                    instance_create(x, y, obj_damage);
                    audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
                } else {
                    instance_create(x - 20, y, obj_damage);
                    audio_play_sound(choose(snd_punch1, snd_punch2), 0, 0);
                }
            }
        // Si no esta activo el segundo golpe, se cambia al sprite normal del
        // jugador.
        } else {
            punch = false;
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed; 
        }
    } else if (punch2 && sprite_index == spr_player_punch2) {
            punch2 = false;
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed; 

    }

}
