var data_lab = {
    fetch_data: function() {
        $.getJSON('/json?zip=11206',function(data){
            console.log(data)
        })
    }
}