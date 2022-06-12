<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StatusHoras extends Model
{
    protected $table = 'status_horas';

    protected $fillable = [
        'id',
        'user_id',
        'horas_pendentes',
        'horas_enviadas',
    ];


}
