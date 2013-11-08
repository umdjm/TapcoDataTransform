
function toggleJSON()
{
   $("#json_output").toggle();
   if($("#json_output").is(":visible"))
      $("#show_json_button").text("Hide JSON");
   else 
      $("#show_json_button").text("Show JSON");
}

function toggleImageJSON()
{
   $("#image_output").toggle();
   if($("#image_output").is(":visible"))
      $("#image_button").text("Hide Image Config");
   else
      $("#image_button").text("Show Image Config");
}



