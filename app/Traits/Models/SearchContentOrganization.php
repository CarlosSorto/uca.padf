<?php

namespace App\Traits\Models;

use \App\SearchContent;
/**
 *
 */
trait SearchContentOrganization
{
  static function  bootSearchContentOrganization()
  {
    static::saved(function ($model) {
        $search_content = $model->searchContent;
        if (empty($search_content)) {
          $search_content = new SearchContent();
        }
        $search_content->active = $model->active;
        $search_content->name = $model->name;
        $search_content->description = $model->description;
        $search_content->website = $model->website;
        $search_content->email = $model->email;
        $search_content->sourceable()->associate($model);
        $search_content->save();
    });
  }
}
