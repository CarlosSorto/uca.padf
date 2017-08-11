@extends('layouts.site')

@section('content')
    <section class="pt-header pt-header-l">
        <div class="img-cover relative">
            <img src="storage/{{ $cover->get('contactenos')->image }}"
                 alt="Contactenos"
                 width="100%"
                 class="db">
            <div class="img-overlay"></div>
            <div class="text-overlay-l dn db-l">
                <h1 class="white ttu fw5 f1 mb0 mw6">
                    {{ $cover->get('contactenos')->title }}
                </h1>
                <hr class="ba bw1 w-50" align="left">
                <p class="mw6 lh-copy f5 dn db-l">
                    {{ $cover->get('contactenos')->description }}
                </p>
            </div>
            <div class="text-overlay dn-l db">
                <h1 class="white ttu fw5 f1-l f3 mb0">{{ $cover->get('contactenos')->title }}</h1>
            </div>
        </div>
    </section>
    <form method="post">
        <section class="pv4">
            <div class="center w-30-l w-80">
                <span class="icon-mail f1 silver"></span>
                <h1 class="f2 fw3 text--blue mt3">Escríbenos</h1>
                <div class="mb4">
                    <label for="name" class="f6 b db mb2 fw4 text--light-blue-50" required>Nombre *</label>
                    <input id="name" class="input-reset f-input bn pa2 mb2 db w-100" type="text" aria-describedby="name-desc">
                </div>
                <div class="mb4">
                    <label for="name" class="f6 b db mb2 fw4 text--light-blue-50" required>Correo Electrónico *</label>
                    <input id="name" class="input-reset f-input bn pa2 mb2 db w-100" type="text" aria-describedby="name-desc">
                </div>
                <div class="mb4">
                    <label for="name" class="f6 b db mb2 fw4 text--light-blue-50" required>Teléfono *</label>
                    <input id="name" class="input-reset f-input bn pa2 mb2 db w-100" type="text" aria-describedby="name-desc">
                </div>
                <div class="mb4">
                    <label for="name" class="f6 b db mb2 fw4 text--light-blue-50" required>Mensaje *</label>
                    <textarea cols="30" rows="5" class="f-textarea w-100 bo--light-blue-50"></textarea>
                </div>
                <div class="tc">
                    <button type="submit" class="f5 fw4 center ph5 bo--purple link ba bw1 pv2 hover-bg-white hover-text--purple bg--purple white">Enviar</button>
                </div>
            </div>
        </section>
    </form>
    <section class="pt6">
          <div class="cf">
            <div class="fl w-100 w-50-ns">
                <div class="bg--purple pv4 bn" style="height: 22rem">
                    <div class="mh5 w-30-l w-80 center">
                        <div class="white relative pl4 mb4">
                            <span class="icon-map mt4 f4 absolute top-0 left-0"></span>
                            <p>Dirección</p>
                            <p class="fw3 f6 lh-copy">{{ app('voyager')->setting('contact_direction') }}</p>
                        </div>
                        <div class="white relative pl4 mb4">
                            <span class="icon-mail mt2 f4 absolute top-0 left-0"></span>
                            <p>Correo Electrónico</p>
                            <p class="fw3 f6">{{ app('voyager')->setting('contact_email') }}</p>
                        </div>
                        <div class="white relative pl4">
                            <span class="icon-phone mt2 f4 absolute top-0 left-0"></span>
                            <p>Teléfono</p>
                            <p class="fw3 f6">{{ app('voyager')->setting('contact_email') }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fl w-100 w-50-ns">
                <div class="bg-white w-100 h5" id="map" style="height: 22rem">
                </div>
            </div>
        </div>
    </section>
@endsection
