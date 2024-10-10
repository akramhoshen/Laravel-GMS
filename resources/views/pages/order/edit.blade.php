@extends('layouts.app')

@section('page')
{!! Page::body_open() !!}
{!! Page::content_open(["title"=>"Edit Order","button"=>"Manage Order","route"=>url("orders")]) !!}
@if($message = Session::get('success'))
    <div class="alert alert-success alert-block">
        <strong>{{$message}}</strong>
    </div>
@endif

{!! Form::open_laravel(["route"=>"orders/$order->id","method"=>"PUT"]) !!}

{!! Page::content_body() !!}

{!! Form::select(["label"=>"Buyer","name"=>"buyer_id","value"=>$order->buyer_id,"table"=>$buyer]) !!}
@if($errors->has('buyer_id'))
    <span class='text-danger'>{{$errors->first('buyer_id')}}</span>
@endif

{!! Form::select1(["label"=>"Style","name"=>"style_id","value"=>$order->style_id,"table"=>$style]) !!}
@if($errors->has('style_id'))
    <span class='text-danger'>{{$errors->first('style_id')}}</span>
@endif

{!! Form::text(["name"=>"order_date","label"=>"Order Date","type"=>"date","value"=>old('order_date',$order->order_date)]) !!}
@if($errors->has('order_date'))
    <span class='text-danger'>{{$errors->first('order_date')}}</span>
@endif

{!! Form::text(["name"=>"delivery_date","label"=>"Delivery Date","type"=>"date","value"=>old('delivery_date',$order->delivery_date)]) !!}
@if($errors->has('delivery_date'))
    <span class='text-danger'>{{$errors->first('delivery_date')}}</span>
@endif

{!! Form::text(["name"=>"shipping_address","label"=>"Shipping Address","value"=>old('shipping_address',$order->shipping_address)]) !!}
@if($errors->has('shipping_address'))
    <span class='text-danger'>{{$errors->first('shipping_address')}}</span>
@endif


{!! Form::select(["label"=>"Status","name"=>"status_id","value"=>$order->status_id,"table"=>$status]) !!}
@if($errors->has('status_id'))
    <span class='text-danger'>{{$errors->first('status_id')}}</span>
@endif

{!! Form::text(["name"=>"order_total","label"=>"Order Total","value"=>old('order_total',$order->order_total)]) !!}
@if($errors->has('order_total'))
    <span class='text-danger'>{{$errors->first('order_total')}}</span>
@endif

{!! Form::text(["name"=>"paid_amount","label"=>"Paid Total","value"=>old('paid_amount',$order->paid_amount)]) !!}
@if($errors->has('paid_amount'))
    <span class='text-danger'>{{$errors->first('paid_amount')}}</span>
@endif

{!! Form::text(["name"=>"remark","label"=>"Remark","value"=>old('remark',$order->remark)]) !!}
@if($errors->has('remark'))
    <span class='text-danger'>{{$errors->first('remark')}}</span>
@endif

{!! Form::text(["name"=>"discount","label"=>"Discount","value"=>old('paid_amount',$order->discount)]) !!}
@if($errors->has('discount'))
    <span class='text-danger'>{{$errors->first('discount')}}</span>
@endif

{!! Form::text(["name"=>"vat","label"=>"Vat","value"=>old('vat',$order->vat)]) !!}
@if($errors->has('vat'))
    <span class='text-danger'>{{$errors->first('vat')}}</span>
@endif

{!! Page::content_body_close() !!}

{!! Page::content_footer() !!}

{!! Form::button(["name"=>"btnSubmit","type"=>"submit","value"=>"Update"]) !!}

{!! Page::content_footer_close() !!}

{!! Form::close() !!}

{!! Page::content_close() !!}
{!! Page::body_close() !!}

@endsection