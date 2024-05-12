   <!--==============================
    Blog Area  
    ==============================-->
    <section class="blog-details-area space-top space-extra-bottom">
        <div class="container">
            <div class="row gx-40">
                <div class="col-xxl-12">
                    <div class="blog-card">
                        <div class="blog-img" style="text-align: center;">
                            <img class="img-fluid" src="{{ $blog->getFirstMediaUrl('Blogs') ?? '' }}" alt="{{$blog->title ?? ''}}-details-image" style="max-width: 100%; height: 500px; display: inline-block;">
                        </div>
                        
                        
                        <div class="blog-content">
                            <div class="blog-meta">
                                <a href="{{ route('home',['slug'=>'blogs']) }}"><i class="fas fa-at"></i> {{ ucwords($blog->title) ??''}}</a>
                                <a href="#"><i class="fas fa-calendar-alt"></i>{{ $blog->created_at->format('Y-m-d') ??'' }}</a>
                                <a href="{{ route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)]) }}"><i class="fas fa-folder"></i>{{ ucfirst($blog->getPage->name) ??'' }}</a>
                               
                            </div>
                            <blockquote>
                                <p>{{ ucwords($blog->title) ?? ""}}</p>
                            </blockquote>
                            <p class="mb-20" style="white-space: pre-line;">{{ ucwords($blog->description) ?? '' }}</p>
                         
                            <div class="post-content-tags mt-40">
                                <div class="post-tag-social">
                                    <div class="post-tag">
                                        <a href="{{ route('home',['slug'=>"products","subSlug"=>strtolower($blog->getPage->name)]) }}">{{ $blog->getPage->name  ?? ''}}</a>
                                    </div>
                                    <div class="post-share">
                                        <label>Share:</label>
                                        <div class="social-btn">
                                            <a href="https://{{SettingHelper::settings('Facebook')}}" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                            <a href="https://{{SettingHelper::settings('LinkedIn')}}" target="_blank"><i class="fab fa-linkedin"></i></a>
                                           
                                           
                                        </div>    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="nav-links">
                        @if(!empty($prevBlog))
                        <div class="nav-previous post-thum-nav">
                            <a class="nav-label" href="{{ route('blog.front',[ 'slug'=> $prevBlog->title]) }}">
                                <span class="nav-subtitle"><i class="fas fa-angle-double-left"></i>Previous Blog</span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="{{ route('blog.front',[ 'slug'=> $prevBlog->title]) }}">
                                        <img src="{{ $prevBlog->getFirstMediaUrl('Blogs') }}" alt="{{ ucwords($prevBlog->title) ?? '' }}-prevImage">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="{{ route('blog.front',[ 'slug'=> $prevBlog->title]) }}">
                                        <span class="nav-title">{{ ucwords($prevBlog->title) ?? '' }}</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @else
                        <div class="nav-previous post-thum-nav">
                            <a class="nav-label" href="#">
                                <span class="nav-subtitle"></span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="#">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="">
                                        <span class="nav-title"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endif
                        @if(!empty($nextBlog))
                        <div class="nav-next post-thum-nav">
                            <a class="nav-label" href="{{ route('blog.front',[ 'slug'=> $nextBlog->title]) }}">
                                <span class="nav-subtitle">Next Blog <i class="fas fa-angle-double-right"></i></span>
                            </a>
                            <div class="nav-holder">
                                <div class="nav-thumb">
                                    <a href="{{ route('blog.front',[ 'slug'=> $nextBlog->title]) }}">
                                        <img src="{{ $nextBlog->getFirstMediaUrl('Blogs') }}" alt="{{ ucwords($nextBlog->title) ?? ''}}-nextImage">
                                    </a>
                                </div>
                                <div class="nav-title">
                                    <a href="{{ route('blog.front',[ 'slug'=> $nextBlog->title]) }}">
                                        <span class="nav-title">{{ ucwords($nextBlog->title) ?? '' }}</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                    <!-- Comment Form -->
                    <div class="comment-form bg-smoke mb-30">
                        <div class="form-title">
                            <h4 class="blog-inner-title mb-2"> Leave A Comment</h4>
                        </div>
                       <x-website.layouts.contact-form />
                    </div>
                </div>
            </div>
        </div>
    </section>   