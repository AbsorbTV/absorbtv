import React from 'react';
import { NavLink } from 'react-router-dom';
import styled from 'styled-components';

const activeClassName = 'active';
const StyledNavLink = styled(NavLink).attrs({
	activeClassName,
})`
	&:link,
	&:visited {
		color: ${({ theme }) => theme && theme.colors && theme.colors.brand};
	}
	&.${activeClassName} {
		color: ${({ theme }) => theme && theme.colors && theme.colors.brand};
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
