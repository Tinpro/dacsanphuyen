<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Product extends Model
{
    use SoftDeletes;
    //
    protected $table = "products";
    protected $promaryKey = "id";
    protected $guarded = [];
   
    protected $dates = ['deleted_at'];
    public function category()
    {
        return $this->belongsTo('App\Models\Category','id_category','id');
    }
    public function bills_detail()
    {
        return $this->hasMany('App\Models\Bill_detail','id_product','id');
    }
}
