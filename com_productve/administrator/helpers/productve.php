<?php
/**
 * @version     1.0.0
 * @package     com_productve
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      MAciej <maciej.grochowski89@gmail.com> - http://
 */

// No direct access
defined('_JEXEC') or die;

/**
 * Productve helper.
 */
class ProductveHelper
{
	/**
	 * Configure the Linkbar.
	 */
	public static function addSubmenu($vName = '')
	{
		JHtmlSidebar::addEntry(
			JText::_('COM_PRODUCTVE_TITLE_PRODUCTVES'),
			'index.php?option=com_productve&view=productves',
			$vName == 'productves'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_PRODUCTVE_TITLE_TABLEV1EWS'),
			'index.php?option=com_productve&view=tablev1ews',
			$vName == 'tablev1ews'
		);

	}

	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getActions()
	{
		$user	= JFactory::getUser();
		$result	= new JObject;

		$assetName = 'com_productve';

		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action, $user->authorise($action, $assetName));
		}

		return $result;
	}
}
