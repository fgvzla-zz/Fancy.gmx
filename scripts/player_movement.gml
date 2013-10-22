if (keyboard_check(vk_left) || keyboard_check(vk_right) ||
    keyboard_check(vk_up) || keyboard_check(vk_down) && !punch && ! punch2)
{   
    if(keyboard_check(vk_left) && keyboard_check(vk_right)){
        if (sprite_index != spr_player && (!keyboard_check(vk_up) || !keyboard_check(vk_down))) {
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed;
        }
    } else {
        if (keyboard_check(vk_left)) {
            if (sprite_index != spr_player_walk) {
                image_index = 0;
                sprite_index = spr_player_walk;
                image_speed = walkSpeed;
            }
            if image_xscale > 0
                image_xscale = -image_xscale;
            x -= xSpeed;
        }
        if (keyboard_check(vk_right)) {
            if (sprite_index != spr_player_walk) {
                image_index = 0;
                sprite_index = spr_player_walk;
                image_speed = walkSpeed;
            }
            if image_xscale < 0
                image_xscale = -image_xscale;
            x += xSpeed;
        }
    }
    
    if(keyboard_check(vk_up) && keyboard_check(vk_down)){
        if (sprite_index != spr_player && (!keyboard_check(vk_right) || !keyboard_check(vk_left))) {
            image_index = 0;
            sprite_index = spr_player;
            image_speed = standSpeed;
        }
    } else {
        if (keyboard_check(vk_up)) {
            if (sprite_index != spr_player_walk) {
                image_index = 0;
                sprite_index = spr_player_walk;
                image_speed = walkSpeed;
            }
            y -= ySpeed;
        }
        if (keyboard_check(vk_down)) {
            if (sprite_index != spr_player_walk) {
                image_index = 0;
                sprite_index = spr_player_walk;
                image_speed = walkSpeed;
            }
            y += ySpeed;
        }
    }
}

if (keyboard_check_released(vk_left) || keyboard_check_released(vk_right) ||
    keyboard_check_released(vk_up) || keyboard_check_released(vk_down))
{
    image_index = 0;
    sprite_index = spr_player;
    image_speed = standSpeed;
        
}
