if (keyboard_check(vk_left) || keyboard_check(vk_right) ||
    keyboard_check(vk_up) || keyboard_check(vk_down))
{   
    if(keyboard_check(vk_left) && keyboard_check(vk_right)){
    } else {
        if (keyboard_check(vk_left)) {
            if !place_meeting(x - 5, y, obj_wall)
                x -= xSpeed;
        }
        if (keyboard_check(vk_right)) {
            if !place_meeting(x + 5, y, obj_wall)
                x += xSpeed;
        }
    }
    
    if(keyboard_check(vk_up) && keyboard_check(vk_down)){
    } else {
        if (keyboard_check(vk_up)) {
            if !place_meeting(x, y - 5, obj_wall)
                y -= ySpeed;
        }
        if (keyboard_check(vk_down)) {
            if !place_meeting(x, y + 5, obj_wall)
                y += ySpeed;
        }
    }
}

if keyboard_check_pressed(ord('Z')){
    instance_create(x - 8, y - 15, obj_punch);
}

if debug_mode && keyboard_check(ord('T'))
    room_goto_next();

if keyboard_check(vk_escape)
    game_end();
    
if keyboard_check(vk_f5)
    game_restart();
