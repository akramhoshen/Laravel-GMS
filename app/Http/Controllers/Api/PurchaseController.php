<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use App\Models\Purchase;
use App\Models\PurchaseDetail;
use App\Models\WareHouse;
use App\Models\Vendor;
use App\Models\RawMaterial;
use App\Models\PurchaseStatus;

use Illuminate\Support\Facades\Http;

class PurchaseController extends Controller
{
    
    public function index()
    {        
        // $orders=DB::table("orders as o")  
        // ->join("customers as c","c.id","=","o.customer_id")
        // ->select("o.id","c.name as customer","c.mobile","o.order_date as date","o.shipping_address","o.order_total")
        // ->paginate(10);
        // return view("pages.order.index",["orders"=>$orders]);
        return response()->json(Purchase::get());
    }

    
    public function create(){

        $vendor = Vendor::get();
        $status = PurchaseStatus::get();
        $warehouse = WareHouse::get();
        $rawmaterial = RawMaterial::get();

       // print_r($customers);
        return view("pages.order.create",["vendor"=>$vendor,"warehouse"=>$warehouse,"rawmaterial"=>$rawmaterial,"status"=>$status]);
    }


    public function store(Request $request){
         
        //Order
           $purchase=new Purchase;

           $purchase->vendor_id = $request->vendor_id;
           $purchase->purchase_date = $request->purchase_date;
           $purchase->delivery_date = $request->delivery_date;
           $purchase->purchase_status_id = $request->purchase_status_id;
           $purchase->total = $request->total;
           $purchase->paid_amount = $request->paid_amount;
           $purchase->remark = isset($request->remark)?$request->remark:"NA";
           $purchase->discount = isset($request->discount)?$request->discount:0;
           $purchase->vat = isset($request->vat)?$request->vat:"0";
           
           $purchase->save();
         
        // Order Details
        $row_materials = $request->row_materials; 
        
        foreach($row_materials as $rm){         
           
            $purchase_detail=new PurchaseDetail;         

            $purchase_detail->purchase_id = $purchase->id;
            $purchase_detail->raw_material_id = $rm["raw_material_id"];
            $purchase_detail->qty = $rm["qty"];
            $purchase_detail->price = $rm["price"];            
            $purchase_detail->discount = isset($rm["discount"])?$rm["discount"]:0;
            $purchase_detail->vat = 0;

            $purchase_detail->save();
      }

        return response()->json('Successfully Created');
        
         //Stock

    }

    
    public function show(string $id)
    {
        // return json_encode(Order::find($id));
        // $customer=DB::Table("customers")->where("id",$order->customer_id)->first();

        // $products=DB::Table("order_details as od")
        // ->join("products as p","p.id","=","od.product_id")
        // ->select("p.name","od.price","od.qty","od.discount")
        // ->where("od.order_id",$order->id)
        // ->get();

        // //print_r($customer->name);

        // return view("pages.order.show",["order"=>$order,"customer"=>$customer,"products"=>$products]);
    }

    
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy(Purchase $purchase)
    {  
        $purchase->delete();
    }
}
