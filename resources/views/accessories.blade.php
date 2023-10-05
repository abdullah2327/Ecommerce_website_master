<section class="section" id="accessories">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Accessories Latest</h2>
                    <span>Details to details is what makes Hexashop different from the other themes.</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="accessories-item-carousel">
                    <div class="owl-kid-item owl-carousel">


                        @foreach ($dataaccessories as $dataaccessories)



                        <div class="item">
                            <div class="thumb">
                                <div class="hover-content">
                                    <ul>
                                        <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                        <li><a href="single-product.html"><i class="fa fa-star"></i></a></li>
                                        <li><a href="single-product.html"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <img src="{{ asset('accessoriesimage/' . $dataaccessories->image) }} " alt="" style=" height: 500px">
                            </div>
                            <div class="down-content">
                                <h4>{{ $dataaccessories->title }}</h4>
                                <span>{{$dataaccessories->price}}</span>
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                            </div>
                        </div>


                        @endforeach









                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
