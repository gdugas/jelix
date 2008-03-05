<?php
/**
* @package  testapp
* @subpackage scripts
* @author       Laurent Jouanneau
* @contributor
* @copyright
*/

require_once ('../../lib/jelix/init.php');

require_once ('../application-cli.init.php');

require_once (JELIX_LIB_CORE_PATH.'request/jCmdLineRequest.class.php');

$config_file = 'cmdline/config.ini.php';

$jelix = new jCoordinator($config_file);
$jelix->process(new jCmdLineRequest());

?>