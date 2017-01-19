import { receiveCurrentArtist, receiveErrors } from '../actions/session_actions';

export const login = (artist, success, error) => {
	$.ajax({
		method: 'POST',
		url: '/api/session',
		data: artist,
		success,
		error
	});
};

export const guestLogin = (success, error) => {
	$.ajax({
		method:'POST',
		url: 'api/session',
		data: {artist: {username:"Beyonce", password:"password"}},
		success,
		error
	});
};

export const signup = (artist, success, error) => {
	$.ajax({
		method: 'POST',
		url: '/api/artist',
		data: artist,
		success,
		error
	});
};

export const logout = success => {
	$.ajax({
		method: 'DELETE',
		url: '/api/session',
		success,
		error: () => {
		  console.log("Logout error in SessionApiUtil#logout");
		}
	});
};
