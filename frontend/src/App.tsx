import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import NavBar from './components/NavBar';

const App = () => (
	<Router>
		<Switch>
			<Route path="/" component={NavBar} />
		</Switch>
		<div>CircleCI works!</div>
	</Router>
);

export default App;
