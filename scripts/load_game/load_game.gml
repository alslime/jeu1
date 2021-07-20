function load_game()
{
	if file_exists("save.ini")
	{
		file_delete("save.ini")
	}
	ini_open("save.ini")
	total_gems = ini_read_real("save_1","number_of_gems",0)
	ini_close()
}