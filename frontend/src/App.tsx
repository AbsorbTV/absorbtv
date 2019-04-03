import React from 'react';
import { Grommet } from 'grommet';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import theme from './config/theme';
import NavBar from './components/NavBar';

const App = () => (
	<Grommet theme={theme}>
		<Router>
			<Switch>
				<Route path="/" component={NavBar} />
			</Switch>
		</Router>
	</Grommet>
);

export default App;
