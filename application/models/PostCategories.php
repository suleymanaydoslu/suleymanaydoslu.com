<?php

namespace Model;

use \Gas\ORM;

class PostCategories extends ORM
{
    public $table = 'post_categories';

    function _init()
    {
        self::$relationships = array(
            'post' => ORM::belongs_to('\\Model\\Post'),
            'category' => ORM::belongs_to('\\Model\\Category'),
        );

        self::$fields = array(
            'id' => ORM::field('auto[10]'),
            'post_id' => ORM::field('int[11]'),
            'category_id' => ORM::field('int[11]')
        );
    }
}