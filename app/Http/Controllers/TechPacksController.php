<?php

namespace App\Http\Controllers;

use App\Models\MeasurementSize;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Style;
use App\Models\Size;
use App\Models\Mesurment;
use App\Models\Fabric;

use function Termwind\style;

class TechPacksController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $mtsize = DB::table('measurement_sizes as ms')
        ->join('styles as s','s.id','=','ms.style_id')
        ->join('mesurments as m','m.id','=','ms.measurement_id')
        ->join('sizes as si','si.id','=','ms.size_id')
        ->select('ms.id','s.code as style','m.name as measurement_name','si.name as size','ms.measurement')
        ->paginate(8);
        return view("pages.tech-pack.index",['mtsize'=>$mtsize]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(){
        $style = style::all();
        $size = Size::all();
        $measurement = Mesurment::all();
        return view("pages.measurement_size.create",['style'=>$style,'size'=>$size,'measurement'=>$measurement]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'code'=>'required|string',
        //     'StyleCategoryId' => 'required|exists:style_categories,id',
        //     'description'=>'required|string'
        // ]);

        $style = new MeasurementSize;
        $style->style_id = $request->styleId;
        $style->measurement_id = $request->measurementId;
        $style->size_id = $request->sizeId;
        $style->measurement = $request->measurement;

        $style->save();
        
        return back()->with('success','Created Successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // $style = Style::where('id',$id)->first();
        $style = DB::table('styles as st')
        ->join('style_categories as sc', 'sc.id', '=', 'st.style_category_id')
        ->select('st.id', 'st.code', 'sc.name as style_category', 'st.description')
        ->where('st.id', $id)
        ->first();

        $fabrics = DB::table('fabrics as f')
        ->join('styles as st', 'st.id', '=', 'f.style_id')
        ->select('f.name','f.description','f.photo')
        ->where('st.id', $id)
        ->get();

        $trims = DB::table('style_trims as st')
        ->join('styles as s', 's.id', '=', 'st.style_id')
        ->join('trims as t', 't.id', '=', 'st.trim_id')
        ->select('st.id','t.name as trim','st.description','st.photo')
        ->where('s.id', $id)
        ->get();

        $attachments = DB::table('measurement_attachments as m')
        ->join('styles as s', 's.id', '=', 'm.style_id')
        ->select('m.id','m.name','m.photo')
        ->where('s.id', $id)
        ->get();

        $mssizes = DB::table('measurement_sizes as ms')
        ->join('styles as s', 's.id', '=', 'ms.style_id')
        ->join('mesurments as m', 'm.id', '=', 'ms.measurement_id')
        ->join('sizes as sz', 'sz.id', '=', 'ms.size_id')
        ->select('ms.id','m.code as code','m.name as name','m.tolerance','ms.measurement','sz.id as size_id') //ms.id, m.code, m.name, m.tolerance, ms.measurement, sz.id as size_id
        ->where('s.id', $id)
        ->get();
        
        //echo "<pre>"; print_r($mssizes); echo "</pre>";

        $mssizes_data = [];
        $has_xxs = $has_xs = $has_s = $has_m = $has_l = $has_xl = $has_xxl = false;

        foreach ($mssizes as $row)  //make each measurement size row
        {
            $mssizes_data[$row->code]['code']      = $row->code;
            $mssizes_data[$row->code]['name']      = $row->name;
            $mssizes_data[$row->code]['tolerance'] = $row->tolerance;

            if ($row->size_id == 1) {
                $mssizes_data[$row->code]['size_xxs'] = $row->measurement;
                $has_xxs = true;
            } elseif ($row->size_id == 2) {
                $mssizes_data[$row->code]['size_xs']  = $row->measurement;
                $has_xs = true;
            } elseif ($row->size_id == 3) {
                $mssizes_data[$row->code]['size_s']   = $row->measurement;
                $has_s = true;
            } elseif ($row->size_id == 4) {
                $mssizes_data[$row->code]['size_m']   = $row->measurement;
                $has_m = true;
            } elseif ($row->size_id == 5) {
                $mssizes_data[$row->code]['size_l']   = $row->measurement;
                $has_l = true;
            } elseif ($row->size_id == 6) {
                $mssizes_data[$row->code]['size_xl']  = $row->measurement;
                $has_xl = true;
            } elseif ($row->size_id == 7) {
                $mssizes_data[$row->code]['size_xxl'] = $row->measurement;
                $has_xxl = true;
            }
        }

        return view('pages.tech-pack.show', [
            'style'       => $style,
            'fabrics'     => $fabrics,
            'trims'       => $trims,
            'attachments' => $attachments,
            'mssizes_data'=> $mssizes_data,
            'has_xxs'     => $has_xxs,
            'has_xs'      => $has_xs,
            'has_s'       => $has_s,
            'has_m'       => $has_m,
            'has_l'       => $has_l,
            'has_xl'      => $has_xl,
            'has_xxl'     => $has_xxl
        ]);

        //return view("pages.tech-pack.show",['style'=>$style,'fabrics'=>$fabrics,'trims'=>$trims,'attachments'=>$attachments,'mssizes'=>$mssizes]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $mtsize = MeasurementSize::where('id',$id)->first();
        $style = style::all();
        $size = Size::all();
        $measurement = Mesurment::all();
        return view("pages.measurement_size.edit",['mtsize'=>$mtsize,'style'=>$style,'size'=>$size,'measurement'=>$measurement]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // $request->validate([
        //     'code'=>'required|string',
        //     'StyleCategoryId' => 'required|exists:style_categories,id',
        //     'description'=>'required|string'
        // ]);

        $style = MeasurementSize::where('id',$id)->first();
        $style->style_id = $request->styleId;
        $style->measurement_id = $request->measurementId;
        $style->size_id = $request->sizeId;
        $style->measurement = $request->measurement;

        $style->update();
        
        return back()->with('success','Updated Successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $style = MeasurementSize::where('id',$id)->first();
        $style->delete();

        return back()->with('success','Deleted Successfully.');
    }
}
