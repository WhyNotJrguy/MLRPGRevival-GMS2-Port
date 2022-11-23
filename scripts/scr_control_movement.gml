if keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight)
{
    if keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
        dir = 3;
    if not keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
        dir = 5;
    if not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
        dir = 4;
}
if not keyboard_check(global.keyLeft) && keyboard_check(global.keyRight)
{
    if keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
        dir = 1;
    if not keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
        dir = 7;
    if not keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
        dir = 0;
}
if not keyboard_check(global.keyLeft) && not keyboard_check(global.keyRight)
{
    if keyboard_check(global.keyUp) && not keyboard_check(global.keyDown)
        dir = 2;
    if not keyboard_check(global.keyUp) && keyboard_check(global.keyDown)
        dir = 6;
}
