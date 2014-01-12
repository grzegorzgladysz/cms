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
 * Productve controller class.
 */
class ProductveControllerProductve extends JControllerForm
{

    function __construct() {
        $this->view_list = 'productves';
        parent::__construct();
    }

}