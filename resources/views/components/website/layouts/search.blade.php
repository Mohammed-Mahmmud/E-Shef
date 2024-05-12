@props([
    'route'=>false,
])
     <h3 class="widget_title">Search</h3>
     <form class="search-form" action="{{ $route??'' }}" method="POST">
     @csrf
         <input type="text" placeholder="Enter Keyword" name="search" value="{{ Request()->query('name')??'' }}">
         <button type="submit"><i class="fas fa-search"></i></button>
     </form>
