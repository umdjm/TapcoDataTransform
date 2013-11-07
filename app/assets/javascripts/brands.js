
function toggleJSON()
{
   $("#json_output").toggle();
   if($("#json_output").is(":visible"))
      $("#show_json_button").text("Hide JSON");
   else 
      $("#show_json_button").text("Show JSON");
}

