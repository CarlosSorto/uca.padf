<?php

$router->namespace('API')->group(function ($router) {
    $router->apiResource('documents', 'DocumentsController', ['only'=> ['index']]);
});
