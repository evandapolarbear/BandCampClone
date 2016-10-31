const sample = {
currentArtist: {
	id: 1,
	name: "artist name",
	profilePicUrl: "some url",
	bannderPicUrl: "some url"
	},

authForm: {
	signUp: {errors: []},
	logIn: {errors: []},
	uploadSong: {errors: []}
	},

uploadForm: {
	artUrl: {errors: []},
	albumDescription: {errors: []},
	tracks :{
		1: {
			name: "someName",
			url: "url"
		},
		2: {
			name: "anotherName",
			url: "url"
		}
	}
},

Artist: {
	id: 1,
	name: "artist name",
	profilePicUrl: "someURL",
	bannderPicUrl: "someURL"
	},

song: {
	id: 1,
	artistId: 1,
	albumId: 1,
	songUrl: "someURL",
	songImage: "someURL"
},

album: {
	id: 1,
	bandId: 1,
	albumUrl: "someURL"
}
};
