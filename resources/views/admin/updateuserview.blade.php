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

    <div class="login-box">
        <h2>Update Users</h2>
        <form action="{{ url('/updateuser',$data->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="user-box">
             <input type="text" name="name" required value="{{ $data->name }}">
             <label>User Name</label>
            </div>
            <div class="user-box">
            <input type="number" name="usertype" required value="{{ $data->usertype }}">
            <label>User Type</label>
            </div>

            <input type="submit" value="Save" style="margin-top: 30px; padding-top: 5px; padding-bottom: 5px; padding-left: 50px; padding-right: 50px; background-color: #191c24">

        </form>
      </div>

    </div>


    @include("admin.adminscript")
  </body>
</html>
