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


Artists = Artist.create([
{username: 'Sylvan Esso', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478559637/esso_banner_2_o7b0t7.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478559077/esso_profile_2_qnvvwe.jpg', email: 'evan_dev@fakey.com', password: 'DevPass244', blurb: 'Sylvan Esso is an American indie pop duo from Durham, North Carolina formed in 2013. The band consists of singer Amelia Meath (Mountain Man) and producer Nick Sanborn (Megafaun, Made of Oak). They made their debut with the single "Hey Mami" and released their eponymous debut album on Partisan Records on May 12, 2014, which reached #39 on the Billboard 200. Since then they have released two further singles and toured internationally.'},

{username: 'Tom Waits', blurb: 'Thomas Alan "Tom" Waits (born December 7, 1949) is an American singer-songwriter, composer, and actor.

Waits has a distinctive voice, described by critic Daniel Durchholz as sounding like "it was soaked in a vat of bourbon, left hanging in the smokehouse for a few months, and then taken outside and run over with a car". With this trademark growl, his incorporation of pre-rock music styles such as blues, jazz, and vaudeville, and experimental tendencies verging on industrial music, Waits has built up a distinctive musical persona. He has worked as a composer for movies and musicals and has acted in supporting roles in films, including Paradise Alley and Bram Stoker\'s Dracula. He also starred in Jim Jarmusch\'s 1986 film Down by Law. He was nominated for an Academy Award for his soundtrack work on One from the Heart.', email: 'evan_dev1@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478561003/tom_waits_banner_2_mddxlq.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560127/tom_waits_profile_2_mugxcb.jpg'},

{username: 'Beyonce', blurb: 'Beyoncé Giselle Knowles-Carter (born September 4, 1981) is an American singer, songwriter and actress. Born and raised in Houston, Texas, she performed in various singing and dancing competitions as a child and rose to fame in the late 1990s as lead singer of R&B girl-group Destiny\'s Child. Managed by her father, Mathew Knowles, the group became one of the world\'s best-selling girl groups of all time. Their hiatus saw the release of Beyoncé\'s debut album, Dangerously in Love (2003), which established her as a solo artist worldwide, earned five Grammy Awards and featured the Billboard Hot 100 number-one singles "Crazy in Love" and "Baby Boy".', email: 'guest', password: 'password', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560829/Beyonce_banner_2_cxjbxf.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478560551/beyonce_profile_2_i8uesk.jpg'},

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

{username: 'Shakey Graves', blurb: 'Shakey Graves (born Alejandro Rose-Garcia on June 4, 1987) is an Americana musician from Austin, Texas, United States.

His music is a cross between blues, folk and rock and roll – he performs at many large festivals and concert venues around the United States. Alejandro Rose-Garcia received his iconic stage name at Old Settler\'s Music Festival in 2007 after he and his friends jokingly gave each other Indian guide names over a campfire. After an inspired night of playing music, he decided to keep the name.

Shakey Graves became known for his one-man band set up and most of his debut album Roll the Bones is Rose-Garcia playing unaccompanied by other musicians. When he began working on his sophomore album, And the War Came, Rose-Garcia added musicians to his recording process and live set. Three songs from And the War Came are duets with ex-Paper Bird member Esme Patterson. The album was produced, engineered and mixed by Chris Boosahda. Boosahda also contributes drums, vocals, percussion and music for the song Big Time Nashville Star to the ATWC album. Patrick O\'Connor, from the LA music scene, plays guitar and bass at various live shows as the project and tours have moved forward as a revolving duo and trio.', email: 'evan_dev13@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478821254/shakey_banner_eyavue.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1478821253/shakey_profile_m7qc1a.jpg'},

{username: 'Matt & Kim', blurb: 'Matt and Kim (sometimes stylized Matt & Kim) are an American indie electronic duo from Brooklyn, New York. The group formed in 2004 and consists of Matt Johnson (vocals/keyboards) and Kim Schifino (drums).  The duo is known for its upbeat dance music and energetic live shows which often incorporate samples from other artists. Although they started their career playing shows in lofts and other close-quarters venues, they have since performed at numerous festivals, including Bonnaroo, Coachella, and the Firefly Music Festival.', email: 'evan_dev14@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484785701/m_kbanner_wdmijl.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484785701/m_k_weylao.jpg'},

{username: 'Brian Fallon', blurb: "Brian Fallon (born January 28, 1980) is an American singer, songwriter, and guitarist. He is best known as the lead vocalist, guitarist, and songwriter of the rock band The Gaslight Anthem, with whom he has recorded five studio albums. He is also a member of the duo The Horrible Crowes, alongside The Gaslight Anthem's guitar technician and touring guitarist Ian Perkins.", email: 'evan_dev15@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484786682/BFb_zohkhf.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484786683/BFp_sjuwtc.jpg'},

{username: 'Anderson Paak', blurb: "Brandon Paak Anderson (born February 8, 1986), known professionally as Anderson Paak (stylized as Anderson .Paak), is an American singer, songwriter, rapper, drummer, and record producer from Ventura, California. He released his debut album, O.B.E. Vol. 1 in 2012, under the pseudonym Breezy Lovejoy. He went on to release Venice in 2014, under his current moniker. Paak followed with Malibu, in 2016, which received a nomination for Best Urban Contemporary Album at the Grammy Awards.", email: 'evan_dev16@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484787452/apb_nxueyi.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484787446/app_vus5gi.jpg'},

{username: 'Vince Staples', blurb: "Vincent 'Vince' Staples (born July 2, 1993) is an American rapper from Long Beach, California. He is part of the hip hop trio Cutthroat Boyz, alongside fellow Californian rappers A$ton Matthews and Joey Fatts. Staples was once a close associate of Odd Future, in particular Mike G and Earl Sweatshirt. He is currently signed to Blacksmith Records, ARTium Recordings and Def Jam Recordings.

Staples rose to prominence with appearances on albums by Odd Future members and his collaborative mixtape titled Stolen Youth with Mac Miller, who produced the project. In October 2014, he released his debut EP Hell Can Wait, which included the singles 'Hands Up' and 'Blue Suede'. His debut album, Summertime '06, was released on June 30, 2015, to critical acclaim. He was also featured as a part of the XXL 2015 Freshman Class.", email: 'evan_dev17@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484788399/vsb_qzb0vb.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484788398/vsp_g6ixyj.jpg'},

{username: 'Iron Chic', blurb: 'Iron Chic is an American punk rock band from Long Island, New York. The band is made up of Phil Douglas, Jason Lubrano, Gordon Lafler, Mike Bruno, Jesse Litwa. They have released records on both Bridge Nine Records, Dead Broke Records and Side One Dummy. Both their full length albums have received positive reviews on websites such as Pitchfork and punknews.org. In February 2016, it was announced that the band had signed with record label SideOneDummy for a new, upcoming record.', email: 'evan_dev18@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484799626/icb_bylhby.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484799631/ICp_urnsrd.jpg'},

{username: 'Odesza', blurb: "Odesza (stylized as ODESZA) are an American electronic music duo from Seattle consisting of Harrison Mills and Clayton Knight. The group was formed in 2012 shortly before Mills and Knight graduated from Western Washington University.

Their debut album, Summer's Gone, was released in 2012 to much acclaim in the underground electronic music community. Odesza followed Summer's Gone with their first EP, My Friends Never Die, in 2013 and their second studio album, In Return, in 2014. The duo released In Return (Deluxe Edition) on September 18, 2015 via Counter Records, an extended version of the original album plus three live recordings all featuring a horn section, instrumentals, and a new track “Light (featuring Little Dragon)”. On December 7th, 2015, ODESZA’s “Say My Name (RAC mix)” was nominated for Best Remixed Recording, Non-Classical at the 58th Annual Grammy Awards.", email: 'evan_dev19@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484850213/odb_jm4s6i.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484850206/odp_rf89mr.jpg'},

{username: 'Justin Beiber', blurb: 'Justin Drew Bieber is a Canadian singer and songwriter. After a talent manager discovered him through his YouTube videos covering songs in 2008 and signed to RBMG, Bieber released his debut EP, My World, in late 2009. It was certified Platinum in the U.S. He became the first artist to have seven songs from a debut record chart on the Billboard Hot 100. Bieber released his first full-length studio album, My World 2.0, in 2010. It debuted at or near number one in several countries and was certified triple Platinum in the U.S. It was preceded by his most successful single to date, "Baby".

Following his debut album, he had his first headlining tour, the My World Tour, released the remix albums My Worlds Acoustic and Never Say Never – The Remixes—and the 3D biopic-concert film Justin Bieber: Never Say Never. He released his second studio album, Under the Mistletoe, in November 2011, when it debuted at number one on the Billboard 200. Bieber released his third studio album, Believe, in 2012. His fourth studio album Purpose was released in November 2015. His U.S. album and singles sales total 44.7 million. He has sold an estimated 100 million records, making him one of the world’s best-selling music artists.', email: 'evan_dev20@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484850215/jbb_adqkfw.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484850202/jbp_quasqu.jpg'},

{username: 'Adele', blurb: "Adele is an English singer-songwriter. Graduating from the BRIT School for Performing Arts and Technology in 2006, Adele was given a recording contract by XL Recordings after a friend posted her demo on Myspace the same year. In 2007, she received the Brit Awards 'Critics' Choice' award and won the BBC Sound of 2008 poll. Her debut album, 19, was released in 2008 to commercial and critical success. It is certified seven times platinum in the UK, and three times platinum in the US. An appearance she made on Saturday Night Live in late 2008 boosted her career in the US. At the 51st Grammy Awards in 2009, Adele received the awards for Best New Artist and Best Female Pop Vocal Performance.

Adele released her second studio album, 21, in early 2011. The album was well received critically and surpassed the success of her debut, earning the singer numerous awards in 2012, among them a record-tying six Grammy Awards, including Album of the Year; two Brit Awards, including British Album of the Year, and three American Music Awards. The album has been certified 16 times platinum in the UK, and is the fourth best-selling album in the UK of all time.[5] In the US it has held the top position longer than any album since 1985, and is certified Diamond. The album has sold 31 million copies worldwide.", email: 'evan_dev21@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484852942/ab_myjuo6.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1484852945/ap_ghh9ck.jpg'},

{username: 'Bruno Mars', blurb: 'Peter Gene Hernandez (born October 8, 1985), known professionally as Bruno Mars, is an American singer-songwriter, multi-instrumentalist, record producer, and choreographer. Born and raised in Honolulu, Hawaii, by a family of musicians, Mars began making music at a young age and performed in various musical venues in his hometown throughout his childhood. He graduated from high school and moved to Los Angeles to pursue a musical career. After being dropped by Motown Records, Mars signed a recording contract with Atlantic Records in 2009.', email: 'evan_dev22@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485237185/bmb_dgno4y.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485237184/bmp_o5cyus.jpg'},

{username: 'Drake', blurb: "Aubrey Drake Graham (born October 24, 1986), known simply as Drake, is a Canadian rapper, singer, songwriter, record producer, and actor. Drake initially gained recognition as an actor on the teen drama television series Degrassi: The Next Generation in the early 2000s. Intent on pursuing a career as a rapper, he departed the series in 2007 following the release of his debut mixtape, Room for Improvement. He released two further independent projects, Comeback Season and So Far Gone, before signing to Lil Wayne's Young Money Entertainment in June 2009.", email: 'evan_dev23@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485237321/db_wuux6l.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485237321/dp_busnvw.jpg'},

{username: 'Flume', blurb: "Harley Edward Streten, known professionally as Flume, is an Australian record producer, musician and DJ. His self-titled debut studio album, Flume, was released on 9 November 2012 to positive reviews, topping the ARIA Albums Chart and reaching double-platinum accreditation in Australia.

Flume has remixed songs by artists such as Lorde, Sam Smith, Arcade Fire and Disclosure. His second studio album, Skin, was released on 27 May 2016, to positive reviews and also topped the ARIA Albums Chart. The album is also nominated for 2 2017 Grammy Awards.", email: 'evan_dev24@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485239615/fb_bynpb3.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485239613/fp_topfhe.jpg'},

{username: 'Son Lux', blurb: "Son Lux was founded in 2007 by Ryan Lott; in 2014 Rafiq Bhatia and Ian Chang joined the band. Son Lux has released four LP's At War with Walls & Mazes (2008), We Are Rising (2011), Lanterns (2013), and Bones (2015). Son Lux has collaborated with a number of musicians, including Lorde, Beyoncé producer Boots, Woodkid, Sufjan Stevens, Matthew Dear, Busdriver, the Royal Concertgebouw Orchestra, Vijay Iyer, Nico Muhly and Pulitzer Prize winner Caroline Shaw.", email: 'evan_dev25@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485239939/slb_bthkbm.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485239937/slp_zgvbl1.jpg'},

{username: 'Tokimonsta', blurb: "Jennifer Lee, better known by her stage name Tokimonsta (often styled as TOKiMONSTA), is an American record producer and DJ from Los Angeles, California. She has collaborated with Thirsty Fish, Kool Keith, MNDR. & Anderson Paak. She has also remixed tracks by Andreya Triana, Daedelus, Jodeci, and Justin Timberlake.", email: 'evan_dev26@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485239939/slb_bthkbm.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485277077/tmb_wrshsf.jpg'},

{username: 'Jai Paul', blurb: "Jai Paul (born 30 June 1988) is an English singer, songwriter, producer, and recording artist from Rayners Lane, United Kingdom. He is signed to XL Recordings.", email: 'evan_dev27@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485278287/jpp_vvpwzu.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485278288/jpb_rb3dib.png'},

{username: 'Amy Winehouse', blurb: "Amy Jade Winehouse was an English singer and songwriter. She was known for her deep expressive contralto vocals and her eclectic mix of musical genres, including soul (sometimes labelled as blue-eyed soul and neo soul), rhythm and blues, and jazz. Winehouse's debut album, Frank (2003), was a critical success in the UK and was nominated for the Mercury Prize. Her follow-up album, Back to Black (2006), led to five 2008 Grammy Awards, tying the then record for the most wins by a female artist in a single night, and made her the first British woman to win five Grammys, including three of the General Field 'Big Four' Grammy Awards: Best New Artist, Record of the Year and Song of the Year.

Winehouse died of alcohol poisoning on 23 July 2011, aged 27. Her album Back to Black posthumously became, for a time, the UK's best-selling album of the 21st century. In 2012, Winehouse was ranked 26th on VH1's 100 Greatest Women in Music. The BBC has called her 'the pre-eminent vocal talent of her generation.'", password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485279158/awb_tf3e4f.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485279160/awp_vkor1r.jpg',
email:"evan_dev28@fakey.com"},

{username: 'Mos Def', blurb: "Yasiin Bey (/jæˈsiːn ˈbeɪ/) (born Dante Terrell Smith; December 11, 1973), best known by his stage name Mos Def (/ˈmoʊs ˈdɛf/), is an American hip hop recording artist, actor and activist from Brooklyn, New York City, New York. Best known for his music, Mos Def embarked on his hip hop career in 1994, alongside his siblings in the short-lived rap group Urban Thermo Dynamics (UTD), after which he appeared on albums by Da Bush Babees and De La Soul. He subsequently formed the duo Black Star, alongside fellow Brooklyn-based rapper Talib Kweli, and released their eponymous debut album in 1998. He was featured on the roster of Rawkus Records and in 1999 released his solo debut, Black on Both Sides. His debut was followed by The New Danger (2004), True Magic (2006) and The Ecstatic (2009). The editors at About.com listed him as the 14th greatest emcee of all time on their '50 greatest MCs of our time' list.

Prior to his career in music, Mos Def first entered public life as a child actor, having played roles in television movies, sitcoms, and theater. Since the early 2000s, Mos Def has been well known for his roles in films such as Something the Lord Made, Next Day Air, The Hitchhiker's Guide to the Galaxy, 16 Blocks, Be Kind Rewind, The Italian Job, Bamboozled and Brown Sugar, as well as for his portrayal of Brother Sam in the Showtime drama series Dexter. He is also known as the host of Def Poetry Jam, which aired on HBO between 2002 and 2007.", email: 'evan_dev29@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485293869/mdb_wqoovm.png', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485293864/mdp_wj2wdb.jpg'},

{username: 'Ratatat', blurb: 'Ratatat (pronounced rat-ə-tat) is a Brooklyn-based electronic rock duo consisting of Mike Stroud (guitar, melodica, synthesizers, percussion) and producer Evan Mast (bass, synthesizers, percussion).', email: 'evan_dev30@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485295304/rtb_gjan8a.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485295304/rtp_p2junx.jpg'},

{username: 'Justin Timberlake', blurb: 'Justin Randall Timberlake (born January 31, 1981) is an American singer, songwriter, actor and record producer. Born in Memphis, Tennessee, he appeared on the television shows Star Search and The All-New Mickey Mouse Club as a child. In the late 1990s, Timberlake rose to prominence as one of the two lead vocalists and youngest member of NSYNC, which eventually became one of the best-selling boy bands of all time. During their hiatus, Timberlake released his debut solo album, the R&B-focused Justified (2002), which yielded the successful singles "Cry Me a River" and "Rock Your Body", and earned his first two Grammy Awards.', email: 'evan_dev31@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485295304/rtb_gjan8a.jpg', image_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485295813/jtp_oihj5m.jpg'},

{username: 'Katy Perry', blurb: "Katheryn Elizabeth Hudson (born October 25, 1984), known professionally as Katy Perry, is an American singer and songwriter. After singing in church during her childhood, she pursued a career in gospel music as a teenager. Perry signed with Red Hill Records and released her debut studio album Katy Hudson under her birth name in 2001, which was commercially unsuccessful. She moved to Los Angeles the following year to venture into secular music after Red Hill ceased operations and she subsequently began working with producers Glen Ballard, Dr. Luke, and Max Martin. After adopting the stage name Katy Perry and being dropped by The Island Def Jam Music Group and Columbia Records, she signed a recording contract with Capitol Records in April 2007.", email: 'evan_dev32@fakey.com', password: 'DevPass244', banner_url: 'http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485296394/kpb_j4e2ku.jpg', image_url: "http://res.cloudinary.com/dnkmsdtmu/image/upload/v1485296408/kpp_e1tlhj.jpg"},
])


# {username: '', blurb: '', email: 'evan_dev15@fakey.com', password: 'DevPass244', banner_url: '', image_url: ''},



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
{artist_id: 12, title: 'Georgia Moon', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821591/05_Georgia_Moon_paqkcf.m4a'},

{artist_id: 3, title: 'Formation', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784908/12._Formation_brvmec.mp3'},
{artist_id: 3, title: 'Play You Catch Me', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784961/01._Pray_You_Catch_Me_de8wel.mp3'},
{artist_id: 3, title: 'Sandcastles', url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784979/08._Sandcastles_pyappu.mp3'},
{artist_id: 3, title: "Don't Hurt Yourself", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784986/03._Don_t_Hurt_Yourself_feat._Jack_White_q4p3jb.mp3'},
{artist_id: 3, title: "Sorry", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785018/04._Sorry_xnkow5.mp3'},
{artist_id: 3, title: "Freedom", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785010/10._Freedom_feat._Kendrick_Lamar_taqjbf.mp3'},

{artist_id: 13, title: "Fall to Pieces", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785882/01_Fall_to_Pieces_t5xgms.m4a'},
{artist_id: 13, title: "Let's Run Away", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785870/02_Let_s_Run_Away_rypnbl.m4a'},
{artist_id: 13, title: "Please No More", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785888/03_Please_No_More_cx7qko.m4a'},
{artist_id: 13, title: "Haunting Me", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785892/04_Haunting_Me_npctgz.m4a'},

{artist_id: 14, title: "Painkillers", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786844/1-02_Painkillers_e8ufyq.mp3'},
{artist_id: 14, title: "Smoke", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786841/1-04_Smoke_e34v8r.mp3'},
{artist_id: 14, title: "Nobody Wins", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786875/1-06_Nobody_Wins_pg2yzv.mp3'},
{artist_id: 14, title: "Steve Mcqueen", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786885/1-05_Steve_Mcqueen_ecnczm.mp3'},
{artist_id: 14, title: "A Wonderful Life", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786873/1-01_A_Wonderful_Life_dgs307.mp3'},

{artist_id: 15, title: "Suede", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484787745/13._Suede_sphzmo.mp3'},
{artist_id: 15, title: "Parking Lot", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484787956/08._Parking_Lot_n09l8q.mp3'},
{artist_id: 15, title: "The Dreamer", url: 'http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788018/16._The_Dreamer_feat._Talib_Kweli_Timan_Family_Choir_uw3jwa.mp3'},

{artist_id: 16, title: "Prima Donna", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788609/05_Prima_Donna_feat_A_AP_Rocky_uwk3v1.mp3"},
{artist_id: 16, title: "Big Time", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788625/07_Big_Time_qst7js.mp3"},
{artist_id: 16, title: "Lift Me Up", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788674/1-02_Lift_Me_Up_hm8yv2.m4a"},

{artist_id: 17, title: "L' esprit de L' escalier", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799799/01_L_esprit_de_L_escalier_v2d4du.m4a"},
{artist_id: 17, title: "Whatever Happened To the...", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799812/11_Whatever_Happened_To_the_Man_of_Tomorrow__pf9ovr.m4a"},
{artist_id: 17, title: "Cutesy Monster Man", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799832/01_Cutesy_Monster_Man_cbfgel.m4a"},
{artist_id: 17, title: "Cutesy Monster Man", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799832/01_Cutesy_Monster_Man_cbfgel.m4a"},
{artist_id: 17, title: "Every Town Has an Elm Street", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799839/10_Every_Town_Has_an_Elm_Street_iqravh.m4a"},
{artist_id: 17, title: "The End", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799829/01_The_End_ktusrv.m4a"},
{artist_id: 17, title: "Wold Dix Rd.", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799851/04_Wolf_Dix_Rd._nrba8u.m4a"},

{artist_id: 18, title: "How did I get Here", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484850769/02_How_Did_I_Get_Here_wukyye.mp3"},
{artist_id: 18, title: "Rely", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851081/08_Rely_mubcsd.mp3"},
{artist_id: 18, title: "We Were Young", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851134/05_We_Were_Young_mxn62n.mp3"},
{artist_id: 18, title: "Don't Stop", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851128/11_Don_t_Stop_jvohhr.mp3"},
{artist_id: 18, title: "Hey Now", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851117/09_Hey_Now_ak9fto.mp3"},
{artist_id: 18, title: "Today", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851163/06_Today_lwrmcc.mp3"},

{artist_id: 19, title: "Sorry", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851655/04_Sorry_pjn2tn.mp3"},
{artist_id: 19, title: "Company", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851688/06_Company_rmqoxy.mp3"},
{artist_id: 19, title: "Love Yourself", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851694/05_Love_Yourself_ykh8fk.mp3"},
{artist_id: 19, title: "Children", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851698/12_Children_pbzl1r.mp3"},

{artist_id: 20, title: "Hello", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852385/01_Hello_jvwqmb.m4a"},
{artist_id: 20, title: "Love in the Dark", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852462/08_Love_in_the_Dark_kpa7ja.m4a"},
{artist_id: 20, title: "Rolling In the Deep", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852442/01_Rolling_In_The_Deep_r9yfvj.m4a"},
{artist_id: 20, title: "Rumor Has It", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852443/02_Rumour_Has_It_ahf8ir.m4a"},
{artist_id: 20, title: "Daydreams", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852382/01_Daydreams_g98z16.mp3"},

{artist_id: 21, title: "24K Magic", url: "https://www.youtube.com/watch?v=UqyT8IEBkvY"},
{artist_id: 21, title: "When I was your Man", url: "https://www.youtube.com/watch?v=ekzHIouo8Q4"},

{artist_id: 22, title: "Hotline Bling", url: "https://www.youtube.com/watch?v=uxpDa-c-4Mc"},
{artist_id: 22, title: "Started From the Bottom...", url: "https://www.youtube.com/watch?v=RubBzkZzpUA"},
{artist_id: 22, title: "Energy", url: "https://www.youtube.com/watch?v=7LnBvuzjpr4"},

{artist_id: 23, title: "3", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239084/09_-_3_vzbf8l.mp3"},
{artist_id: 23, title: "Helix", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239112/01_-_Helix_zgnmqm.mp3"},
{artist_id: 23, title: "Free", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239099/15_-_Free_j5auis.mp3"},

{artist_id: 24, title: "Easy", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239321/04_Easy_ypjoqp.m4a"},
{artist_id: 24, title: "Lost It Trying", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239354/02_Lost_It_To_Trying_etepu7.m4a"},
{artist_id: 24, title: "No Crimes", url: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239383/05_No_Crimes_a6ssrq.m4a"},

{artist_id: 25, title: "Steal My Attention", url: "https://www.youtube.com/watch?v=1nwbuMqH2bQ"},
{artist_id: 25, title: "Go With It", url: "https://www.youtube.com/watch?v=D3kQHZmQmVI"},
{artist_id: 25, title: "Darkest Dim", url: "https://www.youtube.com/watch?v=sPW-F3Eebkc"},

{artist_id: 26, title: "Jasmine", url: "https://www.youtube.com/watch?v=RWQMg56ZVZY"},
{artist_id: 26, title: "BTSTU", url: "https://www.youtube.com/watch?v=oeCsdUdWOPY"},
{artist_id: 26, title: "Mumbi", url: "https://www.youtube.com/watch?v=c6bj1xLggAM"},

{artist_id: 27, title: "Rehab", url: "https://www.youtube.com/watch?v=KUmZp8pR1uc"},
{artist_id: 27, title: "Valery", url: "https://www.youtube.com/watch?v=d_EADBnXjXc"},
{artist_id: 27, title: "Back to Black", url: "https://www.youtube.com/watch?v=4IOXgamaOLI"},
{artist_id: 27, title: "Just Friends", url: "https://www.youtube.com/watch?v=IvRnrIv3mpM"},

{artist_id: 28, title: "Mathmatics", url: "https://www.youtube.com/watch?v=m5vw4ajnWGA"},
{artist_id: 28, title: "Im Leaving", url: "https://www.youtube.com/watch?v=lMTZa82UVqE"},
{artist_id: 28, title: "Auditorium", url: "https://www.youtube.com/watch?v=vwjwKPXy4sg"},

{artist_id: 29, title: "Loud Pipes", url: "https://www.youtube.com/watch?v=64liF2VuLxI"},
{artist_id: 29, title: "Breaking Away", url: "https://www.youtube.com/watch?v=8WQiEqy8Pa4"},

{artist_id: 30, title: "Mirrors", url: "https://www.youtube.com/watch?v=uuZE_IRwLNI"},
{artist_id: 30, title: "SexyBack", url: "https://www.youtube.com/watch?v=3gOHvDP_vCs"},
{artist_id: 30, title: "Cry Me a River", url: "https://www.youtube.com/watch?v=DksSPZTZES0"},

{artist_id: 31, title: "Fireworks", url: "https://www.youtube.com/watch?v=QGJuMBdaqIw"},
{artist_id: 31, title: "Roar", url: "https://www.youtube.com/watch?v=CevxZvSJLk8"},


])






#{artist_id: , title: '', url: ''},
