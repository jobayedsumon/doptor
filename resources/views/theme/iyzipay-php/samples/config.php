<?php

require_once(dirname(__DIR__).'/IyzipayBootstrap.php');

IyzipayBootstrap::init();

class Config
{
    public static function options()
    {
        $options = new \Iyzipay\Options();
        $options->setApiKey('sandbox-XzFhaxFfOV51Gj8tHK3uoELmUuU2p8B6');
        $options->setSecretKey('sandbox-DRsaEciB2qTgxPEDZUlrjqMBBZyhZJ0e');
        $options->setBaseUrl('https://sandbox-api.iyzipay.com');

        return $options;
    }
}