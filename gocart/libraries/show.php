<?php
class Show{

	public function p($array)
    {	
    	if(isset($array) && !empty($array))
		{	
			
			echo "<pre>";
			print_r($array);
		}	
	}
	
	
	public function pe($array)
    {	
    		if(isset($array) && !empty($array))
			{
				echo "<pre>";
				print_r($array);
				exit;
			}
	}
}
?>