<?php
include('IyzipayBootstrap.php');
IyzipayBootstrap::init();
$options = new \Iyzipay\Options();
$options->setApiKey($_REQUEST['iyzico_api_key']);
$options->setSecretKey($_REQUEST['iyzico_secret_key']);
$options->setBaseUrl($_REQUEST['iyzico_url']);

$request = new \Iyzipay\Request\CreateCheckoutFormInitializeRequest();
$request->setLocale(\Iyzipay\Model\Locale::TR);
$request->setConversationId($_REQUEST['purchase_token']);
$request->setPrice($_REQUEST['price_amount']);
$request->setPaidPrice($_REQUEST['price_amount']);
$request->setCurrency("TRY");
$request->setBasketId($_REQUEST['purchase_token']);
$request->setPaymentGroup(\Iyzipay\Model\PaymentGroup::PRODUCT);
$request->setCallbackUrl($_REQUEST['iyzico_success_url']);

/* new code */

/* new code */

$buyer = new \Iyzipay\Model\Buyer();
$buyer->setId($_REQUEST['user_id']);
$buyer->setName($_REQUEST['username']);
$buyer->setSurname($_REQUEST['username']);
$buyer->setEmail($_REQUEST['email']);
$buyer->setIdentityNumber($_REQUEST['user_token']);
$buyer->setRegistrationAddress($_REQUEST['username']);
$buyer->setCity($_REQUEST['username']);
$buyer->setCountry($_REQUEST['username']);
$request->setBuyer($buyer);

$billingAddress = new \Iyzipay\Model\Address();
$billingAddress->setContactName($_REQUEST['username']);
$billingAddress->setCity($_REQUEST['username']);
$billingAddress->setCountry($_REQUEST['username']);
$billingAddress->setAddress($_REQUEST['username']);
$billingAddress->setZipCode($_REQUEST['username']);
$request->setBillingAddress($billingAddress);

$basketItems = array();
$BasketItem = new \Iyzipay\Model\BasketItem();
$BasketItem->setId($_REQUEST['purchase_token']);
$BasketItem->setName($_REQUEST['item_name']);
$BasketItem->setCategory1($_REQUEST['item_name']);
$BasketItem->setItemType(\Iyzipay\Model\BasketItemType::VIRTUAL);
$BasketItem->setPrice($_REQUEST['price_amount']);
$basketItems[0] = $BasketItem;

$request->setBasketItems($basketItems);

# make request
$checkoutFormInitialize = \Iyzipay\Model\CheckoutFormInitialize::create($request, $options);

# print result
//print_r($checkoutFormInitialize);

//print_r($checkoutFormInitialize->getStatus());
//print_r($checkoutFormInitialize->getErrorMessage());
print_r($checkoutFormInitialize->getCheckoutFormContent());
?>
<div id="iyzipay-checkout-form" class="popup"></div>