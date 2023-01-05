/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_colour(c_gray);
var _X=(bbox_right+bbox_left)/2-5;
var _Y=bbox_bottom;
draw_ellipse(_X+z/2,_Y+z/20,_X-z/2,_Y-z/20,false);
draw_text(20, 20,"SIMP'S SCORE: "+string(global.score));
draw_text(20, 40,"TIME ELAPSED: "+string(int64(global.time/1000))+"s");