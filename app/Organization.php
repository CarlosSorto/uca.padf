<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Organization extends Model
{
    public function countryId()
    {
        return $this->belongsTo(Country::class);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function classificationId()
    {
        return $this->belongsTo(Classification::class);
    }

    public function classification()
    {
        return $this->belongsTo(Classification::class);
    }

    public function workAreas()
    {
        return $this->belongsToMany(WorkArea::class, 'organization_work_areas');
    }

    public function work_areas()
    {
        return $this->belongsToMany(WorkArea::class, 'organization_work_areas');
    }
}
