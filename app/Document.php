<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Iw\Api\Traits\Models\Searcheable;

class Document extends Model
{
    use Searcheable;

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
      'author_name' => [
        'type'=> 'string',
      ],
      'country_id' => [
        'type'=> 'integer',
      ],
      'organization_id' => [
        'type'=> 'integer',
      ],
      'published_at' => [
        'type'=> 'datetime',
      ],
      'description' => [
        'type'=> 'string',
      ],
      'keywords' => [
        'type'=> 'string',
      ],
      'content' => [
        'type'=> 'string',
      ],
      'applicant_name' => [
        'type'=> 'string',
      ],
      'applicant_institution_name' => [
        'type'=> 'string',
      ],
      'applicant_charge' => [
        'type'=> 'string',
      ],
    ];

    protected $dates = ['published_at', 'created_at', 'updated_at', 'deleted_at'];

    public function countryId()
    {
        return $this->belongsTo(Country::class);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function organizationId()
    {
        return $this->belongsTo(Organization::class);
    }

    public function organization()
    {
        return $this->belongsTo(Organization::class);
    }

    public function Topics()
    {
        return $this->belongsToMany(Topic::class, 'document_topics');
    }
}
