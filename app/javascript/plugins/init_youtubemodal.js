// $(document).ready(function() {

// // Gets the video src from the data-src

// var $videoSrc;
// $('.video-btn').click(function() {
//     $videoSrc = $(this).data( "src" );
// });
// console.log($videoSrc);

// // when the modal is opened autoplay it
// $('#myModal').on('shown.bs.modal', function (e) {

// // set the video src to autoplay and not to show related video.
// $("#video").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" );
// })
// // stop playing the youtube video when I close the modal
// $('#myModal').on('hide.bs.modal', function (e) {
//     // a poor man's stop video
//     $("#video").attr('src',$videoSrc);
// })
// });


// Another Modal
$(document).ready(function(){
    /* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
    var url = $("#musicVideo").attr('src');

    /* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
    $("#myModal").on('hide.bs.modal', function(){
        $("#musicVideo").attr('src', '');
    });

    /* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
    $("#myModal").on('show.bs.modal', function(){
        $("#musicVideo").attr('src', url);
    });
});
