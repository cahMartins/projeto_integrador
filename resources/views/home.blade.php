@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12" style="text-align: center">
            <div class="box-header">
                <div class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="{{asset("images/bem_vindo.png")}}" alt="" width="100%">
                    </div>
                    </div>
                  </div>
                <hr>
                <div class="box-body">
                    <h3>Curso: @if(isset($curso)) {{$curso->nome}} @else -- @endif</h3>
                    @if(session('sucesso'))
                        <div class="alert alert-warning">
                            <strong>{{session('sucesso')}}<br>
                            Os Valores abaixo podem ser alterados!</strong>
                        </div>
                    @elseif(session('erro'))
                        <div class="alert alert-danger">
                            <strong>{{session('mensagem')}}</strong>
                        </div>
                    @endif
                    <div class="col-md-4">
                            <div class="form-group">
                                <h4>Carga Horária</h4>
                                <hr>    
                                <span class="badge badge-pill badge-light">@if(isset($curso->carga_horaria)) {{$curso->carga_horaria}} @else -- @endif</span>
                            </div>
                    </div>

                    <div class="col-md-4">
                            <div class="form-group">
                                <h4>Horas Pendentes</h4>
                                <hr>    
                                <span class="badge badge-pill badge-light">@if(isset($horas->horas_pendentes)) {{$horas->horas_pendentes}} @else -- @endif</span>
                            </div>
                    </div>

                    <div class="col-md-4">
                            <div class="form-group">
                                <h4>Horas Enviadas</h4>
                                <hr>    
                                <span class="badge badge-pill badge-light">@if(isset($horas->horas_enviadas)) {{$horas->horas_enviadas}} @else -- @endif</span>
                            </div>
                    </div>

            </div>
           
        </div>
        </div>
        {{-- Col 12 --}}
        <hr>
        <div class="col-md-12" style="text-align: center;">

        <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-md-6">
                <form action="/upload" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}
                    <h4>Enviar Horas</h4>
                    <hr>
                    
                    <div class="form-group">
                        <label for="total-horas" class="control-label" style="float: left">Total de Horas</label>
                        <input id="total-horas" type="number" class="form-control" name="total-horas" max="{{$curso->carga_horaria}}" required placeholder="Ex: 7">
                    </div>
                    <div class="form-group">
                        <input type="file" name="upload" class="form-control-file-sm" required>
                    </div> 
                    <button type="reset" class="btn btn-default btn-sm">Limpar</button>
                    <button type="submit" class="btn btn-primary btn-sm">Enviar</button>
                </form>
            </div>                    
                <div class="col-md-6">
                    {{-- Lista de Anexos --}}
                    @if(isset($attachments[0]))
                    <h4>Anexos</h4>
                    <hr>
                    <label class="control-label" required>Lista</label>
                        <ul class="list-group">
                            @foreach($attachments as $anexo)
                            <li class="list-item"><a href="storage/{{$anexo->path}}" download>{{$anexo->filename}}</a> - {{date_format($anexo->created_at, "d/m/Y H:i")}}</li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>

        </div>
    </div>

</div>
{{-- row --}}
@endsection
