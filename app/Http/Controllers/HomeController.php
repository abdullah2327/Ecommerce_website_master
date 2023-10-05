<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Kidswear;
use App\Models\Accessories;
use App\Models\Menwear;
use App\Models\Womenwear;

class HomeController extends Controller
{
    public function index()
    {
        $datamen=menwear::all();
        $datawomen=womenwear::all();
        $datakids=kidswear::all();
        $dataaccessories=accessories::all();
        return view("home",compact("datamen","datawomen","datakids","dataaccessories"));
    }

    public function redirects()
    {
        $usertype = Auth::user()->usertype;

        if($usertype=='1')
        {
            return view('admin.adminhome');
        }
        else
        {
            $datamen=menwear::all();
        $datawomen=womenwear::all();
        $datakids=kidswear::all();
        $dataaccessories=accessories::all();
        return view("home",compact("datamen","datawomen","datakids","dataaccessories"));
        }
    }
}
