@extends('layouts.site')

@section('content')
    <section class="pt6-l pt5">
        <div class="img-cover relative mt3">
            <img src="storage/{{ $cover->get('organizaciones-afiliadas')->image }}" alt="Organizaciones" width="100%" class="h-75">
            <div class="img-overlay h-75"></div>
            <div class="text-overlay pl6-l">
                <h1 class="white ttu fw5 f1-l f3 mb0">{{ $cover->get('organizaciones-afiliadas')->title }}</h1>
                <hr class="ba bw1 w-50" align="left">
                <p class="mw6-l lh-copy f5 dn db-l">
                    {{ $cover->get('organizaciones-afiliadas')->description }}
                </p>
            </div>
        </div>
    </section>
    {!! $content->get('organizaciones_introduccion') !!}
    <organizations></organizations>
@endsection
