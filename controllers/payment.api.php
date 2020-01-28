<?php
@session_start();

require_once('../classes/transaction.class.php');

$app = new Transaction();
if($_SESSION['app_user']){
	$amount = filter_input(0,"amount",513);
$invoice_id =$app->generateInvoiceId();

echo $app->depositMoney($amount,$invoice_id) ;



}else{
	echo "Unauthorized User";
}


