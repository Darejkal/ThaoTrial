hsp=directionArr[0]*walksp;
vsp=directionArr[1]*walksp;
x+=hsp;
y+=vsp;
if(x>room_width||x<0||y>room_height||y<0){
	instance_destroy(id);
}
if(place_meeting(x,y,oCharacter)&&!oCharacter.isJumping()){
	instance_create_layer(x,y,"Instances",oHeartsBeat);
	instance_destroy(id);
	global.score++;
}




