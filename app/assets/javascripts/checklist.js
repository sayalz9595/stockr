$(document).on('turbolinks:load',function() {
  $("#selectAll").click(function(){
    if ($(this).is(":checked")) {
      $(":checkbox").each(function(){
        this.checked = true;
      });
    }
    else {
      $(":checkbox").each(function(){
        this.checked = false;
      });
    }
  });
});



// OR

// $(document).ready(function(){
//   $("#selectAll").click(function(){
//     if ($(this).is(":checked")) {
//       $("input[name*='stock']").each(function(){
//         this.checked = true;
//       });
//     }
//     else {
//       $("input[name*='stock']").each(function(){
//         this.checked = false;
//       });
//     }
//   });
// });
