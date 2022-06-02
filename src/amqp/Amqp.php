<?php
namespace dante;

use think\Manager;
class Amqp extends Manager
{
    protected $namespace = '\\dante\\amqp\\driver\\';
    public function getDefaultDriver()
    {
        // TODO: Implement getDefaultDriver() method.
    }
}