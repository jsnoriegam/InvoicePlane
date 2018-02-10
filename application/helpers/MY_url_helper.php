<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('file_url')) {
    function file_url($path)
	{
		return 'file:///' . str_replace('\\', '/', FCPATH) . $path;
	}
}