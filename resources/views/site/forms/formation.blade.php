@extends('layouts.site')

@section('content')
    <form method="post" action="{{ route('formation.store') }}" enctype="multipart/form-data">
        {{ csrf_field() }}
    <section class="pt6-l pt6 pb5 bg--light-blue">
        <div class="w-60-l w-80 center mt5-l">
            @if($errors)
                @foreach ($errors->all() as $error)
                    {{ $error }} <hr>
                @endforeach
            @endif
            <h1 class="text--blue fw4 f2">Inscribe tu actividad formativa</h1>
            <div class="bg-white pa3 mb5">
                <h2 class="text--blue fw4 f3">Datos de la actividad</h2>
                <div class="cf">
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Titulo*" name="title" value="{{ old('title') }}">
                        </div>
                        <div class="mb4">
                            <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Tiempo de Duración*" name="duration" value="{{ old('duration') }}">
                        </div>
                        <div class="mb4">
                            <input id="date" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Correo Electronico*" name="email" value="{{ old('email') }}">
                        </div>
                        <div class="mb4">
                            <textarea name="description" id="" cols="30" rows="5" class="f-textarea w-100 bo--light-blue-50" placeholder="Descripción*">
                                {{ old('description') }}
                            </textarea>
                        </div>
                        <div class="mb4">
                            <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Enlace*" name="link" value="{{ old('link') }}">
                        </div>
                    </div>
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <select id="" class="w-100 f-select text--light-blue-50" name="formation_type_id">
                                <option value="" class="text--light-blue-50">Seleccione un Tipo</option>
                                @foreach ($types as $type)
                                    <option value="{{ $type->id }}" class="text--light-blue-50" {{ (old("formation_type_id") == $type->id ? "selected":"") }}>
                                        {{ $type->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select name="modality_id" id="" class="w-100 f-select text--light-blue-50">
                                <option value="" class="text--light-blue-50">Seleccione una Modalidad</option>
                                @foreach ($modalities as $modality)
                                    <option value="{{ $modality->id }}" class="text--light-blue-50" {{ (old("modality_id") == $modality->id ? "selected":"") }}>
                                        {{ $modality->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select name="country_id" id="" class="w-100 f-select text--light-blue-50">
                                <option value="" class="text--light-blue-50">Seleccione una País</option>
                                @foreach ($countries as $country)
                                    <option value="{{ $country->id }}" class="text--light-blue-50" {{ (old("country_id") == $country->id ? "selected":"") }}>
                                        {{ $country->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <input id="description" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Sitio Web*" name="website" value="{{ old('website') }}">
                        </div>
                        <div class="mb4">
                            <input id="description" class="input-reset bn pa2 f-input mb2 db w-100" type="text" placeholder="Lugar*" name="place" value="{{ old('place') }}">
                        </div>
                        <div class="cf">
                            <div class="fl w-100 w-50-ns pr3">
                                <div class="mb4">
                                    <input id="since_date" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Fecha de Inicio*" name="since" value="{{ old('since') }}">
                                </div>
                            </div>
                            <div class="fl w-100 w-50-ns">
                                <div class="mb4">
                                    <input id="until_date" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Fecha de Finalización*" name="until" value="{{ old('until') }}">
                                </div>
                            </div>
                        </div>
                        <div class="mb4">
                            <input class="input-reset bn f-input pa2 mb2 db w-100" type="text" placeholder="Dirigido a*" name="public" value="{{ old('public') }}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white pa3">
                <h2 class="text--blue fw4 f3">Datos del solicitante</h2>
                <div class="cf">
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Nombre del solicitante*" name="representative" value="{{ old('representative') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Institución*" name="organizer" value="{{ old('organizer') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Cargo*" name="position" value="{{ old('position') }}">
                    </div>
                </div>
                <div class="tr mt4 mb3">
                    <button type="submit" class="f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Enviar</button>
                </div>
            </div>
        </div>
    </section>
</form>
@endsection
