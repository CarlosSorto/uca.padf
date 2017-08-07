<?php

namespace App\Http\Controllers;

use App\Classification;
use App\Country;
use App\Document;
use App\Formation;
use App\Organization;
use App\Topic;
use App\WorkArea;

class SiteController extends Controller
{
    protected $formation;
    protected $document;
    protected $organization;
    protected $country;
    protected $topic;
    protected $classification;
    protected $workArea;

    public function __construct(
            Formation $formation,
            Document $document,
            Organization $organization,
            Country $country,
            Topic $topic,
            Classification $classification,
            WorkArea $workArea)
    {
        $this->formation      = $formation;
        $this->document       = $document;
        $this->organization   = $organization;
        $this->country        = $country;
        $this->topic          = $topic;
        $this->classification = $classification;
        $this->workArea       = $workArea;
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

    public function create_document()
    {
        $countries     = $this->country->all();
        $topics        = $this->topic->all();
        $organizations = $this->organization->all();

        return view('site.forms.document', compact('countries', 'topics', 'organizations'));
    }

    public function organizations()
    {
        return view('site.organizations');
    }

    public function organization(Organization $organization)
    {
        return view('site.details.organization', compact('organization'));
    }

    public function create_organization()
    {
        $classifications = $this->classification->all();
        $work_areas      = $this->workArea->all();
        $countries       = $this->country->all();

        return view('site.forms.organization', compact('classifications', 'work_areas', 'countries'));
    }

    public function formations()
    {
        return view('site.formations');
    }

    public function formation(Formation $formation)
    {
        return view('site.details.formation', compact('formation'));
    }

    public function create_formation()
    {
        return view('site.forms.formation');
    }

    public function contact()
    {
        return view('site.contact');
    }
}
