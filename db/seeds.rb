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

{username: 'Jeff RosenStock', blurb: 'Hello. I\'m Jeff Rosenstock. In 2007 I started a free/donation-based digital label called Quote Unquote Records. I also used to be in the band Bomb the Music Industry! and then that band stopped. Now I just do this stuff. Hope you like it!', email: 'evan_dev5@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728373/jeff_banner_i8v46e.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728332/jeff_profile_amvq8f.jpg'},

{username: 'Taylor Swift', blurb: 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. One of the most popular contemporary female recording artists, she is known for narrative songs about her personal life, which has received much media attention.

Raised in Wyomissing, Pennsylvania, Swift moved to Nashville, Tennessee, at age 14 to pursue a career in country music. She signed with the independent label Big Machine Records and became the youngest artist ever signed by the Sony/ATV Music publishing house. Her eponymous debut album in 2006 peaked at number five on Billboard 200 and spent the most weeks on the chart in the 2000s. The album\'s third single, "Our Song", made her the youngest person to single-handedly write and perform a number-one song on the Hot Country Songs chart. Swift\'s second album, Fearless, was released in 2008. Buoyed by the pop crossover success of the singles "Love Story" and "You Belong with Me", Fearless became the best-selling album of 2009 in the United States. The album won four Grammy Awards, with Swift becoming the youngest Album of the Year winner.', email: 'evan_dev6@fakey.com', password: 'DevPass244', banner_url: '', image_url: ''},
])


# {username: '', blurb: '', email: 'evan_dev6@fakey.com', password: 'DevPass244', banner_url: '', image_url: ''},

{username: 'Sam Cooke', banner_url: '', image_url: '', email: 'evan_dev7@fakey.com', password: 'DevPass244', blurb: 'Sylvan Esso is an American indie pop duo from Durham, North Carolina formed in 2013. The band consists of singer Amelia Meath (Mountain Man) and producer Nick Sanborn (Megafaun, Made of Oak). They made their debut with the single "Hey Mami" and released their eponymous debut album on Partisan Records on May 12, 2014, which reached #39 on the Billboard 200. Since then they have released two further singles and toured internationally.'}


Songs = Song.create([
{artist_id: 1,title: 'Coffee', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759561/07_Coffee_exqhjv.m4a'},
{artist_id: 1,title: 'Uncatena', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759552/08_Uncatena_eiwd3d.m4a'},
{artist_id: 1,title: 'Dreamy Bruises', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759535/02_Dreamy_Bruises_m8vilb.m4a'},
{artist_id: 1,title: 'Could I Be', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759571/03_Could_I_Be_lv5hzn.m4a'},
{artist_id: 1,title: 'H.S.K.T', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759486/06_H.S.K.T._h7vpfm.m4a'},
{artist_id: 1,title: 'Play It Right', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759369/09_Play_It_Right_omjwpn.m4a'},
{artist_id: 1,title: 'Wolf', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759478/04_Wolf_hhjgq0.m4a'},
{artist_id: 1,title: 'Hey Miami', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759289/01_Hey_Mami_scdyve.m4a'},

{artist_id: 2, title: 'Chicago', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761348/01_Chicago_ainiqn.m4a'},
{artist_id: 2, title: 'Kiss Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761398/09_Kiss_Me_yhbjri.m4a'},
{artist_id: 2, title: 'Satisfied', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761426/10_Satisfied_osq2pu.m4a'},
{artist_id: 2, title: 'Bad As Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761442/08_Bad_As_Me_uhlzes.m4a'},
{artist_id: 2, title: 'Jockey Ful of Bourbon', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761481/09_Jockey_Full_of_Bourbon_u59hgg.m4a'},
{artist_id: 2, title: 'Tango Till Theyre Sore', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761488/08_Tango_Till_They_re_Sore_vp5n6b.m4a'},
{artist_id: 2, title: 'Big Black Mariah', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761581/06_Big_Black_Mariah_y3ndr5.m4a'},
{artist_id: 2, title: 'Diamonds and Gold', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761600/07_Diamonds_and_Gold_d48ddh.m4a'},
{artist_id: 2, title: 'Gun Street Girl', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761688/14_Gun_Street_Girl_ukwccr.m4a'},
{artist_id: 2, title: '', url: ''},

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
{artist_id: 5,title: 'Perfect Sound Whatever', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729282/17_Perfect_Sound_Whatever_d5h1as.mp3'},
{artist_id: 6,title: 'Shake It Off', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478757281/06_Shake_It_Off_mla0vv.mp3'},
{artist_id: 6,title: 'New Romantics', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751817/16_New_Romantics_ejt2gk.mp3'},
{artist_id: 6,title: 'Wonderland', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751770/14_Wonderland_hqdjtg.mp3'},
{artist_id: 6,title: 'I know Places', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751725/12_I_Know_Places_aa19rc.mp3'},
{artist_id: 6,title: 'Wildest Dreams', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751748/09_Wildest_Dreams_gtgnru.mp3'},
{artist_id: 6,title: 'Bad Blood', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751734/08_Bad_Blood_t6m9gx.mp3'},
{artist_id: 6,title: 'Out of the Woods', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751656/04_Out_of_the_Woods_konang.mp3'}])


#{artist_id: ,title: '', url: ''},
