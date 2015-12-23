var React = require('react-native');

var {
  requireNativeComponent
} = React;

let RNBarChart = requireNativeComponent('RNBarChartSwift', BarChart);

var BarChart = React.createClass({
  render: function() {
    const { labels, values, ...otherProps} = this.props;
    return <RNBarChart
      chartLabels={labels}
      chartValues={values}
      {...otherProps}/>;
  }
});

BarChart.propTypes = {
  labels: React.PropTypes.array.isRequired,
  values: React.PropTypes.array.isRequired,
}

module.exports = BarChart;