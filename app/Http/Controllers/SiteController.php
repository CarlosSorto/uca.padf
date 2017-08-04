<?php

namespace App\Http\Controllers;

use App\Formation;

class SiteController extends Controller
{
    protected $formation;

    public function __construct(Formation $formation)
    {
        $this->formation = $formation;
    }

    public function home()
    {
        $formations = $this->formation->where('active', 1)->limit(6)->get();

        return view('site.home', compact('formations'));
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

    public function formation(Formation $formation)
    {
        return view('site.details.formation', compact('formation'));
    }

    public function contact()
    {
        return view('site.contact');
    }
}
