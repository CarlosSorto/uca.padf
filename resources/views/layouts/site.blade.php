<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ Voyager::setting('title') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/main.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        @include('partials.navbar')
        @yield('content')
        @include('partials.footer')
    </div>

    <!-- Scripts -->
    @if (request()->is('contactenos'))
        <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 15,
                center: { lat: 13.681189, lng: -89.235058}
            });

            var marker = new google.maps.Marker({
                position: map.getCenter(),
                icon: './storage/settings/bWyKxsQdWBVnkJlXGKIVNosBrOwE7p2UiGDT5tJw.png',
                map: map
            });
        }
        </script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBSyxQcRGp-u1hiUl7iAu71dEBhr4Acz2s&callback=initMap">
        </script>
    @endif
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    <script src="{{ asset('js/vendor.js') }}"></script>
</body>
</html>
