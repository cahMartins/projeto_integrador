<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCursos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cursos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nome');
            $table->float('carga_horaria');
        });

        DB::unprepared("
        INSERT INTO projeto_integrador.cursos(`id`, `nome`, `carga_horaria`) VALUES
        (1, 'Análise e Desenvolvimento de Sistemas', 200),
        (2, 'Administração', 100);
        ");

        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cursos');
    }
}
