<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
class Cursos extends Model
{
    protected $table = 'cursos';

    protected $fillable = [
        'id',
        'nome',
        'carga_horaria',
    ];
    
}
