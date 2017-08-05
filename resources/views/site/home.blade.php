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
    <section id="documents" class="pv4">
        <div class="img-cover relative dn db-l">
            <img src="images/documents.jpg" alt="" class="w-100 h5">
            <div class="img-overlay"></div>
            <h1 class="white text-overlay">Nueva Documentación <br>Disponible</h1>
        </div>

        <h1 class="text--blue db dn-l mh5 f2 fw4">Nueva Documentación Disponible</h1>

        <div class="mw9-l mw7 center ph3-ns mt5">
            <div class="cf ph2-ns">
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
                <div class="fl w-50-m w-third-ns w-100 ph5">
                    <div class="relative pl5">
                        <span class="icon-pdf f1 silver ma1 absolute top-0 left-0"></span>
                        <h3 class="f4 fw5 text--blue">Visión sociológica del hombre latinoamericano</h3>
                        <p class="silver f6">Ellacuría, Ignacio, 1930-1989</p>
                    </div>
                    <div class="mv4">
                        <a href="#" class="f5 fw4 db tc bo--purple link ba bw1 pv2 text--purple hover-bg--purple hover-white bg-animate">Ver más</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="tc mb5 w-70 center">
            <a href="repositorio-ddhh.html" class="f4 fw4 db tc center link ba bw1 white bo--blue text--blue mt5 pv3 w-30-ns w-100 hover-white hover-bg--blue">Ver más documentos</a>
        </div>
    </section>
@endsection
