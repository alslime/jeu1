function vertex_blade()
{
	///@param vbuff
	///@paramvbuff
	///@paramxx
	///@paramyy
	///@paramwidth
	///@paramheight
	///@paramsegments

	var vbuff = argument0
	var xx = argument1
	var yy = argument2
	var width = argument3
	var height = argument4
	var segments = argument5
	var seg_height = height/segments

	for (var i = 0; i < segments; i += 1)
	{
		var base_w = lerp(width, 0, i/segments)
		var top_w = lerp(width, 0, (i+1)/segments)
		var x1 = xx + (width - base_w)/2
		var y1 = yy - i*seg_height
		var x2 = x1 + base_w
		var y2 = y1
		var x3 = xx + (width - top_w)/2
		var y3 = y1 - seg_height
		var x4 = x3 + top_w
		var y4 = y3
	
		//t1
		vertex_position(vbuff,x1,y1)
		vertex_color(vbuff, c_green, 1)
		vertex_position(vbuff,x2,y2)
		vertex_color(vbuff, c_green, 1)
		vertex_position(vbuff,x3,y3)
		vertex_color(vbuff, c_green, 1)
		//triangle2
		vertex_position(vbuff,x2,y2)
		vertex_color(vbuff, c_green, 1)
		vertex_position(vbuff,x4,y4)
		vertex_color(vbuff, c_green, 1)
		vertex_position(vbuff,x3,y3)
		vertex_color(vbuff, c_green, 1)
	}
}


function draw_sprite_skew_ext()
{
/// draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, image_xskew, image_yskew);

var sprite   = argument0; 
var index    = argument1;
var xx       = argument2;
var yy       = argument3; 
var xscale   = argument4; 
var yscale   = argument5;
var cosAngle = cos(degtorad(argument6)); 
var sinAngle = sin(degtorad(argument6)); 
var tint     = argument7;
var alpha    = argument8;
var hskew    = argument9;
var vskew    = argument10;

// Calculate common operations
var sprTex    = sprite_get_texture(sprite, index); 
var sprWidth  = sprite_get_width(sprite); 
var sprHeight = sprite_get_height(sprite); 
var sprXOrig  = sprite_get_xoffset(sprite); 
var sprYOrig  = sprite_get_yoffset(sprite);

var tempX, tempY, tempDir, tempDist;

// Begin drawing primitive
draw_primitive_begin_texture(pr_trianglestrip, sprTex);

// Top-left corner
tempX = (-sprXOrig + (sprYOrig / sprHeight) * hskew) * xscale;
tempY = (-sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 0, tint, alpha);

// Top-right corner
tempX = (sprWidth + (sprYOrig / sprHeight) * hskew - sprXOrig) * xscale;
tempY = (-sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 0, tint, alpha);

// Bottom-left corner
tempX = (-sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
tempY = (sprHeight - sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 1, tint, alpha);

// Bottom-right corner
tempX = (sprWidth - sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
tempY = (sprHeight - sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 1, tint, alpha);

// Finish drawing primitive
draw_primitive_end();
}