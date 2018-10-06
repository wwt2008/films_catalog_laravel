@extends ('layouts.app')

@section('content')


    <div class="row pl-4 pr-4">
        <div class="film-inner col">
            <nav class="breadcrumb">
                <a class="breadcrumb-item" href="{{ url('/') }}">Films</a>
                <span class="breadcrumb-item active">{{ $film->title }}</span>
            </nav>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="page-title">{{ $film->title }}
                                <small class="text-muted">({{ $film->getYear() }})</small>
                            </h1>

                            {{--  @include('star-rating', ['rating' => $film->rating])--}}
                            <div class="row">
                                <div class="object-props col-3">
                                        <h3>Realease Date:</h3>
                                        <p>{{ $film->release_date }}</p>

                                        <h3>Countries:</h3>
                                        <ul>
                                            @foreach($film->countries()->get() as $country)
                                                <li>{{ $country->name_full }}</li>
                                            @endforeach
                                        </ul>
                                        <h3>Genres:</h3>
                                        <ul>
                                            @foreach($film->genres()->get() as $genre)
                                                <li>{{ $genre->name }}</li>
                                            @endforeach
                                        </ul>
                                        <h3>Ticket Price:</h3>
                                        <p>${{ number_format($film->ticket_price, 2) }}</p>
                                </div>

                                <div class="film-body col-9">
                                    {!! $film->description !!}
                                </div>

                            </div>
                            <div class="row justify-content-center">
                                @foreach($film->getAllPhotos('m') as $photo)
                                    <div class="col col-md-3 mb-3 mb-sm-0">
                                        <img src="/{{ $photo->filepath }}" alt="{{ $film->title }}" class="film-caver img-fluid">
                                    </div>
                                @endforeach
                            </div>
                        </div>

                    </div>

                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col col-md-8">
                    <div class="mt-5">
                        <a name="comments"></a>
                        <h4 class="mb-3">Comments</h4>
                        <div class="comments mb-4">
                            @foreach($film->comments()->get() as $comment)
                                <div class="comment card card-body mb-4" data-id="{{ $comment->id }}">
                                    <header class="comment-header">
                                        <div class="form-row align-items-center">
                                            <div class="col col-auto">
                                                <div class="user-name">{{ $comment->user->name }}</div>
                                            </div>
                                            <div class="col">
                                                <div class="stats">
                                                    <time class="text-muted small">{{ $comment->created_at->format('d.m.y (H:i)') }}</time>
                                                </div>
                                            </div>
                                        </div>
                                    </header>
                                    <div class="comment-body">
                                        <div class="comment-text mb-2">{!! $comment->content !!}</div>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        @if(Auth::check())
                            @include('forms.comment_form')
                        @else
                            <hr>
                            <p class="small">
                                <a href="{{ route('register') }}" class="carrot">Sign Up</a> or
                                <a href="{{ route('login') }}" class="carrot">Log In</a> for commenting
                            </p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection