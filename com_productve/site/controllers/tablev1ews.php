<?php
/**
 * @version     1.0.0
 * @package     com_productve
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      MAciej <maciej.grochowski89@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

require_once JPATH_COMPONENT.'/controller.php';

/**
 * Tablev1ews list controller class.
 */
class ProductveControllerTablev1ews extends ProductveController
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Tablev1ews', $prefix = 'ProductveModel')
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
}