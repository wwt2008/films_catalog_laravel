<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use App\Country;
use App\Genre;
use App\Photo;

class FilmsController extends Controller
{
    public function index() {
        $filmsPerPage = 10;
        return view('films', [
            'films'     => Film::latest('release_date')->paginate($filmsPerPage),
            'title'     => 'Films Catalog'
        ]);
    }
    public function getGenres() {
        return Genre::all();
    }
    public function getCountries() {
        return Country::all();
    }
    public function create() {
        $film = new Film;
        return view('film_create', [
            'title'     => 'Create new film',
            'film'      => $film,
            'allcountries'  => $this->getCountries(),
            'addedcountries'=> $film->countries()->get(),
            'addedgenres'   => $film->genres()->get(),
            'allgenres'     => $this->getGenres(),
        ]);
    }

    protected function getValidateRules(){
        return array(
            'title'         => 'required|string',
            'description'   => 'required|string',
            'release_date'  => 'required|string|date',
            'ticket_price'  => 'required|numeric|min:0|max:999.99',
            //'country'       => 'required|integer|exists:countries,id',
            'genre'         => 'required|integer|exists:genres,id',
            'rating'        => 'required|integer|between:1,5',
            'photo'         => "image|mimes:jpg,jpeg,png|max:2048"
        );
    }

    protected function createPhotos($film, Request $request){
        $imageSizes = array(
            's' => '100',
            'm' => '300',
            'l' => '600'
        );
        $time = time();

        foreach ($imageSizes as $code => $width){
            $fileName = 'photo_'.$film->id.'_'.$time.'_'.$code.'.'.$request->photo->getClientOriginalExtension();
            $filePath = 'uploads/'.$fileName;
            \Image::make($request->photo)
                ->resize($width, null,
                    function ($constraint) {
                        $constraint->aspectRatio();
                    })
                ->save($filePath);
            $newPhoto = new \App\Photo;
            $newPhoto->film_id  = $film->id;
            $newPhoto->filepath = $filePath;
            $newPhoto->size     = $code;
            $newPhoto->group_id = $time;
            $newPhoto->save();
        }
        return true;
    }

    public function store(Request $request) {
        //$this->validate($request, $this->getValidateRules());
        $film = new Film;
        $film->title        = $request->input('title');
        $film->description  = $request->input('description');
        $film->release_date = $request->input('release_date');
        $film->ticket_price = $request->input('ticket_price');
        $film->rating       = $request->input('rating');
        if($film->save()){
            $country_ids = $request->input('country');
            $film->countries()->sync($country_ids);
            $genre_ids = $request->input('genre');
            $film->genres()->sync($genre_ids);
        }

        if($request->file('photo')){
            $this->createPhotos($film, $request);
        }

        return redirect('/')->with('success', 'Film has been created');
    }

    public function update(Request $request) {

        $film = Film::findOrFail($request->input('id'));
        $film->title        = $request->input('title');
        $film->description  = $request->input('description');
        $film->release_date = $request->input('release_date');
        $film->ticket_price = $request->input('ticket_price');
        $film->rating       = $request->input('rating');

        if($film->save()){
            $country_ids = $request->input('country');
            $film->countries()->sync($country_ids);
            $genre_ids = $request->input('genre');
            $film->genres()->sync($genre_ids);
        }

        if($request->file('photo')){
            $this->createPhotos($film, $request);
        }
        return back()->with('success', 'Film has been updated');
    }

    public function delete(Request $request) {
        $film = Film::findOrFail($request->input('id'));
        foreach($film->photos()->get() as $photo){
            unlink(public_path().'/'.$photo->filepath);
        }
        $film->delete();
        return redirect('/')->with('success', 'Film has been deleted');
    }
    public function show($slug) {
        $film = Film::where('slug', $slug)->first();
        return view('film_show', [
            'title'     => $film->name,
            'film'      => $film,

        ]);
    }
    public function deletephoto($id) {
        $photo = Photo::findOrFail($id);
        Photo::where('group_id', $photo->group_id)->delete();
        return back()->with('success', 'Photo has been deleted');
    }

    public function edit($id) {
        $film = Film::findOrFail($id);
        return view('film_edit', [
            'title'         => __("Edit film"),
            'film'          => $film,
            'allcountries'  => $this->getCountries(),
            'addedcountries'=> $film->countries()->get(),
            'addedgenres'   => $film->genres()->get(),
            'allgenres'     => $this->getGenres(),
        ]);
    }

