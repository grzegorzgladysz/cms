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

jimport('joomla.application.component.controllerform');

/**
 * Tablev1ew controller class.
 */
class ProductveControllerTablev1ew extends JControllerForm
{

    function __construct() {
        $this->view_list = 'tablev1ews';
        parent::__construct();
    }

}