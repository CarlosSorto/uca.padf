<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Iw\Api\Traits\Models\Searcheable;

class Country extends Model
{
    use Searcheable;

    protected static $searcheable_fields = [
          'id' => [
            'type'=> 'integer',
          ],
          'iso_name' => [
            'type'=> 'string',
          ],
          'name' => [
            'type'=> 'string',
          ],
          'iso' => [
            'type'=> 'string',
          ],
    ];

    public function getKeyRouteName()
    {
        return 'iso';
    }

    public function scopeDefaultSort($q)
    {
        return $q->orderBy('sp_name', 'asc');
    }
}
