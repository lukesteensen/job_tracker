jQuery.fn.dataTableExt.oSort['percent-asc']  = function(a,b) {
    var x = (a == "-") ? 0 : a.replace( /%/, "" );
    var y = (b == "-") ? 0 : b.replace( /%/, "" );
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};
 
jQuery.fn.dataTableExt.oSort['percent-desc'] = function(a,b) {
    var x = (a == "-") ? 0 : a.replace( /%/, "" );
    var y = (b == "-") ? 0 : b.replace( /%/, "" );
    x = parseFloat( x );
    y = parseFloat( y );
    return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};

$(function() {
  $('.datatable').dataTable({
    "sPaginationType": "bootstrap",
    "iDisplayLength": 25,
    "aaSorting": [ [4,'desc'], [5,'desc'] ],
    "aoColumns": [
      null,
      null,
      null,
      null,
      { "sType": "percent" },
      { "sType": "percent" },
      null,
      null,
      null
    ]
  });
});

