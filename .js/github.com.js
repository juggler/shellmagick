function setup_buttons_per_diff() {
  var collapse_btn = '<a href="#" class="minibutton tooltipped tooltipped-n collapse" aria-label="Collapse diff">Collapse</a>',
      expand_btn   = '<a href="#" class="minibutton tooltipped tooltipped-n collapse" aria-label="Expand hidden diff" style="display:none">Expand</a>'

  $('#files.diff-view .js-details-container .actions').prepend(collapse_btn);
  $('#files.diff-view .js-details-container .actions').prepend(expand_btn);

  $('a.collapse').on('click', function() {
    $(this).parents('.js-details-container').find('.image, .data:not(".suppressed"), .collapse').toggle();
    return false;
  });
}

function setup_global_buttons() {
  $('#toc').prepend('<a href="#" class="minibutton right global-collapse" style="margin-left: 10px;">Collapse All</a>')
  $('#toc').prepend('<a href="#" class="minibutton right global-collapse" style="display:none; margin-left: 10px;">Expand All</a>')

  $('a.global-collapse').on('click', function() {
    $('.js-details-container .image, .data:not(".suppressed"), .collapse, .global-collapse').toggle();
    return false;
  });
}

$(document).ready(function() {
  setup_buttons_per_diff();
  setup_global_buttons();
});
