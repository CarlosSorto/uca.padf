<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Formation extends Model
{
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
