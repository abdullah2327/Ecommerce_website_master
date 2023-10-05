<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;

use App\Models\Accessories;

use App\Models\Menwear;

use App\Models\Womenwear;

use App\Models\Kidswear;

use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function user()

    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=user::all();
        return view("admin.users",compact("data"));
        }

        else
        {
            return abort(403, 'Unauthorized access');
        }

    }

    public function deleteuser($id)
    {
        $data=user::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function deleteaccessories($id)
    {
        $data=accessories::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function deletekids($id)
    {
        $data=kidswear::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function deletemen($id)
    {
        $data=menwear::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function deletewomen($id)
    {
        $data=womenwear::find($id);
        $data->delete();
        return redirect()->back();
    }

    public function menwear()
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=menwear::all();
        return view("admin.managemenwear",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function womenwear()
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=womenwear::all();
        return view("admin.managewomenwear",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function kidswear()
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=kidswear::all();
        return view("admin.managekidswear",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function accessories()
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=accessories::all();
        return view("admin.manageaccessories",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function uploadmen(Request $request)
    {
        $data=new menwear;
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('menimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updateuserview($id)
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=user::find($id);
        return view("admin.updateuserview",compact("data"));
        }
        else{
            return abort(403,'Unauthorized Access');
        }

    }

    public function updatekidsview($id)
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=kidswear::find($id);
        return view("admin.updatekidsview",compact("data"));
        }
        else{
            return abort(403,'Unauthorized Access');
        }

    }

    public function updateaccessoriesview($id)
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1'){
            $data=accessories::find($id);
        return view("admin.updateaccessoriesview",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function updatemenview($id)
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=menwear::find($id);
        return view("admin.updatemenview",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }

    public function updatewomenview($id)
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            $data=womenwear::find($id);
        return view("admin.updatewomenview",compact("data"));
        }
        else
        {
            return abort(403,'Unauthorized Access');
        }

    }




    public function uploadladieswear(Request $request)
    {
        $data=new womenwear;
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('womenimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function uploadkidswear(Request $request)
    {
        $data=new kidswear;
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('kidimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function uploadaccessories(Request $request)
    {
        $data=new accessories;
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('accessoriesimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updateaccessories($id, Request $request)
    {
        $data=accessories::find($id);
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('accessoriesimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updatekids($id, Request $request)
    {
        $data=kidswear::find($id);
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('kidimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updatemen($id, Request $request)
    {
        $data=menwear::find($id);
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('menimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updatewomen($id, Request $request)
    {
        $data=womenwear::find($id);
        $image=$request->image;

        $imagename=time().'.'.$image->getClientOriginalExtension();
                    $request->image->move('womenimage',$imagename);

        $data->image=$imagename;

        $data->title=$request->title;

        $data->price=$request->price;

        $data->save();

        return redirect()->back();
    }

    public function updateuser( Request $request, $id)
    {
        $data=user::find($id);

        $data->name=$request->name;

        $data->usertype=$request->usertype;

        $data->save();

        return redirect()->back();
    }


}
