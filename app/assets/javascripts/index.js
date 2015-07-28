$(function() {


   $('.notice').delay(500).slideDown('normal', function() {
      $(this).delay(2500).slideUp(500);
   });

   $('.loggedIn').delay(500).slideDown('normal', function() {
      $(this).delay(2500).slideUp(500);
   });

   $('.newUser').delay(500).slideDown('normal', function() {
      $(this).delay(6000).slideUp(500);
   });


});
