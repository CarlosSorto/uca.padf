@extends('layouts.site')

@section('content')
    <section class="pt6-l pt5">
        <div class="img-cover relative mt3">
            <img src="storage/{{ $cover->get('formacion')->image }}" alt="Formaciones" width="100%" class="h-75">
            <div class="img-overlay h-75"></div>
            <div class="text-overlay pl6-l pl4">
                <h1 class="white ttu fw5 f1-l f3 mb0">{{ $cover->get('formacion')->title }}</h1>
                <hr class="ba bw1 w-50" align="left">
                <p class="mw6 lh-copy f5 dn db-l">
                    {{ $cover->get('formacion')->description }}
                </p>
            </div>
        </div>
    </section>
    {!! $content->get('formacion_introduccion') !!}
    <formations :modalities="{{ $modalities }}" :types="{{ $types }}"></formations>
@endsection
