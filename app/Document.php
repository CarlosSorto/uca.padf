<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    public function countryId()
    {
        return $this->belongsTo(Country::class);
    }

    public function organizationId()
    {
        return $this->belongsTo(Organization::class);
    }

    public function Topics()
    {
        return $this->belongsToMany(Topic::class, 'document_topics');
    }
}
