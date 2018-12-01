<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use Auth;

class ProductsController extends Controller
{
    public function index()
    {
    	return Product::orderBy('created_at', 'desc')->get();
    }

    public function store(Request $request)
    {
    	$exploded = explode(',', $request->image);

    	$decoded = base64_decode($exploded[1]);

    	if(str_contains($exploded[0], 'jpeg'))
			$extension = 'jpg';
		else			
			$extension = 'jpg';
		$fileName = str_random().'.'.$extension;

		$path = public_path().'/'.$fileName;

		file_put_contents($path, $decoded);

    	$product = Product::create($request->except('image') + ['user_id' => Auth::id(),
    		'image' => $fileName ]);
    	return $product;
    }

	public function show($id)
    {
    	$product = Product::findOrFail($id);

    	if(count($product)>0){
    		return response()->json($product);
    	}

    	return response()->json(['error' => 'Resource not found!'], 404);
    }

   	public function update(Request $request, $id)
    {
    	$product = Product::find($id);
    	dd($product);
    	$product->update($request->all());
    	return response()->json(Product::find($id));
    }

    public function destory($id)
    {

    	try {
    		
   //  		$product = Product::find($id);
			// $product->delete($id);
    		Product::destory($id);

    		return response([], 204);
    	} catch (\Exception $e) {
    		return response(['Problem deleting the product', 500]);
    	}
    }
}
