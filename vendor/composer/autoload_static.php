<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitbd72d7d758dec74a013875d2e25ea7e4
{
    public static $classMap = array (
        'App' => __DIR__ . '/../..' . '/core/App.php',
        'ComposerAutoloaderInitbd72d7d758dec74a013875d2e25ea7e4' => __DIR__ . '/..' . '/composer/autoload_real.php',
        'Composer\\Autoload\\ClassLoader' => __DIR__ . '/..' . '/composer/ClassLoader.php',
        'Composer\\Autoload\\ComposerStaticInitbd72d7d758dec74a013875d2e25ea7e4' => __DIR__ . '/..' . '/composer/autoload_static.php',
        'Connection' => __DIR__ . '/../..' . '/core/database/Connection.php',
        'HomesController' => __DIR__ . '/../..' . '/controllers/HomesController.php',
        'QueryBuilder' => __DIR__ . '/../..' . '/core/database/QueryBuilder.php',
        'Request' => __DIR__ . '/../..' . '/core/Request.php',
        'Router' => __DIR__ . '/../..' . '/core/Router.php',
        'Task' => __DIR__ . '/../..' . '/Task.php',
        'UsersController' => __DIR__ . '/../..' . '/controllers/UsersController.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->classMap = ComposerStaticInitbd72d7d758dec74a013875d2e25ea7e4::$classMap;

        }, null, ClassLoader::class);
    }
}