    public function addcountries() {
         $arr = array (
            'AF' => 'Afghanistan',
            'AX' => 'Åland Islands',
            'AL' => 'Albania',
            'DZ' => 'Algeria',
            'AS' => 'American Samoa',
            'AD' => 'Andorra',
            'AO' => 'Angola',
            'AI' => 'Anguilla',
            'AQ' => 'Antarctica',
            'AG' => 'Antigua & Barbuda',
            'AR' => 'Argentina',
            'AM' => 'Armenia',
            'AW' => 'Aruba',
            'AC' => 'Ascension Island',
            'AU' => 'Australia',
            'AT' => 'Austria',
            'AZ' => 'Azerbaijan',
            'BS' => 'Bahamas',
            'BH' => 'Bahrain',
            'BD' => 'Bangladesh',
            'BB' => 'Barbados',
            'BY' => 'Belarus',
            'BE' => 'Belgium',
            'BZ' => 'Belize',
            'BJ' => 'Benin',
            'BM' => 'Bermuda',
            'BT' => 'Bhutan',
            'BO' => 'Bolivia',
            'BA' => 'Bosnia & Herzegovina',
            'BW' => 'Botswana',
            'BR' => 'Brazil',
            'IO' => 'British Indian Ocean Territory',
            'VG' => 'British Virgin Islands',
            'BN' => 'Brunei',
            'BG' => 'Bulgaria',
            'BF' => 'Burkina Faso',
            'BI' => 'Burundi',
            'KH' => 'Cambodia',
            'CM' => 'Cameroon',
            'CA' => 'Canada',
            'IC' => 'Canary Islands',
            'CV' => 'Cape Verde',
            'BQ' => 'Caribbean Netherlands',
            'KY' => 'Cayman Islands',
            'CF' => 'Central African Republic',
            'EA' => 'Ceuta & Melilla',
            'TD' => 'Chad',
            'CL' => 'Chile',
            'CN' => 'China',
            'CX' => 'Christmas Island',
            'CC' => 'Cocos (Keeling) Islands',
            'CO' => 'Colombia',
            'KM' => 'Comoros',
            'CG' => 'Congo - Brazzaville',
            'CD' => 'Congo - Kinshasa',
            'CK' => 'Cook Islands',
            'CR' => 'Costa Rica',
            'CI' => 'Côte d’Ivoire',
            'HR' => 'Croatia',
            'CU' => 'Cuba',
            'CW' => 'Curaçao',
            'CY' => 'Cyprus',
            'CZ' => 'Czechia',
            'DK' => 'Denmark',
            'DG' => 'Diego Garcia',
            'DJ' => 'Djibouti',
            'DM' => 'Dominica',
            'DO' => 'Dominican Republic',
            'EC' => 'Ecuador',
            'EG' => 'Egypt',
            'SV' => 'El Salvador',
            'GQ' => 'Equatorial Guinea',
            'ER' => 'Eritrea',
            'EE' => 'Estonia',
            'ET' => 'Ethiopia',
            'EZ' => 'Eurozone',
            'FK' => 'Falkland Islands',
            'FO' => 'Faroe Islands',
            'FJ' => 'Fiji',
            'FI' => 'Finland',
            'FR' => 'France',
            'GF' => 'French Guiana',
            'PF' => 'French Polynesia',
            'TF' => 'French Southern Territories',
            'GA' => 'Gabon',
            'GM' => 'Gambia',
            'GE' => 'Georgia',
            'DE' => 'Germany',
            'GH' => 'Ghana',
            'GI' => 'Gibraltar',
            'GR' => 'Greece',
            'GL' => 'Greenland',
            'GD' => 'Grenada',
            'GP' => 'Guadeloupe',
            'GU' => 'Guam',
            'GT' => 'Guatemala',
            'GG' => 'Guernsey',
            'GN' => 'Guinea',
            'GW' => 'Guinea-Bissau',
            'GY' => 'Guyana',
            'HT' => 'Haiti',
            'HN' => 'Honduras',
            'HK' => 'Hong Kong SAR China',
            'HU' => 'Hungary',
            'IS' => 'Iceland',
            'IN' => 'India',
            'ID' => 'Indonesia',
            'IR' => 'Iran',
            'IQ' => 'Iraq',
            'IE' => 'Ireland',
            'IM' => 'Isle of Man',
            'IL' => 'Israel',
            'IT' => 'Italy',
            'JM' => 'Jamaica',
            'JP' => 'Japan',
            'JE' => 'Jersey',
            'JO' => 'Jordan',
            'KZ' => 'Kazakhstan',
            'KE' => 'Kenya',
            'KI' => 'Kiribati',
            'XK' => 'Kosovo',
            'KW' => 'Kuwait',
            'KG' => 'Kyrgyzstan',
            'LA' => 'Laos',
            'LV' => 'Latvia',
            'LB' => 'Lebanon',
            'LS' => 'Lesotho',
            'LR' => 'Liberia',
            'LY' => 'Libya',
            'LI' => 'Liechtenstein',
            'LT' => 'Lithuania',
            'LU' => 'Luxembourg',
            'MO' => 'Macau SAR China',
            'MK' => 'Macedonia',
            'MG' => 'Madagascar',
            'MW' => 'Malawi',
            'MY' => 'Malaysia',
            'MV' => 'Maldives',
            'ML' => 'Mali',
            'MT' => 'Malta',
            'MH' => 'Marshall Islands',
            'MQ' => 'Martinique',
            'MR' => 'Mauritania',
            'MU' => 'Mauritius',
            'YT' => 'Mayotte',
            'MX' => 'Mexico',
            'FM' => 'Micronesia',
            'MD' => 'Moldova',
            'MC' => 'Monaco',
            'MN' => 'Mongolia',
            'ME' => 'Montenegro',
            'MS' => 'Montserrat',
            'MA' => 'Morocco',
            'MZ' => 'Mozambique',
            'MM' => 'Myanmar (Burma)',
            'NA' => 'Namibia',
            'NR' => 'Nauru',
            'NP' => 'Nepal',
            'NL' => 'Netherlands',
            'NC' => 'New Caledonia',
            'NZ' => 'New Zealand',
            'NI' => 'Nicaragua',
            'NE' => 'Niger',
            'NG' => 'Nigeria',
            'NU' => 'Niue',
            'NF' => 'Norfolk Island',
            'KP' => 'North Korea',
            'MP' => 'Northern Mariana Islands',
            'NO' => 'Norway',
            'OM' => 'Oman',
            'PK' => 'Pakistan',
            'PW' => 'Palau',
            'PS' => 'Palestinian Territories',
            'PA' => 'Panama',
            'PG' => 'Papua New Guinea',
            'PY' => 'Paraguay',
            'PE' => 'Peru',
            'PH' => 'Philippines',
            'PN' => 'Pitcairn Islands',
            'PL' => 'Poland',
            'PT' => 'Portugal',
            'PR' => 'Puerto Rico',
            'QA' => 'Qatar',
            'RE' => 'Réunion',
            'RO' => 'Romania',
            'RU' => 'Russia',
            'RW' => 'Rwanda',
            'WS' => 'Samoa',
            'SM' => 'San Marino',
            'ST' => 'São Tomé & Príncipe',
            'SA' => 'Saudi Arabia',
            'SN' => 'Senegal',
            'RS' => 'Serbia',
            'SC' => 'Seychelles',
            'SL' => 'Sierra Leone',
            'SG' => 'Singapore',
            'SX' => 'Sint Maarten',
            'SK' => 'Slovakia',
            'SI' => 'Slovenia',
            'SB' => 'Solomon Islands',
            'SO' => 'Somalia',
            'ZA' => 'South Africa',
            'GS' => 'South Georgia & South Sandwich Islands',
            'KR' => 'South Korea',
            'SS' => 'South Sudan',
            'ES' => 'Spain',
            'LK' => 'Sri Lanka',
            'BL' => 'St. Barthélemy',
            'SH' => 'St. Helena',
            'KN' => 'St. Kitts & Nevis',
            'LC' => 'St. Lucia',
            'MF' => 'St. Martin',
            'PM' => 'St. Pierre & Miquelon',
            'VC' => 'St. Vincent & Grenadines',
            'SD' => 'Sudan',
            'SR' => 'Suriname',
            'SJ' => 'Svalbard & Jan Mayen',
            'SZ' => 'Swaziland',
            'SE' => 'Sweden',
            'CH' => 'Switzerland',
            'SY' => 'Syria',
            'TW' => 'Taiwan',
            'TJ' => 'Tajikistan',
            'TZ' => 'Tanzania',
            'TH' => 'Thailand',
            'TL' => 'Timor-Leste',
            'TG' => 'Togo',
            'TK' => 'Tokelau',
            'TO' => 'Tonga',
            'TT' => 'Trinidad & Tobago',
            'TA' => 'Tristan da Cunha',
            'TN' => 'Tunisia',
            'TR' => 'Turkey',
            'TM' => 'Turkmenistan',
            'TC' => 'Turks & Caicos Islands',
            'TV' => 'Tuvalu',
            'UM' => 'U.S. Outlying Islands',
            'VI' => 'U.S. Virgin Islands',
            'UG' => 'Uganda',
            'UA' => 'Ukraine',
            'AE' => 'United Arab Emirates',
            'GB' => 'United Kingdom',
            'UN' => 'United Nations',
            'US' => 'United States',
            'UY' => 'Uruguay',
            'UZ' => 'Uzbekistan',
            'VU' => 'Vanuatu',
            'VA' => 'Vatican City',
            'VE' => 'Venezuela',
            'VN' => 'Vietnam',
            'WF' => 'Wallis & Futuna',
            'EH' => 'Western Sahara',
            'YE' => 'Yemen',
            'ZM' => 'Zambia',
            'ZW' => 'Zimbabwe',
        );
         foreach ($arr as $short=>$full){
             $newcountry = new Country;
             $newcountry->name_full = $full;
             $newcountry->name_short = $short;
             $newcountry->save();
         }
        return back();
    }

    public function addgenres(){
        $arr = array('Action', 'Adventure', 'Adult', 'Animation', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Fantasy', 'Family', 'Film-Noir', 'Horror', 'Musical', 'Mystery', 'Romance', 'Sci-Fi', 'Short', 'Thriller', 'War', 'Western');
        foreach ($arr as $name) {
            $newgenre = new Genre;
            $newgenre->name = $name;
            $newgenre->save();
        }
        return '';
    }
}
