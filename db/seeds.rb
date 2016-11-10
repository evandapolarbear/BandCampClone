# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
Song.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!("artists")
ActiveRecord::Base.connection.reset_pk_sequence!("songs")


Artists = Artist.create([{username: 'Sylvan Esso', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478559637/esso_banner_2_o7b0t7.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478559077/esso_profile_2_qnvvwe.jpg', email: 'evan_dev@fakey.com', password: 'DevPass244', blurb: 'Sylvan Esso is an American indie pop duo from Durham, North Carolina formed in 2013. The band consists of singer Amelia Meath (Mountain Man) and producer Nick Sanborn (Megafaun, Made of Oak). They made their debut with the single "Hey Mami" and released their eponymous debut album on Partisan Records on May 12, 2014, which reached #39 on the Billboard 200. Since then they have released two further singles and toured internationally.'},

{username: 'Tom Waits', blurb: 'Thomas Alan "Tom" Waits (born December 7, 1949) is an American singer-songwriter, composer, and actor.

Waits has a distinctive voice, described by critic Daniel Durchholz as sounding like "it was soaked in a vat of bourbon, left hanging in the smokehouse for a few months, and then taken outside and run over with a car". With this trademark growl, his incorporation of pre-rock music styles such as blues, jazz, and vaudeville, and experimental tendencies verging on industrial music, Waits has built up a distinctive musical persona. He has worked as a composer for movies and musicals and has acted in supporting roles in films, including Paradise Alley and Bram Stoker\'s Dracula. He also starred in Jim Jarmusch\'s 1986 film Down by Law. He was nominated for an Academy Award for his soundtrack work on One from the Heart.', email: 'evan_dev1@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478561003/tom_waits_banner_2_mddxlq.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560127/tom_waits_profile_2_mugxcb.jpg'},

{username: 'Beyonce', blurb: 'Beyoncé Giselle Knowles-Carter (born September 4, 1981) is an American singer, songwriter and actress. Born and raised in Houston, Texas, she performed in various singing and dancing competitions as a child and rose to fame in the late 1990s as lead singer of R&B girl-group Destiny\'s Child. Managed by her father, Mathew Knowles, the group became one of the world\'s best-selling girl groups of all time. Their hiatus saw the release of Beyoncé\'s debut album, Dangerously in Love (2003), which established her as a solo artist worldwide, earned five Grammy Awards and featured the Billboard Hot 100 number-one singles "Crazy in Love" and "Baby Boy".', email: 'evan_dev2@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560829/Beyonce_banner_2_cxjbxf.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560551/beyonce_profile_2_i8uesk.jpg'},

{username: 'PUP', blurb: 'Pup (stylized as PUP) is a Canadian punk rock band formed in Toronto, Ontario in 2013, originally under the name Topanga. Pup\'s self-titled debut album was released on October 8, 2013 on Royal Mountain Records. In December 2013, Pup signed with SideOneDummy Records and re-released their debut album in the United States on April 8, 2014. The group was in the studio in late 2015 recording their second album The Dream Is Over which was released on May 27, 2016 through SideOneDummy.', email: 'evan_dev3@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478562247/pup_banner_a2fw4w.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478561998/pup_profile_3_egcjhq.jpg'},

{username: 'Jeff RosenStock', blurb: 'Hello. I\'m Jeff Rosenstock. In 2007 I started a free/donation-based digital label called Quote Unquote Records. I also used to be in the band Bomb the Music Industry! and then that band stopped. Now I just do this stuff. Hope you like it!', email: 'evan_dev5@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728373/jeff_banner_i8v46e.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728332/jeff_profile_amvq8f.jpg'}])


# {username: '', blurb: '', email: 'evan_dev5@fakey.com', password: 'DevPass244', banner_url: '', image_url: ''},


Songs = Song.create([
{artist_id: 1,title: 'esso test 1', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 1,title: 'esso test 2', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 1,title: 'esso test 3', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},

{artist_id: 2,title: 'waits 1', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 2,title: 'waits 2', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 2,title: 'waits 3', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},

{artist_id: 3,title: 'beyonce 1', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 3,title: 'beyonce 2', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 3,title: 'beyonce 3', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},

{artist_id: 4,title: 'pup 1', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 4,title: 'pup 2', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},
{artist_id: 4,title: 'pup 3', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478565866/01_Welcome_To_New_York_va0u9v.mp3'},

{artist_id: 5,title: 'We Begged to Explode', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478728727/01_We_Begged_2_Explode_ujqfkp.mp3'},
{artist_id: 5,title: 'Pash Rash', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478728817/02_Pash_Rash_ndx5af.mp3'},
{artist_id: 5,title: 'Festival Song', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478728934/03_Festival_Song_ir5u65.mp3'},
{artist_id: 5,title: 'Staring Out The Window at Your Old Apartment', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729159/04_Staring_Out_The_Window_At_Your_Old_Apartment_slr1zi.mp3'},
{artist_id: 5,title: 'Wave Goodnight To Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729173/05_Wave_Goodnight_To_Me_a0nd28.mp3'},
{artist_id: 5,title: 'To Be A Ghost', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729267/06_To_Be_A_Ghost_s2xgh0.mp3'},
{artist_id: 5,title: 'I Did Something Weird Last Night', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729249/08_I_Did_Something_Weird_Last_Night_yxauld.mp3'},
{artist_id: 5,title: 'While You\'re alive', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729196/16_While_You_re_Alive_axn2e3.mp3'},
{artist_id: 5,title: 'Perfect Sound Whatever', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729282/17_Perfect_Sound_Whatever_d5h1as.mp3'}])


# {artist_id: 5,title: 'Festival Song', url: ''}
