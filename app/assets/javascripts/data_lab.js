var data_lab = {
    //this object holds our response data
    "fetched_data": {},
    //an array that holds our formatted data
    "formatted_data": [],
    //this function fetches our data from our API
    fetch_data: function() {
        $.getJSON('/json?zip=11206',function(data){
            data_lab.fetched_data = data;
        })
    },
    //format API data into Morris.js-readable format
    format_data: function(data_array_of_objects) {
        //call underscore method on data array
        _.each(data_array_of_objects,
            function(object){
                //perform the following operations
                //on each element of array
                // console.log(object.CURRENTGRADE)
                var current_grade = object.CURRENTGRADE;
                var score = object.SCORE;

                data_lab.formatted_data.push({
                    "current_grade" : current_grade,
                    "score" : score
                })

            });
    },
    make_chart: function(data){

        var data = data;
        
        new Morris.Bar({
          // ID of the element in which to draw the chart.
          element: 'myfirstchart',
          // Chart data records -- each entry in this array corresponds to a point on
          // the chart.
          data: data,
          // The name of the data record attribute that contains x-values.
          xkey: "current_grade",
          // A list of names of data record attributes that contain y-values.
          ykeys: ["score"],
          // Labels for the ykeys -- will be displayed when you hover over the
          // chart.
          labels: ['Value']
        });
    }
}

$(function(){
    $('#make_chart').on('click',function(){
        // e.preventDefault();
        //gets some data
        data_lab.fetch_data()
        //formats the data for Morris JS
        data_lab.format_data(data_lab.fetched_data)
        //makes some chart.
        data_lab.make_chart(data_lab.formatted_data)
    })
})