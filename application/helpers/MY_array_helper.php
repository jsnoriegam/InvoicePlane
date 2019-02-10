<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * CodeIgniter Array Helpers
 *
 * @package		CodeIgniter
 * @subpackage	Helpers
 * @category	Helpers
 * @author		Juan Salvador Noriega
 */

// ------------------------------------------------------------------------

if ( ! function_exists('element'))
{
	/**
	 * Map
	 *
	 *
	 * @param	callable
	 * @param	collection
	 * @return	collection
	 */
	function map(callable $fn, $collection)
	{
		foreach ($collection as $key => $item) {
            yield $item => $fn($item);
        }
	}
}