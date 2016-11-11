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

{username: 'Jeff Rosenstock', blurb: 'Hello. I\'m Jeff Rosenstock. In 2007 I started a free/donation-based digital label called Quote Unquote Records. I also used to be in the band Bomb the Music Industry! and then that band stopped. Now I just do this stuff. Hope you like it!', email: 'evan_dev5@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728373/jeff_banner_i8v46e.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478728332/jeff_profile_amvq8f.jpg'},

{username: 'Taylor Swift', blurb: 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. One of the most popular contemporary female recording artists, she is known for narrative songs about her personal life, which has received much media attention.

Raised in Wyomissing, Pennsylvania, Swift moved to Nashville, Tennessee, at age 14 to pursue a career in country music. She signed with the independent label Big Machine Records and became the youngest artist ever signed by the Sony/ATV Music publishing house. Her eponymous debut album in 2006 peaked at number five on Billboard 200 and spent the most weeks on the chart in the 2000s. The album\'s third single, "Our Song", made her the youngest person to single-handedly write and perform a number-one song on the Hot Country Songs chart. Swift\'s second album, Fearless, was released in 2008. Buoyed by the pop crossover success of the singles "Love Story" and "You Belong with Me", Fearless became the best-selling album of 2009 in the United States. The album won four Grammy Awards, with Swift becoming the youngest Album of the Year winner.', email: 'evan_dev6@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478813638/swift_banner_amffgk.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478813630/swift_banner_h6hobl.jpg'},

{username: 'Sam Cooke', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478813870/sam_cooke_banner_hgfv2h.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478813768/sam_cooke_profile_rzglyy.jpg', email: 'evan_dev7@fakey.com', password: 'DevPass244', blurb: 'Sylvan Esso is an American indie pop duo from Durham, North Carolina formed in 2013. The band consists of singer Amelia Meath (Mountain Man) and producer Nick Sanborn (Megafaun, Made of Oak). They made their debut with the single "Hey Mami" and released their eponymous debut album on Partisan Records on May 12, 2014, which reached #39 on the Billboard 200. Since then they have released two further singles and toured internationally.'},

{username: 'Miles Davis', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478814598/miles_davis_banner_vfajkl.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478814601/miles_davis_profile_l8vmyj.jpg', email: 'evan_dev8@fakey.com', password: 'DevPass244', blurb: 'Miles Dewey Davis III (May 26, 1926 – September 28, 1991) was an American jazz trumpeter, bandleader, and composer. He is among the most influential and acclaimed figures in the history of jazz and 20th century music. With his ever-changing directions in music, Davis was at the forefront of a number of major stylistic developments in jazz over his five-decade career.

Born and raised in Illinois, Davis began performing in 1940s New York with saxophonist Charlie Parker before recording the Birth of the Cool sessions for Capitol Records, which were instrumental to the development of cool jazz. In the early 1950s, he recorded some of the earliest hard bop music while on Prestige Records but did so haphazardly due to a heroin addiction. After a widely acclaimed comeback performance at the Newport Jazz Festival in 1955, he signed a long-term contract with Columbia Records and recorded the 1957 album Round About Midnight. It was his first work with saxophonist John Coltrane and bassist Paul Chambers, key members of the sextet he led into the early 1960s. During this period, he alternated between orchestral jazz collaborations with arranger Gil Evans, such as the Spanish music-influenced Sketches of Spain (1960), and band recordings, such as Milestones (1958) and Kind of Blue (1959). The latter featured harmonies developed by pianist Bill Evans and was an innovative work in the emerging modal jazz style, eventually becoming arguably the most popular jazz album ever.'},

{username: 'St. Paul & The Broken Bones', blurb: 'St. Paul and The Broken Bones is a six-piece soul band based out of Birmingham, Alabama, United States, which formed in 2012. The band is composed of Paul Janeway (vocals), Browan Lollar (guitar), Jesse Phillips (bass), Andrew Lee (drums), Al Gamble (keys), and Allen Branstetter (trumpet). The band tours with both trombone and baritone saxophone as well. They have released two album and two EPs while touring internationally.', email: 'evan_dev9@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478815890/st_paul_banner_t3wjrf.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478815877/st_paul_profile_sx7wga.jpg'},

{username: 'Wilco', blurb: 'Wilco is an American alternative rock band based in Chicago, Illinois. The band was formed in 1994 by the remaining members of alternative country group Uncle Tupelo following singer Jay Farrar\'s departure. Wilco\'s lineup changed frequently during its first decade, with only singer Jeff Tweedy and bassist John Stirratt remaining from the original incarnation. Since early 2004, the lineup has been unchanged, consisting of Tweedy, Stirratt, guitarist Nels Cline, multi-instrumentalist Pat Sansone, keyboard player Mikael Jorgensen, and drummer Glenn Kotche. Wilco has released ten studio albums, a live double album, and four collaborations: three with Billy Bragg and one with The Minus 5.

Wilco\'s music has been inspired by a wide variety of artists and styles, including Bill Fay, The Beatles and Television, and has in turn influenced music by a number of modern alternative rock acts. The band continued in the alternative country style of Uncle Tupelo on its debut album A.M. (1995), but has since introduced more experimental aspects to their music, including elements of alternative rock and classic pop. Wilco\'s musical style has evolved from a 1990s country rock sound to a current "eclectic indie rock collective that touches on many eras and genres."', email: 'evan_dev10@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478818690/wilco_banner_pt8e7z.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478818668/wilco_profile_xt3yru.jpg'},

{username: 'The National', blurb: 'The National is an American indie rock band from Cincinnati, Ohio, formed in 1999. Currently based in Brooklyn, the band consists of Matt Berninger (vocals), Aaron Dessner (guitar, keyboards), Bryce Dessner (guitar), Scott Devendorf (bass) and Bryan Devendorf (drums).

Founded by Berninger, Aaron Dessner, and Scott and Bryan Devendorf, The National released their self-titled debut album, The National (2001), on Brassland Records, an independent record label founded by Dessner and his twin brother, Bryce Dessner. Bryce, who had assisted in recording the album, soon joined the band, participating as a full member in the recording of its follow-up, Sad Songs for Dirty Lovers (2003).

Leaving behind their day jobs, the National signed with Beggars Banquet Records and released their third studio album, Alligator (2005), to widespread critical acclaim. The band\'s fourth and fifth studio albums, Boxer (2007) and High Violet (2010), increased their exposure significantly. In 2013, the band released its sixth studio album, Trouble Will Find Me. It was nominated in the 2014 Grammys for Best Alternative Album.

Four of the band\'s albums were included on NME\'s 2013 list of the 500 greatest albums of all time.', email: 'evan_dev12@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478820239/national_banner_zokwsg.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478820180/national_profile_2_et5dqm.jpg'},

{username: 'Shakey Graves', blurb: 'Shakey Graves (born Alejandro Rose-Garcia on June 4, 1987) is an Americana musician from Austin, Texas, United States.[1]

His music is a cross between blues, folk and rock and roll – he performs at many large festivals and concert venues around the United States. Alejandro Rose-Garcia received his iconic stage name at Old Settler\'s Music Festival in 2007 after he and his friends jokingly gave each other Indian guide names over a campfire. After an inspired night of playing music, he decided to keep the name.[2]

Shakey Graves became known for his one-man band set up and most of his debut album Roll the Bones is Rose-Garcia playing unaccompanied by other musicians. When he began working on his sophomore album, And the War Came, Rose-Garcia added musicians to his recording process and live set. Three songs from And the War Came are duets with ex-Paper Bird member Esme Patterson. The album was produced, engineered and mixed by Chris Boosahda. Boosahda also contributes drums, vocals, percussion and music for the song Big Time Nashville Star to the ATWC album. Patrick O\'Connor, from the LA music scene, plays guitar and bass at various live shows as the project and tours have moved forward as a revolving duo and trio.', email: 'evan_dev13@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478821254/shakey_banner_eyavue.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478821253/shakey_profile_m7qc1a.jpg'}
])


