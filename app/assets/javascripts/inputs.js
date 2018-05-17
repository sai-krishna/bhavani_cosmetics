$(document).ready(function(){
  $('input.datepicker').datepicker({
    format: 'd-m-yyyy',
    orientation: 'bottom',
    autoclose: true
  });

  $(".retailer-search").select2({
    placeholder: "Search for a retailer",
    allowClear: true,
    minimumInputLength: 3,
    ajax: {
      url: '/retailers/search',
      dataType: 'json',
      quietMillis: 250,
      data: function(term, page) {
        var query = {
          term: term,
          page: page
        }
        return query;
      },
      results: function (data, page) {
        var more = (page * 10) < data.total_count; 
        return { results: data.retailers, more: more };
      },
      cache: true
    }
  });
});
