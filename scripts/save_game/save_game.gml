function save_game()
{
	inst_hero = instance_find(o_hero,0)
	
	if file_exists("save.ini")
	{
		file_delete("save.ini")
	}
	ini_open("save.ini")
	var saved_gems = inst_hero.total_gems
	ini_write_real("Save 1","Number of Gems",saved_gems)
	ini_close()
}