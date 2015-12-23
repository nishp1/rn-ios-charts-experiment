/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} = React;

var BarChart = require('./components/BarChart');

var ChartsTest = React.createClass({
  render: function() {
    let months = ["Q1", "Q2", "Q3", "Q4"]
    let unitsSold = [20.0, 4.0, 6.0, 3.0]
    return (
      <BarChart
        labels={months}
        values={unitsSold}
        style={styles.chart}/>
    );
  }
});

var styles = StyleSheet.create({
  chart: {
    position: 'absolute',
    top: 100,
    left: 0,
    bottom: 100,
    right: 0,
  },
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('ChartsTest', () => ChartsTest);
