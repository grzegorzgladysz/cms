<?php
/**
 * @version     1.0.0
 * @package     com_productve
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      MAciej <maciej.grochowski89@gmail.com> - http://
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_productve/assets/css/productve.css');
?>
<script type="text/javascript">
    js = jQuery.noConflict();
    js(document).ready(function(){
        
    });
    
    Joomla.submitbutton = function(task)
    {
        if(task == 'tablev1ew.cancel'){
            Joomla.submitform(task, document.getElementById('tablev1ew-form'));
        }
        else{
            
            if (task != 'tablev1ew.cancel' && document.formvalidator.isValid(document.id('tablev1ew-form'))) {
                
                Joomla.submitform(task, document.getElementById('tablev1ew-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_productve&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="tablev1ew-form" class="form-validate">
    <div class="row-fluid">
        <div class="span10 form-horizontal">
            <fieldset class="adminform">

                

            </fieldset>
        </div>

        

        <input type="hidden" name="task" value="" />
        <?php echo JHtml::_('form.token'); ?>

    </div>
</form>