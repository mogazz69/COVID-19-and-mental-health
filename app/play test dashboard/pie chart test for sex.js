
       fetch('http://127.0.0.1:5000/sex')
      .then(function (response) {
          return response.json();
      }).then(function (text) {
          console.log('GET response:');
          console.log(Object.keys(text.Value));
          console.log(Object.values(text.Value));
          console.log(text.Value);
          // Initialize the echarts instance based on the prepared dom
          var data = [{
  values: Object.values(text.Value),
  labels: Object.keys(text.Value),
  type: 'pie'
}];

var layout = {
  height: 400,
  width: 500
};

Plotly.newPlot('bar', data, layout); 
      });
        
    