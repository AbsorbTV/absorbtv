import React from 'react';
import { Box, ResponsiveContext } from 'grommet';
import { Channel } from 'grommet-icons';
import { NavLink } from 'react-router-dom';
import styled from 'styled-components';

const activeClassName = 'active';
const StyledNavLink = styled(NavLink).attrs({
	activeClassName,
})`
	&:link,
	&:visited {
		color: ${props => props.theme.global.colors.brand};
	}
	&.${activeClassName} {
		color: ${props => props.theme.global.colors['accent-1']};
	}
`;

export default () => (
	<ResponsiveContext.Consumer>
		{size => (
			<Box
				align="center"
				pad={size}
				tag="header"
				elevation="small"
				background="dark-1"
			>
				<Box direction="row" gap={size}>
					<Box>
						<Channel color="brand" />
					</Box>
					<Box>
						<StyledNavLink to="/test">Episodes</StyledNavLink>
					</Box>
					<Box>
						<StyledNavLink to="/">Series</StyledNavLink>
					</Box>
					<Box>
						<StyledNavLink to="/">Schedule</StyledNavLink>
					</Box>
					<Box>
						<StyledNavLink to="/">Search</StyledNavLink>
					</Box>
					<Box>
						<StyledNavLink to="/">Profile</StyledNavLink>
					</Box>
				</Box>
			</Box>
		)}
	</ResponsiveContext.Consumer>
);
