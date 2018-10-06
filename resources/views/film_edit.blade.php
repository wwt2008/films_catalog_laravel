@extends ('layouts.app')

@section('content')
    <div class="row pl-4 pr-4">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Films</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Edit Film</li>
                </ol>
            </nav>

            <h4 class="mb-4">Edit Film</h4>
            <form method="post" class="card card-body film-form" action="{{ route('films.update') }}" enctype="multipart/form-data">
                {{ csrf_field() }}
                @include('forms.film_form')
                <div class="form-group row">
                    <div class="col col-3"></div>
                    <div class="col col-12 col-sm">
                        <input type="submit" class="btn btn-primary px-4" value="Update">
                    </div>
                </div>
            </form>

            <form method="post" class="card card-body film-form" action="{{ route('films.delete') }}"
                  enctype="multipart/form-data" id="film-delete-form">
                {{ csrf_field() }}
                <input type="hidden" name="id" value="{{$film->id}}">
                <input onclick="return confirm('Are you sure?')" type="submit" class="btn btn-danger px-4" value="Delete film">

            </form>
        </div>
    </div>
    <form id="photo-delete-form" method="get" action="" enctype="multipart/form-data">
        {{ csrf_field() }}
    </form>
@endsection
