<x-app-layout>

</x-app-layout>
<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="/public">
    @include("admin.admincss")

  </head>
  <body>
    <div class="container-scroller">

    @include("admin.navbar")

    <div class="login-box2">
        <h2>Update Women Wears</h2>
        <form action="{{ url('/updatewomen',$data->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="user-box">
             <input type="text" name="title" required value="{{ $data->title }}">
             <label>Title</label>
            </div>
            <div class="user-box">
            <input type="number" name="price" required value="{{ $data->price }}">
            <label>Price</label>
            </div>
            <label>Old Image</label>
            <img height="200" width="200" src="/womenimage/{{ $data->image }}">

            <label>Image</label>
            <input type="file" name="image" required>

            <input type="submit" value="Save" style="margin-top: 30px; padding-top: 5px; padding-bottom: 5px; padding-left: 50px; padding-right: 50px; background-color: #191c24">

        </form>
      </div>
    </div>

    <div  style="margin-top: 100px">

    </div>


    @include("admin.adminscript")
  </body>
</html>
