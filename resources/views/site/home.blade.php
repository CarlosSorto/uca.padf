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
    {!!$page->content('inicio') !!}
@endsection
