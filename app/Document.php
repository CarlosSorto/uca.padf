<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
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
