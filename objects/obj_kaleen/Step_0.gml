// Velocidad de movimiento
var spd = 3;

// Input
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

// Movimiento diagonal normalizado
if (h != 0 && v != 0) {
    h *= 0.7071;
    v *= 0.7071;
}

// Colisión horizontal
if (!place_meeting(x + h * spd, y, obj_wall)) {
    x += h * spd;
}

// Colisión vertical
if (!place_meeting(x, y + v * spd, obj_wall)) {
    y += v * spd;
}