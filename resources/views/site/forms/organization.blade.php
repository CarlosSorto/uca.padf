@extends('layouts.site')

@section('content')
<form method="post" action="{{ route('organization.store') }}" enctype="multipart/form-data">
    {{ csrf_field() }}
    <section class="pt6-l pt5 pb5 bg--light-blue">
        <div class="w-60-l w-80 center mt5">            
            <h1 class="text--blue fw4 f2">Registro de Organización</h1>
            <div class="bg-white pa3 mb5">
                <h2 class="text--blue fw4 f3">Datos de la institución</h2>
                <div class="cf">
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <input id="title" class="input-reset f-input bn pa2 mb2 db w-100" type="text" name="name" placeholder="Nombre*" value="{{ old('name') }}">
                        </div>
                        <div class="mb4">
                            <input id="author" class="input-reset f-input bn pa2 mb2 db w-100" type="text" name="phone" placeholder="Teléfono*" value="{{ old('phone') }}">
                        </div>
                        <div class="mb4">
                            <input id="date" class="input-reset f-input bn pa2 mb2 db w-100" type="text" name="email" placeholder="Correo electrónico*" value="{{ old('email') }}">
                        </div>
                        <div class="mb4">
                            <input id="description" class="input-reset f-input bn pa2 mb2 db w-100" type="text" name="description" placeholder="Descripción corta*" value="{{ old('description') }}">
                        </div>
                        <div class="mb4">
                            <textarea cols="30" rows="5" class="f-textarea w-100 bo--light-blue-50" placeholder="Descripción larga*" name="long_description">
                                {{ old('long_description') }}
                            </textarea>
                        </div>
                    </div>
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50" name="classification_id">
                                <option value="" class="text--light-blue-50">Seleccione un Categoría</option>
                                @foreach ($classifications as $classification)
                                    <option value="{{ $classification->id }}" class="text--light-blue-50" {{ (old("classification_id") == $classification->id ? "selected":"") }}>
                                        {{ $classification->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50 select-chosen" multiple data-placeholder="Seleccione un Área de Especialización" name="workareas[]">
                                @foreach ($work_areas as $work_area)
                                    <option value="{{ $work_area->id }}" class="text--light-blue-50" {{ (old("work_area_id") == $work_area->id ? "selected":"") }}>
                                        {{ $work_area->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50" name="country_id">
                                <option value="" class="text--light-blue-50">Seleccione un país</option>
                                @foreach ($countries as $country)
                                    <option value="{{ $country->id }}" class="text--light-blue-50" {{ (old("country_id") == $country->id ? "selected":"") }}>
                                        {{ $country->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div>
                            <input type="file" style="cursor:pointer" name="image" class="dib absolute overflow-hidden o-0 f5 fw4 bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">
                            <label for="" style="cursor:pointer" class="dib f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Subir Logo</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white pa3">
                <h2 class="text--blue fw4 f3">Datos del solicitante</h2>
                <div class="cf">
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Nombre del solicitante*" name="applicant" value="{{ old('applicant') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Institución*" name="institution" value="{{ old('institution') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" type="text" placeholder="Cargo*" name="position" value="{{ old('position') }}">
                    </div>
                </div>
                <div class="tr mt4 mb3">
                    <button type="submit" class="f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Enviar</button>
                </div>
            </div>
        </div>
    </section>
@endsection
