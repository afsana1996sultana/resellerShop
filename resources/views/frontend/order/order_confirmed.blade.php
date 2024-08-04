@extends('layouts.frontend')
@push('css')
	<style>
    .thankyou-card {
    padding: 40px;
    background: #fbfbfb;
    box-shadow: 0px 1px 31px rgba(0, 0, 0, 0.10);
    margin: 40px 0;
}
	</style>
@endpush
@section('content-frontend')
<div class="main">
    <section class="home-content-layout">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="{{ route('home') }}" rel="nofollow"><i class="fi-rs-home mr-5"></i>Home</a>
                    <span></span> Account
                    <span></span> Order View
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-12 thankyou-card">
                    <div class="text-center">
                        <h1>
                            Thank you for your order <span style="color: #1daa4a;">#{{ $order->invoice_no }}</span>
                        </h1>
                        <h4 class="mt-3">we'll let you know when your items are on their way</h4>
                    </div>
                    <hr>
                    <div class="text-center" style="margin-top: 30px">
                        <h4 class="mb-5">Payment Details</h4>
                        <div class="col-12">
                            <p>Total Amount: <span style="color: #1daa4a; font-size: 20px">{{ ($order->grand_total-$order->discount) ?? ' '}}</span></p>
                            <p>Payment Method: <span style="color: #0d71e2;">@if($order->payment_method == 'cod') Cash On Delivery @else {{ $order->payment_method }} @endif</span></p>
                            <p>Payment Status: <span style="color: #0d71e2">{{ $order->delivery_status }}</span></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row text-center">
                        <p>Download:</p>
                        <p style="font-size: 18px"><a href="{{ route('customer.invoice.download', $order->id) }}" style="color: #1daa4a;"><u>Download Invoice</u></a></p>
                    </div>
                    <div class="row userInfo" style="margin-top: 50px;">
                        <div class="col-lg-12 col-center">
                            <h4 class="text-center">Items to be Shipped</h4><br>
                            <div class="table-responsive">
                                <table class="table table-striped invoice-table" >
                                    <thead class="bg-active">
                                        <tr>
                                            <th>Item Image</th>
                                            <th class="text-center">Item Name</th>
                                            <th class="text-center">Item Price</th>
                                            <th class="text-center">Quantity</th>
                                            <th class="text-center">Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($order->order_details as $order_detail)
                                        <tr class="CartProduct">
                                            <td class="CartProductThumb">
                                                <div>
                                                    <a href=""><img height="100px" width="100px" alt="img-{{$order_detail->product->name_en ?? ' '}}" src="{{asset($order_detail->product->product_thumbnail)}}"/></a>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="CartDescription">
                                                    <h4>
                                                        <a href="" style="color: #800020;">{{$order_detail->product->name_en ?? ' '}}</a>
                                                    </h4>
                                                    <span>
                                                        @if($order_detail->is_varient && count(json_decode($order_detail->variation))>0)
                                                            @foreach(json_decode($order_detail->variation) as $varient)
                                                                <span>{{ $varient->attribute_name }} : <span class="d-inline-block fw-normal ms-1">{{ $varient->attribute_value }}</span></span>
                                                            @endforeach
                                                        @endif
                                                    </span>
                                                </div>
                                            </td>
                                            <td class="text-center"><span style="color: #1daa4a;">{{$order_detail->price ?? ''}}</span></td>
                                            <td class="text-center"><span style="color: #1daa4a;">{{$order_detail->qty ?? ''}}</span></td>
                                            <td class="text-center"><span style="color: #1daa4a;">{{ ($order_detail->price * $order_detail->qty) ?? ' ' }}</span></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
@push('footer-script')
<!-- Vendor JS-->
<script src="{{asset('frontend/assets/js/vendor/modernizr-3.6.0.min.js ') }}"></script>
<script src="{{asset('frontend/assets/js/vendor/jquery-3.6.0.min.js ') }}"></script>
<!-- Invoice JS -->
<script src="{{asset('frontend/assets/js/invoice/jspdf.min.js ') }}"></script>
<script src="{{asset('frontend/assets/js/invoice/invoice.js ') }}"></script>
@endpush