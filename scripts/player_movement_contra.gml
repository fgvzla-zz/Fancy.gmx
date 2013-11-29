if(keyboard_check(vk_left) && keyboard_check(vk_right)){
    if (sprite_index != spr_ramboBricenoStand && (!keyboard_check(vk_up) || !keyboard_check(vk_down))) {
        image_index = 0;
        sprite_index = spr_ramboBricenoStand;
        image_speed = standSpeed;
    }
} else {
    if (keyboard_check(vk_left)) {
        if (sprite_index != spr_ramboBricenoWalk) {
            image_index = 0;
            sprite_index = spr_ramboBricenoWalk;
            image_speed = -walkSpeed;
        }
        if !place_meeting(x - 5, y, obj_wall)
            x -= xSpeed;
    }
    if (keyboard_check(vk_right)) {
        if (sprite_index != spr_ramboBricenoWalk) {
            image_index = 0;
            sprite_index = spr_ramboBricenoWalk;
            image_speed = walkSpeed;
        }
        if !place_meeting(x + 5, y, obj_wall)
            x += xSpeed;
    }
}

if keyboard_check_pressed(ord('Z')){
    obj = choose(obj_bullet1, obj_bullet2, obj_bullet3);
    instance_create(x + 8, y, obj);
}

if (keyboard_check_pressed(ord('X'))){
    if(keyboard_check(vk_down)){
        if instance_position(x, y + 33, obj_platform) {
            if (sprite_index != spr_ramboBricenoJump) {
                image_index = 0;
                sprite_index = spr_ramboBricenoJump;
                image_speed = 0;
            }
            y += fallSpeed;
            falling = true;
        }
    } else if (!falling & !jumping) {
        if (sprite_index != spr_ramboBricenoJump) {
            image_index = 0;
            sprite_index = spr_ramboBricenoJump;
            image_speed = 0;
        }
        jumping = true;
        alarm[0] = 13;
    }
}

if ((keyboard_check_released(vk_left) || keyboard_check_released(vk_right)) && !falling && !jumping)
{
    image_index = 0;
    sprite_index = spr_ramboBricenoStand;
    image_speed = standSpeed;
        
}

if debug_mode && keyboard_check(ord('T'))
    room_goto_next();

if keyboard_check(vk_escape)
    game_end();
    
if keyboard_check(vk_f5)
    game_restart();
