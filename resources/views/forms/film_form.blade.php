<input type="hidden" name="id" id="film-id" value="{{ $film->id }}">
<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-title">Title</label>
    <div class="col col-12 col-sm">
        <input type="text" name="title" id="film-title"
               class="form-control{{ $errors->has('title') ? ' is-invalid' : '' }}"
               value="{{ old('title', $film->title) }}" required autocomplete="off">
        @if($errors->has('title'))
            <div class="invalid-feedback">{{ $errors->first('title') }}</div>
        @endif
    </div>
</div>

<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-description">Description</label>
    <div class="col col-12 col-sm">
        <textarea type="text" name="description"
                  class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"
                  autocomplete="off" rows="5"
                  id="film-description" required>{{ old('description', $film->description) }}</textarea>
        @if($errors->has('description'))
            <div class="invalid-feedback">{{ $errors->first('description') }}</div>
        @endif
    </div>
</div>

<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-release_date">Release Date</label>
    <div class="col col-12 col-sm">
        @php
            $filmReleaseDate = $film->release_date ? \Carbon\Carbon::parse($film->release_date)->format('Y-m-d') : null;
        @endphp
        <input type="date" name="release_date" id="film-release_date"
               class="form-control{{ $errors->has('release_date') ? ' is-invalid' : '' }}"
               autocomplete="off"
               value="{{ old('release_date', $filmReleaseDate) }}" required>
        @if($errors->has('release_date'))
            <div class="invalid-feedback">{{ $errors->first('release_date') }}</div>
        @endif
    </div>
</div>


<div class="form-group row">
    <label class="col col-sm-3 col-form-label" for="film-country">Countries</label>

    <div class="col col-sm-9 col-sm">
        <div class="row" id="countries-list">
            @if(empty($addedcountries) || count($addedcountries)<1)
                <div class="col col-sm-3 col-sm col-country mb-3">
                    <select name="country[]" id="film-country" required
                            class="form-control{{ $errors->has('country') ? ' is-invalid' : '' }}">
                        <option value="">Select Country</option>
                        @foreach($allcountries as $country)
                            <option value="{{ $country->id }}">
                                {{ $country->name_full }}
                            </option>
                        @endforeach
                    </select>
                    @if($errors->has('country'))
                        <div class="invalid-feedback">{{ $errors->first('country') }}</div>
                    @endif
                </div>
            @else
                    @foreach ($addedcountries as $addedcountry)
                    <div class="col col-sm-3 col-sm col-country mb-3">
                        @php $countryId = old('country', $addedcountry->id); @endphp
                        <select name="country[]" id="film-country" required
                                class="form-control{{ $errors->has('country') ? ' is-invalid' : '' }}">
                            <option value="">Select Country</option>
                            @foreach($allcountries as $country)
                                <option value="{{ $country->id }}"{{ $country->id == $countryId ? ' selected' : null }}>
                                    {{ $country->name_full }}
                                </option>
                            @endforeach
                        </select>
                        @if($errors->has('country'))
                            <div class="invalid-feedback">{{ $errors->first('country') }}</div>
                        @endif
                    </div>
                @endforeach
            @endif
        </div>
        <input type="button" value="Add country" id="add-country-btn" class="btn btn-default">
        <input type="button" value="Delete last" id="delete-country-btn" class="btn btn-default {{empty($addedcountries) ? 'd-none' : ''}}">

    </div>
</div>

<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-genre">Genres</label>

    <div class="col col-sm-9 col-sm">
        <div class="row" id="genres-list">

            @if(empty($addedgenres) || count($addedgenres)<1)
                <div class="col col-sm-3 col-sm col-genre mb-3">
                    <select name="genre[]" id="film-genre" required
                            class="form-control{{ $errors->has('genre') ? ' is-invalid' : '' }}">
                        <option value="">Select Genre</option>
                        @foreach($allgenres as $genre)
                            <option value="{{ $genre->id }}">
                                {{ $genre->name }}
                            </option>
                        @endforeach
                    </select>
                    @if($errors->has('genre'))
                        <div class="invalid-feedback">{{ $errors->first('genre') }}</div>
                    @endif
                </div>
            @else
                @foreach ($addedgenres as $addedgenre)
                    <div class="col col-sm-3 col-sm col-genre mb-3">
                            @php $genreId = old('genre', $addedgenre->id); @endphp
                            <select name="genre[]" id="film-genre" required
                                    class="form-control{{ $errors->has('genre') ? ' is-invalid' : '' }}">
                                <option value="">Select Genre</option>
                                @foreach($allgenres as $genre)
                                    <option value="{{ $genre->id }}"{{ $genre->id == $genreId ? ' selected' : null }}>
                                        {{ $genre->name }}
                                    </option>
                                @endforeach
                            </select>
                            @if($errors->has('genre'))
                                <div class="invalid-feedback">{{ $errors->first('genre') }}</div>
                            @endif
                        </div>
                @endforeach
            @endif

        </div>
        <input type="button" value="Add genre" id="add-genre-btn" class="btn btn-default">
        <input type="button" value="Delete last" id="delete-genre-btn" class="btn btn-default {{empty($addedgenres) ? 'd-none' : ''}}">

    </div>
</div>

<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-rating">Rating</label>
    <div class="col col-12 col-sm">
        @php $rating = old('rating', $film->rating); @endphp
        <select id="film-rating" name="rating" required
                class="form-control{{ $errors->has('rating') ? ' is-invalid' : '' }}">
            <option value="">Select Rating</option>
            @for($i = 1; $i <= 5; $i++)
                <option value="{{ $i }}"{{ $i == $rating ? ' selected' : '' }}>{{ $i }}</option>
            @endfor
        </select>
        @if($errors->has('rating'))
            <div class="invalid-feedback">{{ $errors->first('rating') }}</div>
        @endif
    </div>
</div>

<div class="form-group row">
    <label class="col col-12 col-sm-3 col-form-label" for="film-ticket_price">Ticket Price ($)</label>
    <div class="col col-12 col-sm">
        <input type="number" name="ticket_price" id="film-ticket_price" required
               class="form-control{{ $errors->has('ticket_price') ? ' is-invalid' : '' }}"
               autocomplete="off"
               value="{{ old('ticket_price', $film->ticket_price) }}" step="0.01" min="0" max="999.99">
        @if($errors->has('ticket_price'))
            <div class="invalid-feedback">{{ $errors->first('ticket_price') }}</div>
        @endif
    </div>
</div>

<div class="form-group row">
    <div class="col col-12 col-sm-3 col-form-label">Photos</div>
    <div class="col col-12 col-sm">
        @if($film->photos)
            <div class="row">
            @foreach($film->getAllPhotos('m') as $photo)
                    <div class="col col-6">
                        <img src="/{{ $photo->filepath }}" class="d-block mt-3">
                            <input type="button" value = "Delete" title="delete photo"
                                    class="btn btn-danger foto-delete-btn mt-2 mb-2"
                                    data-id = "{{$photo->id}}"/>
                    </div>
            @endforeach
            </div>
        @endif
        <div>
            <input type="file" name="photo" accept="image/jpeg,image/png">
        </div>
        @if($errors->has('photo'))
            <div class="invalid-feedback">{{ $errors->first('photo') }}</div>
        @endif


    </div>
</div>


