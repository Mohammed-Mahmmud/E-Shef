$(document).ready(function() {
    $('.viewImage').click(function(event) {
        console.log('welcome');
        event.preventDefault();
        let image = $(this).find('img').attr('src');
        $('#newImage').attr('src', image);
        $('#baseImage').fadeOut(1000, function() {
            $('#newImage').fadeIn(1000);
        });
    });
});