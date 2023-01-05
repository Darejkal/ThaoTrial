/// @description Insert description here
// You can write your code in this editor
global.time=current_time-global.beginTime;

key_left= keyboard_check(vk_left);
key_right=keyboard_check(vk_right);
key_up= keyboard_check(vk_up);
key_down=keyboard_check(vk_down);
key_jump=keyboard_check_pressed(vk_space);
var moveHorizontal = key_right-key_left;
hsp=moveHorizontal*walksp;

var moveVertical = key_down-key_up;
vsp=moveVertical*walksp;

if(place_meeting(x+hsp,y,oWall)){
	hsp=0;
}

if(place_meeting(x,y+vsp,oWall)){
	vsp=0;
}
if(key_jump&&zsp==0){
	zsp=-jumpsp;
}
if(z<10){
	zsp+=grv;
}
if(!isJumping()){
	zsp=0;
	z=zFloor;
}
x+=hsp;
y+=vsp;
z+=zsp;