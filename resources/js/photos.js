$('.foto-delete-btn').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('data-id');
        if(confirm("Are you sure?")){
            $('#photo-delete-form').attr('action', '/films/deletephoto/' + id);
            $('#photo-delete-form')[0].submit()
        }
})
$('#add-country-btn').on('click', function(e){
    e.preventDefault();
    $('#countries-list .col-country').last().clone().appendTo($('#countries-list'));
    $('#delete-country-btn').removeClass('d-none');
})
$('#delete-country-btn').on('click', function(e){
    e.preventDefault();
    if($('#countries-list .col-country').length > 1) $('#countries-list .col-country').last().remove();
    else ($(this).addClass('d-none'));
})
$('#add-genre-btn').on('click', function(e){
    e.preventDefault();
    $('#genres-list .col-genre').last().clone().appendTo($('#genres-list'));
    $('#delete-genre-btn').removeClass('d-none');
})
$('#delete-genre-btn').on('click', function(e){
    e.preventDefault();
    if($('#genres-list .col-genre').length > 1) $('#genres-list .col-genre').last().remove();
    else ($(this).addClass('d-none'));
})