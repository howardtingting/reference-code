<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit5c6c2cdadd71a412159f87436df74e43
{
    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'Facebook\\AutoloadMap\\ComposerPlugin' => __DIR__ . '/..' . '/hhvm/hhvm-autoload/ComposerPlugin.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->classMap = ComposerStaticInit5c6c2cdadd71a412159f87436df74e43::$classMap;

        }, null, ClassLoader::class);
    }
}
