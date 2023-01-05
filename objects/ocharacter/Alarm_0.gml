function randomSign(randomZero){
	var ran = random(3);
	if(randomZero) return ran<1.5?-1:1;
	return ran<1?-1:(ran<2?1:0);
}
var hor=randomSign(true),ver=randomSign(hor!=0);

var inst = instance_create_layer(room_width*random(1), room_height*random(1), "Instances", oThaoRun);
with (inst){
	directionArr=[hor,ver]
};
alarm[0]+=1*room_speed;
