<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Iw\Api\Traits\Models\Searcheable;

class Formation extends Model
{
    use Searcheable;

    protected $fillable = [
        'title',
        'duration',
        'place',
        'since',
        'until',
        'public',
        'organizer',
        'representative',
        'position',
        'email',
        'website',
        'description',
        'link',
        'active',
        'modality_id',
        'country_id',
        'formation_type_id',
    ];

    protected static $searcheable_fields = [
      'id' => [
        'type'=> 'integer',
      ],
      'active' => [
        'type'=> 'integer',
      ],
      'title' => [
        'type'=> 'string',
      ],
      'country_id' => [
        'type'=> 'integer',
      ],
      'description' => [
        'type'=> 'string',
      ],
    ];

    public function modalityId()
    {
        return $this->belongsTo(Modality::class);
    }

    public function modality()
    {
        return $this->belongsTo(Modality::class);
    }

    public function countryId()
    {
        return $this->belongsTo(Country::class);
    }

    public function formationTypeId()
    {
        return $this->belongsTo(FormationType::class);
    }

    protected $dates = [
        'since', 'until', 'created_at', 'updated_at', 'deleted_at',
    ];
}
