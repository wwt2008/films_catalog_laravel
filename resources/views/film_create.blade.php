@extends ('layouts.app')

@section('content')
    <div class="row pl-4 pr-4">

        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Films</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create New Film</li>
                </ol>
            </nav>

            <h4 class="mb-4">Create New Film</h4>
            <form method="post" class="card card-body film-form" action="{{ route('films.store') }}" enctype="multipart/form-data">
                {{ csrf_field() }}
                @include('forms.film_form')
                <div class="form-group row">
                    <div class="col col-3"></div>
                    <div class="col col-12 col-sm">
                        <input type="submit" class="btn btn-primary px-4" value="Save">
                    </div>
                </div>
            </form>
        </div>
    </div>

@endsection