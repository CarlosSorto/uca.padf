<?php

namespace App\Http\Controllers;

class SiteController extends Controller
{
    public function home()
    {
        return view('site.home');
    }

    public function about()
    {
        return view('site.about');
    }

    public function repositories()
    {
        return view('site.repositories');
    }

    public function organizations()
    {
        return view('site.organizations');
    }

    public function formations()
    {
        return view('site.formations');
    }

    public function contact()
    {
        return view('site.contact');
    }
}
