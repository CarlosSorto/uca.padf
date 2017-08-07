@extends('layouts.site')

@section('content')
<form method="post" action="{{ route('document.store') }}" enctype="multipart/form-data">
    {{ csrf_field() }}
    <section class="pt6-l pt6 pb5 bg--light-blue">
        <div class="w-60-l w-80 center mt5">
            <h1 class="text--blue fw4 f2">Registro de Documentos</h1>
            <div class="bg-white pa3 mb5">
                <h2 class="text--blue fw4 f3">Datos de documento</h2>
                <div class="cf">
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <input id="title" class="input-reset f-input bn pa2 mb2 db w-100" name="title" type="text" placeholder="Título*" value="{{ old('title')}}">
                        </div>
                        <div class="mb4">
                            <input id="author" class="input-reset f-input bn pa2 mb2 db w-100" name="author" type="text" placeholder="Autor*" value="{{ old('author')}}">
                        </div>
                        <div class="mb4">
                            <input id="published_date" class="input-reset f-input bn pa2 mb2 db w-100" name="published_date" type="text" placeholder="Fecha de Publicación*" value="{{ old('published_date')}}">
                        </div>
                        <div class="mb4">
                            <input id="description" class="input-reset f-input bn pa2 mb2 db w-100" name="description" type="text" placeholder="Descripción*" value="{{ old('description')}}">
                        </div>
                        <div class="mb4">
                            <textarea name="long_description" cols="30" rows="5" class="f-textarea w-100 bo--light-blue-50" placeholder="Descripción Larga*" >
                                {{ old('long_description') }}
                            </textarea>
                        </div>
                    </div>
                    <div class="fl w-100 w-50-ns ph3">
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50" name="country_id">
                                <option value="" class="text--light-blue-50">Seleccione un País</option>
                                @foreach ($countries as $country)
                                    <option value="{{ $country->id }}" class="text--light-blue-50" {{ (old("country_id") == $country->id ? "selected":"") }}>
                                        {{ $country->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50" name="topic_id">
                                <option value="" class="text--light-blue-50">Selecciones una Categorización temática</option>
                                @foreach ($topics as $topic)
                                    <option value="{{ $topic->id }}" class="text--light-blue-50">
                                        {{ $topic->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <select class="w-100 f-select text--light-blue-50" name="organization_id">
                                <option value="" class="text--light-blue-50">Selecciones una Organización</option>
                                @foreach ($organizations as $organization)
                                    <option value="{{ $organization->id }}" class="text--light-blue-50" {{ (old("organization_id") == $organization->id ? "selected":"") }}>
                                        {{ $organization->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb4">
                            <input id="words" class="input-reset f-input bn pa2 mb2 db w-100" name="keywords" type="text" placeholder="Palabras clave*" value="{{ old('keywords') }}">
                        </div>
                        <div class="tr mt5">
                            <input type="file" name="file" style="cursor:pointer" class="dib absolute overflow-hidden o-0 f5 fw4 bo--purple link ba bw1 pv2  text--purple hover-bg--purple hover-white bg-animate" value="{{ old('file') }}">
                            <label for="" style="cursor:pointer" class="dib f5 fw4 bo--purple link ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Subir Documento</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-white pa3">
                <h2 class="text--blue fw4 f3">Datos de documento</h2>
                <div class="cf">
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" name="name_applicant" type="text" placeholder="Nombre del solicitante*" value="{{ old('name_applicant') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" name="institution" type="text" placeholder="Institución*" value="{{ old('institution') }}">
                    </div>
                    <div class="fl w-100 w-third-ns pa2">
                        <input class="input-reset f-input bn pa2 mb2 db w-100" name="position" type="text" placeholder="Cargo*" value="{{ old('position') }}">
                    </div>
                </div>
                <div class="tr mt4 mb3">
                    <button type="submit" class="f5 fw4 bo--purple ba bw1 pv2 ph5 text--purple hover-bg--purple hover-white bg-animate">Enviar</button>
                </div>
            </div>
        </div>
    </section>
</form>
@endsection