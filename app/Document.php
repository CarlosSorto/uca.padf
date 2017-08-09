<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Iw\Api\Traits\Models\Searcheable;

class Document extends Model
{
    use Searcheable;
    use \App\Traits\Models\SearchContentDocument;

    protected $fillable = [
        'title',
        'author',
        'description',
        'long_description',
        'published_date',
        'country_id',
        'organization_id',
        'topics',
        'keywords',
        'file',
        'name_applicant',
        'institution',
        'position',
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
      'author' => [
        'type'=> 'string',
      ],
      'country_id' => [
        'type'=> 'integer',
      ],
      'organization_id' => [
        'type'=> 'integer',
      ],
      'published_date' => [
        'type'=> 'date',
      ],
      'description' => [
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

    public function searchContent()
    {
        return $this->morphOne('App\SearchContent', 'sourceable');
    }
}
