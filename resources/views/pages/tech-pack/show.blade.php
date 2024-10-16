@extends('layouts.app')

@section('page')
<style>
.px-3.py-1.bg-light {
    background: #c6d9ff!important;
}
.card.rounded-0.shadow-none.border.h-100 {
    border-radius: 0!important;
    box-shadow: none!important;
}
.card.bg-transparent.rounded-0.shadow-none{
    border-radius: 0!important;
    box-shadow: none!important;
}
.header-text p{
    font-size: 14px;
    margin-bottom: 3px!important;
}
.header-text h6{
    font-weight: bolder;
}
.px-3.py-1.bg-light h5{
    font-weight: bold;
}
</style>
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header" style="background-color: #c6d9ff;">
                    <div class="w-100 d-flex justify-content-between align-items-center">
                        <h4 class="m-0" style="font-size:21px; color:#012970; font-weight: 600;">Tech Pack Details</h4>
                        <a href="{{url('styles')}}" class="btn btn-success my-primary-btn">Manage Style</a>
                    </div>
                </div>
                <div class="card-body" id="printableArea">
                    <h4 class="text-center text-uppercase color-default"><strong>Tech Pack #{{$style->id}}</strong></h4>
                    <div class="row header-text">
                        <div class="col-4 border">
                            <p class="mb-0">Style Code:</p>
                            <h6 class="text-dark">{{$style->code}}</h6>
                        </div>
                        <div class="col-4 border">
                            <p class="mb-0">Style Category:</p>
                            <h6 class="text-dark">{{$style->style_category}}</h6>
                        </div>
                        <div class="col-4 border">
                            <p class="mb-0">Style Details:</p>
                            <h6 class="text-dark">{{$style->description}}</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 p-0">
                            <div class="card rounded-0 shadow-none border h-100">
                                <div style="background-color: #c6d9ff;" class="px-3 py-1 bg-light">
                                    <h5 class="pt-2">Fabrication</h5>
                                </div>
                                <div class="px-3 pt-2">
                                    <table class="table">
                                        <tbody>
                                        @if($fabrics->isNotEmpty())
                                            @foreach($fabrics as $fabric)
                                            <tr>
                                                <td>
                                                    <strong>{{$fabric->name}}</strong>
                                                    <br />
                                                    {{$fabric->description}}
                                                </td>
                                                <td>
                                                    <img alt="image" class="shadow p-1 rounded border bg-secondary" src="{{ asset('img/'.$fabric->photo) }}" width="50" />
                                                </td>
                                            </tr>
                                            @endforeach
                                        @else
                                            <div class="text-center text-muted py-3">
                                                No records found.
                                            </div>
                                        @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 p-0">
                            <div class="card rounded-0 shadow-none border h-100">
                                <div class="px-3 py-1 bg-light">
                                    <h5 class="pt-2">Trim</h5>
                                </div>
                                <div class="px-3 pt-2">
                                    <table class="table">
                                        <tbody>
                                        @if($trims->isNotEmpty())
                                            @foreach($trims as $trim)
                                            <tr>
                                                <td>
                                                    <strong>Trim Category: {{$trim->trim}}</strong>
                                                    <br />
                                                    {{$trim->description}}
                                                </td>
                                                <td>
                                                    <img alt="image" class="shadow p-1 rounded border bg-secondary" src="{{ asset('img/'.$trim->photo) }}" width="65" />
                                                </td>
                                            </tr>
                                            @endforeach
                                        @else
                                            <div class="text-center text-muted py-3">
                                                No records found.
                                            </div>
                                        @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 p-0">
                            <div class="card rounded-0 shadow-none border h-100">
                                <div class="px-3 py-1 bg-light">
                                    <h5 class="pt-2">Sketch</h5>
                                </div>
                                <div class="px-3 pt-2">
                                    <div class="row">
                                    @if($attachments->isNotEmpty())
                                        @foreach($attachments as $attachment)
                                        <div class="col-xl-4 col-md-6 my-2 mx-auto text-center">
                                            <div class="card bg-transparent rounded-0 shadow-none">
                                                <strong><u>{{$attachment->name}}</u></strong>
                                                <br />
                                                <img alt="image" class="img-fluid mx-auto" src="{{ asset('img/'.$attachment->photo) }}" />
                                            </div>
                                        </div>
                                        @endforeach
                                    @else
                                        <div class="text-center text-muted py-3">
                                            No records found.
                                        </div>
                                    @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 p-0">
                            <div class="card rounded-0 shadow-none border h-100">
                                <div class="px-3 py-1 bg-light">
                                    <h5 class="pt-2">Measurement (in inch)</h5>
                                </div>
                                <div class="">
                                    @if(!empty($mssizes_data))
                                    <table class="table table-bordered">
                                        <thead class="border-bottom">
                                            <tr>
                                                <th>Code</th>
                                                <th>Name</th>
                                                <th class="text-center">Tolerance (+/-)</th>
                                                @if($has_xxs) <th>XXS</th> @endif
                                                @if($has_xs)  <th>XS</th>  @endif
                                                @if($has_s)   <th>S</th>   @endif
                                                @if($has_m)   <th>M</th>   @endif
                                                @if($has_l)   <th>L</th>   @endif
                                                @if($has_xl)  <th>XL</th>  @endif
                                                @if($has_xxl) <th>XXL</th> @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @php $i = 1; @endphp
                                        @foreach ($mssizes_data as $code => $row)
                                        @php $bgcolor = ($i % 2 == 0) ? "#E9F3FF" : "#FFFFFF";
                                        $style = "background-color: " . htmlspecialchars($bgcolor) . ";";
                                        @endphp
                                            <tr onClick="change_row_color('tr_{{ $i }}', '{{ $bgcolor }}')" id="tr_{{ $i }}">
                                                <td style="{{$style}}">{{$code}}</td>
                                                <td style="{{$style}}">{{$row['name']}}</td>
                                                <td style="{{$style}}" class="text-center">{{$row['tolerance']}}</td>
                                                @if($has_xxs) <td style="{{$style}}">{{ $row['size_xxs'] ?? '' }}</td> @endif
                                                @if($has_xs)  <td style="{{$style}}">{{ $row['size_xs'] ?? '' }}</td>  @endif
                                                @if($has_s)   <td style="{{$style}}">{{ $row['size_s'] ?? '' }}</td>   @endif
                                                @if($has_m)   <td style="{{$style}}">{{ $row['size_m'] ?? '' }}</td>   @endif
                                                @if($has_l)   <td style="{{$style}}">{{ $row['size_l'] ?? '' }}</td>   @endif
                                                @if($has_xl)  <td style="{{$style}}">{{ $row['size_xl'] ?? '' }}</td>  @endif
                                                @if($has_xxl) <td style="{{$style}}">{{ $row['size_xxl'] ?? '' }}</td> @endif
                                            </tr>
                                            @php $i++; @endphp
                                        @endforeach
                                        </tbody>
                                    </table>
                                    @else
                                        <div class="text-center text-muted py-3">
                                            No records found.
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-primary" onclick="printDiv('printableArea')"><i class="fas fa-print mr-2"></i> Print</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}
</script>
@endsection