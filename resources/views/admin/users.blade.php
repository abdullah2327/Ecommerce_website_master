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







        <div style="position: relative; margin-top: 80px; margin-left: 40px">

            <h1 style="margin-bottom: 60px; color:darkgrey">Manage Users</h1>

        <table class="table">
            <thead>
              <tr>

                <th style="width: 200px; color: white">Name</th>
                <th style="width: 300px; color: white">Email</th>
                <th style="width: 200px; color: white">Action</th>
                <th style="width: 200px; color: white">Action 2</th>
              </tr>
            </thead>
            <tbody>

                @foreach ($data as $data)


              <tr>
                <td>{{ $data->name }}</td>
                <td>{{ $data->email }}</td>

                @if ($data->usertype=="0")

                <td>
                  <div class="badge badge-outline-danger" ><a href="{{ url('/deleteuser',$data->id) }}" style="color: #fc424a">Delete</a></div>
                </td>
                <td>
                    <div class="badge badge-outline-warning" ><a href="{{ url('/updateuserview',$data->id) }}" style="color: #ffab00">Update</a></div>
                  </td>
                <td>
                @else
                <td>
                    <div class="badge badge-outline-success" >Not Allowed</div>
                  </td>
                  <td>
                    <div class="badge badge-outline-success" >Not Allowed</div>
                  </td>

                  @endif

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
