<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attachments extends Model
{
    protected $table = 'attachments';

    protected $fillable = [
        'id',
        'curso_id',
        'user_id',
        'filename',
        'path',
    ];
}
