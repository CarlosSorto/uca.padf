<?php

namespace App\Http\Controllers;

use App\Document;
use App\Http\Requests\DocumentRequest;
use Illuminate\Http\Request;

class DocumentsController extends Controller
{
    protected $document;

    public function __construct(Document $document)
    {
        $this->document = $document;
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
    public function store(DocumentRequest $request)
    {
        $this->document->fill($request->all());
        if ($request->file('file')) {
            $name                 = uniqid().'.'.$request->file->extension();
            $path                 = $request->file->storeAs('documents', $name, 'public');
            $this->document->file = $path;
        }

        if ($this->document->save()) {
            return redirect(route('repositories'));
        }

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Document $document
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Document $document)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Document $document
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Document            $document
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Document $document
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
    }
}
