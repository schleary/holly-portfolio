
$(document).ready(function () {

    // konami easter egg
    var kkeys = [], konami = "38,38,40,40,37,39,37,39,66,65";
    $(document).keydown(function(e) {
    kkeys.push( e.keyCode );
    if ( kkeys.toString().indexOf( konami ) >= 0 ){
      $(document).unbind('keydown',arguments.callee);
        // Launch easter egg here
        $.getScript('http://www.cornify.com/js/cornify.js', function(){
          cornify_add();
          $(document).keydown(cornify_add);
        });
      }
    });

    // 'Read More'
    // $('.read_more').click(function(){
    //   $('.posttext').toggleClass('.ellipsis');
    // });
    // // Don't show Read More button if fewer than 500 chars
    // $(function(){
    //   if($('.posttext').html().length < 100){
    //     $('.read_more').hide();
    //   }
    // });


});
