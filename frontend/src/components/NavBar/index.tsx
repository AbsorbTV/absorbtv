import React from 'react';
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
	<>
		<StyledNavLink to="/test">Episodes</StyledNavLink>
		<StyledNavLink to="/">Series</StyledNavLink>
		<StyledNavLink to="/">Schedule</StyledNavLink>
		<StyledNavLink to="/">Search</StyledNavLink>
		<StyledNavLink to="/">Profile</StyledNavLink>
	</>
);
