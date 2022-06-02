<?php
namespace think\facade;

use think\Facade;

class Amqp extends Facade
{
    protected static function getFacadeClass(): string
    {
        return 'Amqp';
    }
}