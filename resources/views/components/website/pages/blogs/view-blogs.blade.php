    <!--==============================
    Blog Area  
    ==============================-->
    <section class="blog-area space-top space-extra-bottom">
        <div class="container container2">
            <div class="row gy-4 justify-content-center">
               @foreach ($blogs as $blog )
                <div class="col-lg-4 col-md-6">
                    <div class="blog-card style5">
                        <div class="blog-img">
                            <a href="{{ route('blog.front',[ 'slug'=> $blog->title]) }}">
                                <img src="{{ $blog->getFirstMediaUrl('Blogs') }}" alt="{{ $blog->title }}-image"
                                style="height: 200px; width: 100%; object-fit: cover;"
                                >
                                <div class="blog-date" style="width:150px">{{ $blog->created_at->format('Y-m-d')  }}</div>
                            </a>
                        </div>
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="{{ route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)]) }}"><i class="fas fa-at"></i>{{ ucfirst($blog->getPage->name) }}</a>
                            </div>
                            <h3 class="blog-title"><a href="{{ route('blog.front',[ 'slug'=> $blog->title]) }}">{{ ucwords($blog->title) }}</a></h3>
                        </div>
                    </div>
                </div> 
                @endforeach     
            </div>
            <div class="pagination justify-content-center">
                {{ $blogs->links() }}
            </div>
        </div>
    </section>  
