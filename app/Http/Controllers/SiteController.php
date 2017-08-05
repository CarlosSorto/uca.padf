<?php

namespace App\Http\Controllers;

use App\Document;
use App\Formation;
use App\Organization;

class SiteController extends Controller
{
    protected $formation;
    protected $document;
    protected $organization;

    public function __construct(
        Formation $formation,
        Document $document,
        Organization $organization)
    {
        $this->formation     = $formation;
        $this->document      = $document;
        $this->organization  = $organization;
    }

    public function home()
    {
        $formations    = $this->formation->where('active', 1)->limit(6)->get();
        $documents     = $this->document->where('active', 1)->limit(6)->get();
        $organizations = $this->organization->where('active', 1)->limit(6)->get();

        return view('site.home', compact('formations', 'documents', 'organizations'));
    }

    public function about()
    {
        return view('site.about');
    }

    public function repositories()
    {
        return view('site.repositories');
    }

    public function document(Document $document)
    {
        return view('site.details.document', compact('document'));
    }

    public function organizations()
    {
        return view('site.organizations');
    }

    public function organization(Organization $organization)
    {
        return view('site.details.organization', compact('organization'));
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
