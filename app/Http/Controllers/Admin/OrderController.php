<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Order;
use PhpParser\JsonDecoder;

class OrderController extends Controller
{
    public function allOrder(){
        $order = Order::all(); 

        //dd($order); 

        return view('admin.allorder', compact('order')); 
    }

    public function OrderDetails($id){
        
        //dd($id); 

        $order = Order::where('order_row_id', $id)->first(); 
        //dd($order);
        $productinfo = json_decode($order); 

        dd($productinfo); 

        return view('admin.orderdetails', compact('order')); 
    }
}
