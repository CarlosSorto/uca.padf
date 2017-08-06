@extends('layouts.site')

@section('content')
    <section class="pt6-l pt5 pb5 bg--light-blue">
        <div class="w-60-l w-80 center mt5">
            <h1 class="text--blue fw4 f2">Registro de Organización</h1>
            <div class="bg-white pa3 mb5">
                <h2 class="text--blue fw4 f3">Datos de la institución</h2>
                <div class="cf">
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <input id="title" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Nombre*">
                        </div>
                        <div class="mb4">
                            <input id="author" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Teléfono*">
                        </div>
                        <div class="mb4">
                            <input id="date" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Correo electrónico*">
                        </div>
                        <div class="mb4">
                            <input id="description" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Descripción corta*">
                        </div>
                        <div class="mb4">
                            <textarea name="long-description" cols="30" rows="5" class="f-textarea w-100 bo--light-blue-50" placeholder="Descripción larga*"></textarea>
                        </div>
                    </div>
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50">
                                <option value="" class="text--light-blue-50">Seleccione un Categoría</option>
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50">
                                <option value="" class="text--light-blue-50">Seleccione una Área de especialización</option>
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50">
                                <option value="" class="text--light-blue-50">Seleccione un país</option>
                            </select>
                        </div>
                        <div>
                            <input type="file" style="cursor:pointer" class="dib absolute overflow-hidden o-0 f5 fw4 bo--purple link ba bw1 pv2  text--purple hover-bg--purple hover-white bg-animate">
                            <label for="" style="cursor:pointer" class="dib f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Subir Logo</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white pa3">
                <h2 class="text--blue fw4 f3">Datos del solicitante</h2>
                <div class="cf">
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Nombre del solicitante*">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Institución*">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Cargo*">
                    </div>
                </div>
                <div class="tr mt4 mb3">
                    <a href="/home/cesar/Code/iw/PADF/front-end/app/formacion-registro.html" class="f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Enviar</a>
                </div>
            </div>
        </div>
    </section>
@endsection
