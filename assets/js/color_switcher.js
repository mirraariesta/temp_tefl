$(function() {
  $('.color_settings_box').animate({'right' : '0px'}, 'slow').addClass('active');

  $('.toggle-color-settings').on('click', function(){
    if($('.color_settings_box').hasClass('active')){
      $('.color_settings_box').animate({'right' : '-100px'}, 'slow').removeClass('active');
      $('.toggle-color-settings span').text('show');
    }else{
      $('.color_settings_box').animate({'right' : '0px'}, 'slow').addClass('active');
      $('.toggle-color-settings span').text('hide');
    }
    return false;
  });

  $('.color-tooltip').tooltip();

});