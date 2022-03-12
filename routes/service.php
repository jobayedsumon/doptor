<?php

    Route::get('/mail-test', function () {
        ini_set( 'display_errors', 1 );
        error_reporting( E_ALL );
        $from = "no_reply@doptorr.com";
        $to = "sumonjobayed@gmail.com";
        $subject = "PHP Mail Test script";
        $message = "This is a test to check the PHP Mail functionality";
        $headers = "From:" . $from;
        try {
            $mail = mail($to,$subject,$message, $headers);
        } catch (Exception $exception) {
            dd($exception);
        }


        echo dd($mail);
    });

    Route::get('/home', 'ServiceCommonController@homepage')->name('service.home');
    Route::get('/create', 'ServiceCommonController@create_service')->name('service.create');
    Route::post('/create', 'ServiceCommonController@create_new_service')->name('service.create');
    Route::get('/edit/{slug}', 'ServiceCommonController@edit_service')->name('service.edit');
    Route::post('/update/{slug}', 'ServiceCommonController@update_service')->name('service.update');

    Route::get('/get-subcategories/{id}', 'ServiceCommonController@get_subcategories')->name('get-subcategories');



?>