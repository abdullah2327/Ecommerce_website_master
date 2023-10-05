<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <x-app-layout>

    </x-app-layout>
    <!DOCTYPE html>
    <html lang="en">
      <head>
        @include("admin.admincss")

      </head>
      <body>
        <div class="container-scroller">
        @include("admin.navbar")


        <div class="login-box">
            <h2>Add Accessories</h2>
            <form action="{{ url('/uploadaccessories') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="user-box">
                 <input type="text" name="title" required>
                 <label>Title</label>
                </div>
                <div class="user-box">
                <input type="number" name="price" required>
                <label>Price</label>
                </div>
                <label>Image</label>
                <input type="file" name="image" required>

                <input type="submit" value="Save" style="margin-top: 30px; padding-top: 5px; padding-bottom: 5px; padding-left: 50px; padding-right: 50px; background-color: #191c24">

            </form>
          </div>




          <div style="position: relative; margin-top: 600px">

            <h1 style="margin-bottom: 60px; color:darkgrey">Manage Accessories</h1>

        <table class="table">
            <thead>
              <tr>

                <th style="width: 150px; color: white">Name</th>
                <th style="width: 150px; color: white">Price</th>
                <th style="width: 450px; color: white">Image</th>
                <th style="width: 150px; color: white">Action 1</th>
                <th style="width: 150px; color: white">Action 2</th>
              </tr>
            </thead>
            <tbody>



                @foreach ($data as $data)



              <tr>
                <td>{{ $data->title }}</td>
                <td>{{ $data->price }}</td>
                <td><img src="/accessoriesimage/{{ $data->image }}" alt="" style="width: 400px; height: 500px"></td>


                <td>
                    <div class="badge badge-outline-warning" ><a href="{{ url('/accessories',$data->id) }}" style="color: #ffab00">Update</a></div>
                  </td>
                <td>
                  <div class="badge badge-outline-danger" ><a href="{{ url('/deleteaccessories',$data->id) }}" style="color: #fc424a">Delete</a></div>
                </td>



              </tr>

              @endforeach



            </tbody>
          </table>
          <br><br><br><br><br><br>
        </div>







        </div>





        @include("admin.adminscript")
      </body>
    </html>
</body>
</html>
