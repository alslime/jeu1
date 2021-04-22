// argument0 = gear value
// argument1 = x
// argument2 = y
function create_gems()
{
	d1000 = argument0 div 1000
	num1000 = argument0 - d1000*1000
	d500 = num1000 div 500
	num500 = num1000 - d500*500
	d100 = num500 div 100
	num100 = num500 - d100*100
	d50 = num100 div 50
	num50 = num100 - d50*50
	d10 = num50 div 10
	num10 = num50 - d10*10
	d5 = num10 div 5
	num5 = num10 - d5*5
	d1 = num5 div 1
	num1 = num5 - d1*1
	
	for (i = d1000; i > 0; i -= 1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 1000
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d500; i > 0; i -= 1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 500
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d100; i > 0; i-=1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 100
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d50; i > 0; i-=1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 50
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d10; i > 0; i-=1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 10
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d5; i > 0; i-=1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 5
		script_execute(gem_value,inst_gem,evalue)
	}
	for (i = d1; i > 0; i-=1)
	{
		inst_gem = instance_create_layer(argument1,argument2,"lay_front",o_gem)
		evalue = 1
		script_execute(gem_value,inst_gem,evalue)
	}
}