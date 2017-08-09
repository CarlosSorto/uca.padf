<?php

namespace App\Http\Controllers;

use App\Formation;
use App\Http\Requests\FormationRequest;
use Illuminate\Http\Request;

class FormationsController extends Controller
{
    protected $formation;

    public function __construct(Formation $formation)
    {
        $this->formation = $formation;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(FormationRequest $request)
    {
        $this->formation->fill($request->all());
        // dd($this->formation);
        if ($this->formation->save()) {
            return redirect()->route('formations');
        }

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Formation $formation
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Formation $formation)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Formation $formation
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Formation $formation)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Formation           $formation
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Formation $formation)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Formation $formation
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Formation $formation)
    {
    }
}