# {username: '', blurb: '', email: 'evan_dev14@fakey.com', password: 'DevPass244', banner_url: '', image_url: ''},



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

{artist_id: 4,title: 'Dvp', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815507/02_Dvp_qcfgdr.m4a'},
{artist_id: 4,title: 'Can\'t Win', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815594/08_Can_t_Win_xpnfgp.m4a'},
{artist_id: 4,title: 'Familiar Patterns', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815601/09_Familiar_Patterns_ld9tb7.m4a'},
{artist_id: 4,title: 'Reservoir', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815632/02_Reservoir_fdufmr.m4a'},
{artist_id: 4,title: 'Dark Days', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815753/06_Dark_Days_iewgin.m4a'},
{artist_id: 4,title: 'Cul-de-sac', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815758/08_Cul-De-Sac_vcbayq.m4a'},
{artist_id: 4,title: 'Never Try', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815780/04_Never_Try_wqwt0b.m4a'},

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
{artist_id: 6,title: 'Out of the Woods', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478751656/04_Out_of_the_Woods_konang.mp3'},

{artist_id: 7, title: 'You Send Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814072/01_You_Send_Me_lk2hyn.mp3'},
{artist_id: 7, title: 'Thats It I Quit', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814173/11_That_s_It_I_Quit_I_m_Movin_On_hriv4u.mp3'},
{artist_id: 7, title: 'Little Red Rooster', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814233/21_Little_Red_Rooster_mcaf8j.mp3'},
{artist_id: 7, title: 'Somebody Have Mercy', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814256/18_Somebody_Have_Mercy_jmb36i.mp3'},
{artist_id: 7, title: 'Bring It Home To Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814300/15_Bring_It_On_Home_To_Me_tfgukz.mp3'},
{artist_id: 7,title: 'Chain Gang', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814310/09_Chain_Gang_dccg7w.mp3'},

{artist_id: 8,title: 'So What', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815500/01_So_What_aanmc5.mp3'},
{artist_id: 8,title: 'Freddie Freeloader', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815645/02_Freddie_Freeloader_grr9fk.mp3'},
{artist_id: 8,title: 'Summertime', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815007/Summertime_qzwoip.mp3'},
{artist_id: 8,title: 'E.S.P', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815258/2-10_E.S.P._glokal.m4a'},
{artist_id: 8,title: 'Boplicity', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815063/7._Boplicity-Miles_Davis_tjepkw.mp3'},

{artist_id: 9, title: 'Like A Mighty River', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816364/04_Like_a_Mighty_River_qiijkt.mp3'},
{artist_id: 9, title: 'Half The City', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816401/08_Half_the_City_wqdpon.mp3'},
{artist_id: 9, title: 'Dont Mean A Thing', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816408/02_Don_t_Mean_a_Thing_n7qeka.mp3'},
{artist_id: 9, title: 'I\'m Torn Up', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816778/01_I_m_Torn_Up_i6fpof.mp3'},
{artist_id: 9, title: 'That Glow', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816861/05_That_Glow_cvggkh.mp3'},
{artist_id: 9, title: 'Broken Bones & Pocket Change', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816884/06_Broken_Bones_Pocket_Change_kowkhi.mp3'},

{artist_id: 10, title: 'Ekg', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478818935/01_Ekg_rzkaqm.m4a'},
{artist_id: 10, title: 'Either Way', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478818999/01_Either_Way_thbcqq.mp3'},
{artist_id: 10, title: 'Side With The Seeds', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819019/05_Side_With_The_Seeds_c1wbs4.mp3'},
{artist_id: 10, title: 'Heavy Metal Drummer', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819430/07_Heavy_Metal_Drummer_cmhdqn.mp3'},
{artist_id: 10, title: 'I Am Trying To Break Your Heart', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819666/01_I_Am_Trying_To_Break_Your_Heart_1_pi16vp.mp3'},
{artist_id: 10, title: 'Whole Love', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819628/11_Whole_Love_angzdh.m4a'},
{artist_id: 10, title: 'A Shot In The Arm', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819653/03_A_Shot_In_the_Arm_f91znp.m4a'},
{artist_id: 10, title: 'Can\'t Stand It', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819619/01_Can_t_Stand_It_fzwtql.m4a'},
{artist_id: 10, title: 'Impossible Germany', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819676/03_Impossible_Germany_avmprm.mp3'},

{artist_id: 11, title: 'Graceless', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820809/08_Graceless_th0j42.m4a'},
{artist_id: 11, title: 'Sea of Love', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820776/05_Sea_of_Love_ffiivu.m4a'},
{artist_id: 11, title: 'Wake Up Your Saints', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820596/Wake_Up_Your_Saints_vvxmjo.mp3'},
{artist_id: 11, title: 'Bloodbuzz Ohio', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820747/06_Bloodbuzz_Ohio_afmr70.m4a'},
{artist_id: 11, title: 'Terrible Love', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820746/01_Terrible_Love_ved88r.m4a'},
{artist_id: 11, title: 'Wasp Nest', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820493/Wasp_Nest_nfsxdx.mp3'},
{artist_id: 11, title: 'Racing Like A Pro', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820649/10_Racing_Like_a_Pro_x9salk.m4a'},
{artist_id: 11, title: 'Fake Empire', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820609/01_Fake_Empire_vmn2l8.m4a'},
{artist_id: 11, title: 'The Thrilling Of Claire', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820401/The_Thrilling_Of_Claire_a58bw2.mp3'},

{artist_id: 12, title: 'Built To Roam', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821564/02_Built_To_Roam_ulicty.m4a'},
{artist_id: 12, title: 'The Perfect Parts', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821733/04_The_Perfect_Parts_nsyjyl.m4a'},
{artist_id: 12, title: 'I\'m On Fire', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821565/04_I_m_On_FIre_magc8d.m4a'},
{artist_id: 12, title: 'Family & Genus', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821783/06_Family_and_Genus_jlpmtn.m4a'},
{artist_id: 12, title: 'Dearly Departed', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821783/03_Dearly_Departed_feat._Esme%CC%81_Patterson_zg3qqv.m4a'},
{artist_id: 12, title: 'Business Lunch', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821760/06_Business_Lunch_as83qw.m4a'},
{artist_id: 12, title: 'Georgia Moon', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821591/05_Georgia_Moon_paqkcf.m4a'}
])






#{artist_id: , title: '', url: ''},
