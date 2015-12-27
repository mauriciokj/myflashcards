$(document).ready(function() {
  getSelected = function(){
    var select = '';
    if ($("input[type='radio']:checked")[0] !== undefined) {
    select = $("input[type='radio']:checked")[0].value;
    }
    return select;
  };
  changeClass = function (event) {
      event.stopPropagation();
      var classes ='red blue grey yellow green'
      $(".colorDiv").removeClass(classes);
      $(".colorDiv").addClass(getSelected());
      };

    $(".special").on('click',changeClass);
    $(".colorDiv").addClass(getSelected());

});
