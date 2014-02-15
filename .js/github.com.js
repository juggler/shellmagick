$(document).ready(function() {
  $('#files.diff-view .js-details-container .button-group').append('<li><a class="grouped-button minibutton bigger lighter collapse" href="#">Collapse<code></code></a></li>');
  $('#files.diff-view .js-details-container .button-group').append('<li><a class="grouped-button minibutton bigger lighter collapse" href="#" style="display:none;">Expand<code></code></a></li>');
  $('#toc p.explain').append('<a href="#" class="minibutton global-collapse" style="margin-right: 10px;">Collapse All</a>')
  $('#toc p.explain').append('<a href="#" class="minibutton global-collapse" style="display:none; margin-right: 10px;">Expand All</a>')

  $('a.global-collapse').on('click', function() {
    $('.js-details-container .image, .data:not(".suppressed"), .collapse, .global-collapse').toggle();
    return false;
  });

  $('a.collapse').on('click', function() {
    $(this).parents('.js-details-container').find('.image, .data:not(".suppressed"), .collapse').toggle();
    return false;
  });
});
