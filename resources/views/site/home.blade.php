@extends('layouts.site')

@section('content')
    <section class="h-25 pt6-l pt5" id="carousel">
        <div class="owl-carousel owl-theme mt3" id="owl-header">
            <div class="">
                <img class="owl-lazy relative" data-src="{{ $cover->get('inicio')->image }}" alt="">
                <div class="img-overlay"></div>
                <h1 class="white text-overlay ttu f-subheadline-l f3 lh-solid fw5 left w-50-l pl6">{{ $cover->get('inicio')->title }}</h1>
            </div>
        </div>
    </section>
    {!!$content->get('welcome_home') !!}
    <section class="bg--light-blue" id="latest-formation">
        <div class="pv5 w-70-l w-80 center">
            <h1 class="text--blue fw4 f2 mh3">Últimas Actividades <br>
                Formativas</h1>
                <div class="owl-carousel owl-theme" id="owl-formation">

                    @foreach ($formations as $formation)
                        <div class="ba bg-white b--black-10 mv4 w-100 mw6 center pa4 h6 shadow-5">
                            <h4 class="fw6 text--blue f5">{{ $formation->title }}</h4>
                            <p class="lh-copy f6 h3-l h5">{{ str_limit($formation->description, 125) }}</p>
                            <p class="text--light-blue-50 f6 mv4"><span class="{{ $formation->modality->icon }}"></span> {{ $formation->modality->name }}</p>
                            <a href="{{ route('formation', $formation->id) }}" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ir a Capacitación</a>
                        </div>
                    @endforeach
                </div>
                <div class="tc">
                    <a href="{{ route('formations') }}" class="f4 fw4 db tc center link ba bw1 white bo--blue text--blue mt5 pv3 w-30-l w-80-m w-100 hover-white hover-bg--blue">Ver listado completo</a>
                </div>
        </div>
    </section>
@endsection
