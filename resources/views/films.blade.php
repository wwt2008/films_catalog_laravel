@extends ('layouts.app')

@section ('content')
    <div class="row pl-4 pr-4">
        <div class="col">
            <div class="films row">
                @foreach($films as $film)
                    <div class="col col-12 col-sm-6 col-lg-4 mb-4">
                        @php $filmUrl = route('films.show', $film->slug);@endphp
                        <article class="card film-card text-center">
                            <div class="card-img-top">
                                <a  href="{{ $filmUrl }}">
                                    @if($film->getFirstPhoto('m'))
                                        <img src="{{ $film->getFirstPhoto('m')->filepath }}" alt="{{ $film->getTitle() }}" class="img-fluid">
                                    @else
                                        <img width="300" src="/images/nophoto.png" alt="no photo" class="img-fluid">
                                    @endif
                                </a>
                            </div>

                            <div class="card-body">
                                <h5 class="card-title mb-2">
                                    <a href="{{ $filmUrl }}">
                                        <span class="film-name">{{ $film->title }}</span>
                                        <span class="text-muted">({{ $film->getYear() }})</span>
                                    </a>
                                </h5>
                                <ul class="rating list-unstyled">
                                    @for($i = 1; $i <= 5; $i++)
                                        <li>
                                            <i class="fa {{ $film->rating >= $i  ? 'fa-star' : 'fa-star-o'}}"></i>
                                        </li>
                                    @endfor
                                </ul>
                                <p class="card-text film-short">{{ str_limit($film->description, $limit = 100, $end = '...') }}</p>
                            </div>
                            <div class="text-center small card-actions text-muted mt-1">
                                <a class="btn btn-outline-info mb-2" href="{{ route('films.edit', $film) }}">Edit</a>
                            </div>
                        </article>

                    </div>
                @endforeach
            </div>
            <div id="toolbar" class="mb-3 float-right">
                <a href="{{ route('films.create') }}" class="btn btn-info">Create new film</a>
            </div>
            {!! $films->links() !!}
        </div>
    </div>

@endsection