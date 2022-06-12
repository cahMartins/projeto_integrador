<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTrgPreencherStatusHoras extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::unprepared('
        CREATE TRIGGER projeto_integrador.trg_preencher_status_horas AFTER INSERT ON projeto_integrador.users FOR EACH ROW BEGIN
	        INSERT INTO projeto_integrador.status_horas VALUES(NULL,NEW.id,(SELECT carga_horaria FROM projeto_integrador.cursos WHERE id = NEW.curso_id),0,NULL,NULL);
        END
        ');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::unprepared('DROP TRIGGER `trg_preencher_status_horas`');
    }
}
