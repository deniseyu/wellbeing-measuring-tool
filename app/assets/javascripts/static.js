$(document).ready(function(){
  console.log('ready');

  $('#learn-more-button').on('click', function(event){
    event.preventDefault();
    console.log('sldkfj');
    $('html', 'body').animate({
      scrollTop: 200
    }, 1000);
  });

// in progress

});
