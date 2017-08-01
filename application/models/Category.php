<?php

namespace Model;

use \Gas\ORM;

class Category extends ORM
{
    public $primary_key = 'id';

    public $table = 'categories';

    function _init()
    {
        self::$fields = array(
            'id' => ORM::field('auto[10]'),
            'title' => ORM::field('char[255]'),
            'slug' => ORM::field('char[255]')
        );

        $this->ts_fields = array('updated_at', '[created_at]');
    }
}