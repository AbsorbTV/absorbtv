import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import theme from './config/theme';
import NavBar from './components/NavBar';

const App = () => (
	<Router>
		<Switch>
			<Route path="/" component={NavBar} />
		</Switch>
	</Router>
);

export default App;
