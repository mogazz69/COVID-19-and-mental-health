
       fetch('http://127.0.0.1:5000/race')
      .then(function (response) {
          return response.json();
      }).then(function (text) {
          console.log('GET response:');
          console.log(Object.keys(text.Value));
          console.log(Object.values(text.Value));
          console.log(text.Value);
          // Initialize the echarts instance based on the prepared dom
          var data = [{

    x: Object.keys(text.Value),
    y: Object.values(text.Value),
    type: 'bar'
  }
];

Plotly.newPlot('bubble', data);
      });
        
    