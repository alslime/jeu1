function load_game()
{
	if file_exists("save.ini")
	{
		file_delete("save.ini")
	}
	ini_open("save.ini")
	total_gems = ini_read_real("Save 1","Number of Gems",0)
	ini_close()
}