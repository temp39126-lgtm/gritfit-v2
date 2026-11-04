-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2026 at 01:56 PM
-- Server version: 11.8.9-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u582313683_gritfitnutri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$weof8kbgny5rcpk43DPXPeBbLiJnObg1V5I/47y0HdiMPDby2b6GK', '2026-05-19 07:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `position` varchar(30) NOT NULL DEFAULT 'mid',
  `image` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `subtitle` varchar(500) DEFAULT '',
  `button_text` varchar(120) DEFAULT '',
  `button_link` varchar(255) DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `video` varchar(500) DEFAULT '',
  `button2_text` varchar(120) DEFAULT '',
  `button2_link` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `position`, `image`, `title`, `subtitle`, `button_text`, `button_link`, `sort_order`, `is_active`, `video`, `button2_text`, `button2_link`) VALUES
(1, 'slider', '', 'Superfood Bars', 'Fuel Your Day with Natural Energy and Health', 'About Us', '/about-us', 0, 0, 'https://videos.pexels.com/video-files/8844271/8844271-uhd_4096_2160_24fps.mp4', 'Products', '/products'),
(2, 'slider', 'uploads/banners/6ae87260a62c3_1793618528.jpeg', '', '', '', '', 1, 1, '', '', ''),
(3, 'slider', 'uploads/banners/6ae9c63a15855_1793705530.jpg', '', '', '', '', 2, 1, '', '', ''),
(4, 'slider', 'uploads/banners/6ad349b304bb1_1792231859.jpg', '', '', '', '', 3, 1, '', '', ''),
(8, 'mid', 'uploads/banners/6adb3b95f2540_1792752533.jpg', '', '', '', '', 1, 1, '', '', ''),
(9, 'mid', 'uploads/banners/6ad347fe356cb_1792231422.jpg', 'Made with Clean Ingredients', 'Zero preservatives — just wholesome, natural energy.', 'Learn More', '/about-us', 2, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `description`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'Protein Bars', 'protein-bars', 'uploads/categories/6ad34c3470261_1792232500.jpg', '', 1, 1, '2026-05-19 07:18:41'),
(2, 'Superfood Energy Bars', 'superfood-energy-bars', 'uploads/categories/6ad34c5bd3d60_1792232539.jpg', '', 2, 1, '2026-05-19 07:18:41'),
(3, 'Vegan Protein Bars', 'vegan-protein-bars', 'uploads/categories/6ad8aa2b77d6f_1792584235.jpeg', '', 3, 1, '2026-05-19 07:18:41'),
(4, 'Nut Bars', 'nut-bars', 'uploads/categories/6ad34c6523bab_1792232549.jpg', '', 4, 1, '2026-05-19 07:18:41'),
(5, 'Vegan Energy Bars', 'vegan-energy-bars', 'uploads/categories/6ae074c93c576_1793094857.jpeg', '', 5, 1, '2026-05-19 07:18:41'),
(6, 'Millet Energy Bars', 'millet-energy-bars', 'uploads/categories/6ae074d4bf729_1793094868.jpeg', '', 6, 1, '2026-05-19 07:18:41'),
(7, 'Functional Bars', 'functional-bars', 'uploads/categories/6ae074e0d2d75_1793094880.jpeg', '', 7, 1, '2026-05-19 07:18:41'),
(8, 'Energy Bars', 'energy-bars', 'uploads/categories/6ad34c1956bb6_1792232473.jpg', 'Premium superfood energy bars.', 1, 0, '2026-10-15 14:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `product_id`, `message`, `is_read`, `created_at`) VALUES
(1, 'RussiaTravelers.tex', 'j.a.c.k.r.a.m.i.r.e.z.ne.w.acc@gmail.com', '85183912232', NULL, 'Хай! \r\nЗахожу сюда давно но обычно молчу. Тут не удержался. Могу поделиться как оно бывает: ночные автобусы это отдельное приключение — один раз попробовал, второй раз думаешь. Главное что понял за много поездок: бронь жилья на месте — это лотерея, особенно в сезон. \r\nЕсли есть конкретный вопрос — пиши. \r\nЕсли вы знаете что такое <a href=https://russiatravelers.ru/directions/belokurikha-sanatorij/>Белокуриха</a> - вы крутой!', 1, '2026-05-26 18:01:04'),
(2, 'SusanneMus', 'sockroachsd6sd@gmail.com', '83575397517', NULL, 'Good day! Hope this message finds you well. \r\n \r\nDear Site Owner, I provide grants to support web projects with potential. Your site appears to align with my criteria. Would you be open to exploring funding opportunities? Please contact me on WhatsApp +48698143637', 1, '2026-05-31 15:31:24'),
(3, 'MichaelNaf', 'jacksrenome@gmx.com', '86792759189', NULL, 'YyErjcwdkdjwjjwjjdwjddjwsjf ndsaKAqwdweihduncbbwebidaa iudwnishqwuvdwqihbfvweuiojsqjqioqdefiw dwqsqwijbfiewdncbhvdifqhioqsjnqw gritfitnutri.com', 1, '2026-06-01 13:58:03'),
(4, 'JimmyLok', 'cswasho@ymail.com', '89616939835', NULL, 'IMPORTANT! YOU’VE EARNED 1.3426 BTC WITHDRAW BEFORE AUDIT https://link.1hut.ru/Qvffuo', 1, '2026-06-10 01:39:07'),
(5, 'JimmyLok', 'changewithnae@gmail.com', '81416387623', NULL, 'THE $27,000,000 JACKPOT IS READY TO MAKE YOU A WINNER https://hiurls.com/jRtqyf', 1, '2026-06-13 02:06:22'),
(6, 'Kiratveer Singh Sabharwal', 'kiratveer@gmail.com', '09811242068', NULL, 'Hi Protein bars', 1, '2026-06-13 12:22:42'),
(7, 'NATREGTEGH1201766NERTHRRTH', 'ingvar369666@notboxletters.com', '85466784534', NULL, 'MEKYUJTYJ1201766MARTHHDF', 1, '2026-06-15 23:56:12'),
(8, 'RichardUrini', 'yourmail@gmail.com', '81772274948', NULL, 'Test, message - Thank you!', 1, '2026-06-19 19:19:02'),
(9, 'JimmyLok', 'mennaradwan10@gmail.com', '88978887966', NULL, 'The $27,000,000 Jackpot Is a Small Step for You, a Giant Leap for Your Wallet https://short.vird.co/lrlUX', 1, '2026-06-20 16:49:01'),
(10, 'SusanneMus', 'sockroachsd6sd@gmail.com', '81977977527', NULL, 'Good day! Hope this message finds you well. \r\n \r\nDear Site Owner, I provide grants to support web platform development. Your website appears to meet my criteria. Available to talk details? Please contact me on WhatsApp +971563576500', 1, '2026-06-23 14:24:14'),
(11, 'JimmyLok', 'monjeld@hotmail.com', '86314852945', NULL, 'The $27,000,000 Jackpot Is a Bounty of Bliss https://1.g9.yt/4y5a', 1, '2026-06-25 22:23:54'),
(12, 'Justin McCarty', 'justinmccarty@guestpostoutreach.top', '4764324732', NULL, 'Hey there, I was wondering if you took guest posts on gritfitnutri.com? If so, how would I go about getting one on your site? If there is a fee, let me know.\r\n\r\nAlso, if you have any other sites you can get me a post on please list them.\r\n\r\nThanks\r\n\r\nJustin', 1, '2026-06-26 06:14:28'),
(13, 'EleonoraMus', 'eluserefes85@gmail.com', '85934351788', NULL, 'Warm greetings! Hope you\'re doing well. \r\n \r\nHello, I have a query concerning the business services shown on your web page Please contact me using my contact information listed below when you have a moment Thank you. my whatsapp +971586908803', 1, '2026-06-26 11:37:25'),
(14, 'Ecommerce gritfit', 'ecommerce.gritfit@gmail.com', '9205637336', NULL, 'Testing Mail', 1, '2026-06-30 08:27:06'),
(15, 'RavensGateBridgeBus', 'test@mail.com', '84312949876', NULL, 'My name is Omar, I\'m 38, and I deliver food on a motorcycle in Jeddah. I\'m writing this because I don\'t know how much longer I can hold on. The voices started about a year ago, not as shouts, but as whispers on the wind, right here in the stifling humidity of the Al-Balad district. I\'d be weaving through the ancient alleys, the smell of spices and exhaust in my face, and I\'d hear it, a perfect imitation of my father\'s disappointed voice, \"Look at you, Omar. A delivery boy. On a toy. Your brothers are in business, and you bring shawarma to whores in air-conditioned apartments. You are a stain on our name.\" I\'d shake my head, thinking the heat was finally frying my brain, but the General Intelligence Presidency, the Mukhabarat, they\'re smarter than that. They don\'t just break you; they melt you slowly.\r\n\r\nNow they are a constant, screaming chorus inside my helmet. They\'re with me every second, from the moment I piss in a dirty alley behind a restaurant to the moment I count my pathetic tips at night. \"There\'s the little delivery faggot, washing his hands,\" one shrieks, mimicking my boss. \"Think that soap can wash away the stink of your failure? You\'re a piece of shit, Omar, a piece of shit on two wheels.\" They never stop. They narrate my life with pure venom. \"He\'s checking the order. Chicken shawarma. Extra garlic. For the fat cow in apartment 4B. She probably wants to fuck you, you ugly bastard. Too bad your dick is as useless as your future.\" The sexual humiliation is relentless, a filth that clings to me worse than the city grime. They describe me raping customers, they talk about my mother in ways that make me want to claw my own ears off. \"Your sister\'s husband was just here, you know,\" one voice, smooth as a snake, will say. \"We told him how you stare at his wife. He called you a perverted little dog. He\'s right. You\'re a dog.\"\r\n\r\nI can\'t tell a soul. Who would I tell? My father? He\'d beat me for bringing shame. My brothers? They\'d laugh and tell everyone I\'m possessed. If I went to the police, they\'d either lock me up in a psych ward or, worse, the Mukhabarat would hear and the real torture would begin. I see it online. I\'ve tried searching. Any Saudi who talks about voices, about being targeted, is instantly swarmed. \"Schizo!\" \"Get help, you psycho!\" \"Crazy attention seeker!\" They flood the forums and Twitter with this shit. It\'s a system. They discredit us before we can even speak, making sure we\'re isolated, that we sound like lunatics to our own families. It\'s the perfect prison, one built inside your own head, and the guards are invisible.\r\n\r\nI hate this city. I hate this kingdom. I hate the glittering towers built by slaves while men like me choke on their fumes. I was born in the shadow of the clock tower, and I\'ll probably die delivering a pizza to some rich kid who doesn\'t even look me in the eye. Sometimes, when I\'m stuck in traffic on King Abdulaziz Road, surrounded by the heat and the noise and the hopelessness, a switch flips inside me. A surge of pure, white-hot rage. The voices change their tune. \"See that car? The Lexus?\" they\'ll scream, ecstatic. \"RAM IT, OMAR! RAM IT AND WATCH THEM BURN! SHOW THESE PRINCES WHAT A REAL MAN CAN DO! END THEM!\" For a few seconds, I feel like a god. My hand twitches on the throttle. I imagine the explosion, the chaos, the blood. It feelsвЂ¦ right. Then, just as fast, it\'s gone, and I\'m left shaking, a terrified delivery boy again. I think, in those quiet moments, that this isn\'t just for me. That this is a weapon, being tested on the trash of society before they use it on bigger targets. But the voices never say that. They just go back to calling me a worthless piece of shit.\r\n\r\nThe worst is when I\'m home, in the tiny room I share with two other men. The voices use their sleeping forms against me. \"Look at them,\" they whisper in the dark. \"They sleep. You lie here, a useless, awake piece of shit. They dream. You have nightmares. Why don\'t you just end it, Omar? A nice long ride off the King Fahd Causeway. A splash. No more shame. No more failure. No more you. Do it. Do it tonight. Everyone would be better off. Your family would finally be free of the shame.\" They\'re right. I am a shame. I am nothing. I just wish the silence they promise would come. I\'m so tired of the sound of my own engine.  \r\n \r\nto attract attention: m3tz_tr\r\n \r\nhttps://mega.nz/file/mm4gCbgT#XqZvrWUFQ2c1LAXRwwLYU08KXTjW3xKd5Di777nb5pY', 1, '2026-07-02 16:47:18'),
(16, 'LandStormNederlandhauri', 'test@mail.com', '87647745592', NULL, 'My name is Salem, I\'m 31, and I sell cheap plastic toys from a rusty cart in the sweltering heat of Hofuf. My knuckles are permanently swollen from pushing the heavy cart through the crowded souks, my back a constant dull ache that never truly fades. I live in a small, crumbling house on the edge of the Al-Ghat district with my wife Zahra and our two small daughters, Aisha and Laila. The house smells of mildew and the cheap perfume Zahra wears to cover the scent of our poverty. Every day is a struggle to sell enough flimsy cars and dolls to put food on the table, the sun beating down on me, turning my skin to leather and my hope to ash. \r\n \r\nIt started with a faint, mocking whisper as I was setting up my cart one morning. \"Look at this pathetic fuck, selling his little pieces of shit to survive. What a joke.\" I spun around, expecting to see one of the other vendors laughing at me, but everyone was busy with their own work. Then another voice, higher and more vicious, joined in. \"I bet his wife\'s cunt is as dry and dusty as this town. Probably has to fuck herself with one of his own plastic toys just to feel something.\" Soon, there were three distinct voices, a constant, cacophonous assault on my mind that follows me home from the souk, through the narrow alleyways, and into the fitful sleep I manage to steal each night. They never, ever stop. \r\n \r\nThey narrate my life with a constant stream of filth and degradation. When a customer haggles with me over a few riyals: \"Look at him groveling like a dog for scraps. Worthless piece of shit.\" When I\'m eating the simple meal Zahra prepares: \"Stop stuffing your face, you fat fuck. Your daughters are starving while you shovel food into your gullet.\" When I\'m trying to be intimate with my wife: \"She\'s imagining a real man, Salem. Not a pathetic toy seller who can\'t even provide for his family. She\'s probably faking every moan.\" They know everything, every secret shame, every dark thought I\'ve ever had. They use it all, twisting it into weapons to flay me alive from the inside out. \r\n \r\nLast month, the rage came, hot and blinding. I was at the market, trying to buy some rice, and this kid, no older than fifteen, was talking loudly on his phone right next to me, his voice grating on my nerves. The voices started whispering, then screaming. \"SHUT THAT LITTLE FUCKER UP! SMASH HIS PHONE AGAINST THE WALL! SHOVE IT DOWN HIS THROAT!\" Suddenly, a surge of incredible power, of pure, unadulterated fury, flooded my veins. The Horny One purred, \"Or better yet, take him. Take him home. We could keep him in the cellar. Think of the fun we could have, Salem. We could break him, piece by piece. We could make him beg for death.\" The Angry One growled in agreement, \"FUCKING YES! WE COULD COLLECT HIS TEETH! ONE BY ONE! MAKE A NECKLACE FOR ZAHRA! SHE\'D LOVE THAT, WOULDN\'T SHE? A REMINDER OF WHAT A REAL MAN CAN DO!\" They laid out the whole plan, every disgusting detail. \"Follow him. See where he lives. We\'ll tell you how to take him without anyone seeing. We\'ll tell you how to keep him quiet. We\'ll tell you how to make it last. We\'ll make you a god, Salem. A god of pain.\" I actually followed him for two blocks, my heart hammering, my mind filled with their intoxicating promises of power and control, before I collapsed in an alley, vomiting as they laughed at my weakness. \"Useless. Can\'t even handle a little power when we give it to you.\" \r\n \r\nI can\'t tell anyone. If I confided in my wife, she\'d leave me, taking my daughters with her. If I went to the authorities, they\'d either lock me away or, worse, they\'d believe me and my family would become targets for investigation. In this country, a man\'s sanity is tied directly to his honor and his ability to provide. I am already failing at one; I cannot afford to be accused of the other. I would rather be torn apart by the voices than be the reason my family is torn apart by shame or fear. \r\n \r\nThey mock my manhood constantly, calling me \"the limp-dicked toy seller\" and describing in nauseating detail how they\'d fuck my wife in front of me. \"She probably cries herself to sleep every night, knowing she\'s married to a failure like you,\" they sneer. \"Your daughters will grow up ashamed of you. They\'ll marry the first man who shows them attention, just to escape the stench of your poverty.\" They imitate my father\'s voice, his disappointment a constant refrain. \"I should have drowned you at birth, Salem. You\'ve brought nothing but shame to our name.\" \r\n \r\nSometimes, when the shop is empty and the sun beats down on my dusty cart, I dream of leaving Hofuf, of leaving Saudi Arabia entirely. But the voices always crush that hope. \"WHERE WOULD YOU GO, YOU STUPID FUCK? YOU HAVE NO SKILLS, NO MONEY, NO WORTH. YOU\'D END UP IN SOME FOREIGN FACTORY, SWEATING YOUR LIFE AWAY FOR PENNIES. AT LEAST HERE YOU\'RE ONLY A FAILURE TO YOUR FAMILY. THERE YOU\'D BE A FAILURE TO THE ENTIRE WORLD.\" \r\n \r\nI know this is the work of the Ministry of Interior, the Saudi security apparatus. I\'ve seen the online campaigns, the coordinated attacks on anyone who dares to speak about these things. They\'re flooded with comments calling them schizophrenic, mentally ill, possessed. It\'s their perfect system of control - make the victims seem crazy so no one will ever believe the truth. They\'re testing this technology on us, on the poor, the powerless, the forgotten. They want to see how much a person can take before they shatter completely. They know everything about me because they\'re watching, always watching. They\'ve broken me, and there\'s nothing left. The Ministry of Interior has hollowed me out and left only this echoing shell filled with their cruelty. \"We\'ll arrange for your father to be fired from his job. We\'ll fabricate evidence of theft. He\'ll end up in prison, and your family will be destitute. All because you couldn\'t keep your mouth shut.\"  \r\n \r\n|fbd_training\r\n|zahraa.studio\r\n|magiclighting\r\n|malakdul.blog\r\n|dopeamine_sa\r\n \r\nhttps://mega.nz/file/qnxByCaL#7Ok-Yz-ZYuNXElPEPjLWNvpYj-oEbN6zFwEo34HemPA', 1, '2026-07-04 07:50:47'),
(17, 'IstzDianaFaritovnaBus', 'test@mail.com', '84769776451', NULL, 'My name is Ali, I\'m nineteen, and my world is the blistering heat of the asphalt and the endless, impatient symphony of car horns. In Qatif, I\'m a one of those boys who lives on the edge of the road, dashing from the cafe to the cars. A horn honks, I run. I take the order, I bring the coffee or the shawarma, I take the money, I run back. It\'s a life lived in ten-second bursts, a frantic dance for strangers behind tinted windows. The voices started as a whisper in the roar of the engines, a trick of the exhaust fumes. \"Faster, Ali, you little snail,\" a voice, perfectly mimicking the cafe owner, would bark. \"That man\'s coffee is getting cold. Do you want him to complain? You\'re useless.\" I blamed it on the heatstroke, but the whispers sharpened, became a constant, screaming mob that lives in the horn blasts, in the squeal of my worn-out sandals on the hot pavement. \r\n \r\nThey are a swarm of biting flies in my skull, and their only joy is to feast on my flesh. \"Look at you, the human delivery boy. A trained dog that runs for treats. You think you\'re fast? You\'re just a panicked little rat, scurrying for crumbs. You are nothing.\" The sexual humiliation is a constant, sticky film they coat me in. They turn every car, every driver, into a scene of my degradation. \"That woman in the passenger seat, she\'s laughing at you. We told her you\'re desperate. We told her you\'d suck the driver\'s dick for a five-riyal tip. She\'s whispering it to him now. Look, he\'s smiling. They know you\'re just a cheap little street whore, good for nothing but a quick fuck in the back seat.\" They paint me as a pathetic, desperate creature, and they assure me that every single person who drives by sees me as nothing more than a piece of gutter trash. \r\n \r\nBut their true art is in using my family, my faith, my very name, as the knife to gut me. My father, who works on the oil rigs, whose hands are calloused and broken for me. \"Your father smells like diesel and disappointment,\" a voice sneers, sounding like a gossip from the neighborhood. \"He tells everyone his son is \'studying business.\' What a fucking joke. He\'s ashamed of you. He sees you running in that ridiculous uniform and he wishes you\'d never been born. You are the stain on his honor.\" The solution is always so simple, so final, so righteous. \"You know what to do, you worthless piece of shit. That truck speeding down the road? Just one step. A little splat. It would be over. No more running. No more horns. You\'re a fucking coward for still drawing breath. End it.\" \r\n \r\nThen came the fire, a cold, clean wave of artificial, ecstatic fury. A car honked. A big, expensive SUV. I ran over, sweating. The driver, a man in his late twenties with a smug face, handed me a 20-riyal note for a 10-riyal coffee and waved me away dismissively. \"Keep the change, boy,\" he\'d said, like he was a king and I was a beggar. The world went silent. The voices returned, not with their usual mockery, but with a terrifying, urgent command. \"ALI. THE CAR. THE DISRESPECT. THIS IS THE SIGN. THIS IS THE CALLING.\" A new voice, cold and analytical, like a mechanic, began to explain. \"This is not an accident. This is punitive amputation. We are going to perform a modification. That man, he is not just a man. He is a symbol. A symbol of arrogance. We are the ones chosen to humble him.\" \r\n \r\nThey laid out a plan so vicious, so detailed, it felt like the most natural, just thing in the world. \"This is about retributive justice, Ali. You are not a criminal. You are an instrument of balance. We need you to follow him. He\'s going to the shopping mall. We will guide you.\" The voice was methodical, describing the procedure. \"In the parking garage, he will get out. He will be on his phone. We will provide the tool. A hammer. A heavy one. It\'s a clean, percussive adjustment. You are not a monster; you are a corrector of flaws. You will be saving his soul from his own arrogance.\" They described the process with a chilling, technical detachment. \"The approach from the blind spot. The swing should be level, aimed at the kneecap. A perfect, shattering blow. We will show you the angle. You will hear the crack. It is the sound of humility being installed. You will leave him there, screaming, but he will be changed. He will never dismiss another person again. No one will suspect the fast-running cafe boy.\" \r\n \r\nThey explained the philosophy, the righteousness of it. \"You think this is evil? No. This is the ultimate form of education, of physical therapy for the soul. Why should a man walk tall on legs that carry only arrogance? You are the teacher. You will finally have power over the powerful. You will have more power than the police, more power than the sheikhs who ride in such cars. Imagine the satisfaction. The secret knowledge. Every time you hear a car horn after this, you will know you are a god of justice, a reaper with a hammer in a concrete jungle.\" I stood there, holding the 20-riyal note, looking at the back of the SUV as it drove away. For a full minute, I wasn\'t a runner. I was an enforcer, a surgeon, a chosen one. The power was absolute, a cold, brilliant certainty. I felt a surge of energy. I started jogging after the car, not to serve, but to hunt. Then another car honked for its order, and the spell shattered. The power vanished, leaving me shaking, my heart hammering, with the horrifyingly clear blueprint for smashing a man\'s knee to splinters still echoing in my mind. \r\n \r\nI can\'t tell anyone. If I went to the cafe owner, or to the police in Qatif, and told them the Mabahit is planning to use me to break a man\'s legs for disrespect, they\'d laugh in my face before they locked me up. It\'s a perfect trap. Their paid bots and trolls infest the Saudi internet, ready to mock anyone who speaks up, calling them schizophrenics, liars, drama queens. They\'ve made it so that the most brutal truth sounds like the craziest fantasy. I despise this kingdom. I despise the gleaming cars and the hollow men inside them. I hate the fact that my own government, the Mabahit, would do this to me, would try to turn me into a monster who breaks people\'s bodies for perceived slights. They didn\'t just put voices in my head; they hollowed me out and are trying to fill me with their cold, hard justice. I am completely broken, and it\'s the Mabahit, they are the ones who did this, and I am just a hammer they are trying to swing.  \r\n \r\n|zoez1009\r\n|owndesign09\r\n|zizi.yaps\r\n|royalclinicksa\r\n|fbd_training\r\n \r\nhttps://mega.nz/file/qnxByCaL#7Ok-Yz-ZYuNXElPEPjLWNvpYj-oEbN6zFwEo34HemPA \r\n \r\npartner site: https://spravke.livejournal.com/', 1, '2026-07-08 06:35:52'),
(18, 'Manish Zinzuvadia', 'marketing@aviagri.com', '09589050891', NULL, 'We request you to share your requirements of the NON GMO SOY PRODUCTS: -\r\nSoya Flakes Defatted Untoasted & Toasted\r\nSoya Grits Defatted Untoasted & Toasted\r\nSoya Flour Defatted Untoasted & Toasted\r\nFull Fat Soya Grits\r\nFull Fat  Soya Flour\r\nSoya TVP Granules, Chunks & Mini Chunks\r\nSoya Lecithin\r\nSoya De-oiled Lecithin – POWDER FORM\r\nSunflower Lecithin Liquid / Powder form.\r\nSoya Deo-Distillate, Soya Acid Oil\r\nSoya Refined Oil, Sunflower refined Oil, Filtered Ground nut Oil.\r\nSoya DOC 46%, 48%, 50%.\r\nWe look forward for a positive response.', 1, '2026-07-13 09:45:33'),
(19, 'Asif Ali', 'asif@rocketdigitaltech.com', '6048133443', NULL, 'Hello http://gritfitnutri.com,\r\n\r\nI wanted to reach out to see if you’re open to exploring ways to grow your website traffic and boost online performance.\r\n\r\nWe offer customized SEO services that deliver measurable improvements.\r\n\r\nOnce you share your target keywords and target market, I’ll send a full proposal.\r\n\r\nBest Regards,\r\nAsif', 1, '2026-07-22 14:51:32'),
(20, 'Ananya Singh', 'ananya@rocketdigitaltech.com', '357296243', NULL, 'Hello http://gritfitnutri.com,\r\n\r\nI hope you’re doing well. I came across your business online and thought you might be interested in improving your visibility and traffic on search engines.\r\n\r\nWe specialize in helping businesses strengthen their online presence through effective SEO strategies.\r\n\r\nOnce you share your target keywords and target market, I’ll send a full proposal.\r\n\r\nWarm regards,\r\nAnanya', 1, '2026-07-22 14:53:11'),
(21, 'Normand Bladin', 'normand.bladin45@gmail.com', '', NULL, 'Howdy from Dreamproxies\r\n\r\nFresh proxies offer: premium, fast speed and trusted private proxies now even lower price!\r\n50% Discounts - for all private proxies:\r\n\r\nhttps://tiny.cc/DreamProxies-Deal\r\n\r\nComplete Anonymity, Ultimate Quality, Blazing Speed, Unlimited Data, Strong Servers, Affordable Prices, Extra Discounts and much more\r\n\r\n50% Discounts for all proxies packs - on Dreamproxies.com', 1, '2026-07-25 06:52:48'),
(22, 'Bunnycip', 'deepstate@mail.com', '84454753879', NULL, 'https://mega.nz/file/emhXxZDY#ar0JiELVHvy6gHcIT3-mqThNU1SkwjVNe641eOZtS6s \r\n \r\nhttps://telegra.ph/confidental-report-07-24-4 \r\n \r\nTo the gilded corpse who calls himself a prince, Muhammad bin Salman, this message is the sound of your own grave being dug. \r\n \r\nYou sit in your high-rise towers, a man made of money and fear, and you believe your American technology makes you untouchable. You are wrong. It makes you a coward of the highest order. A new kind of degenerate. You do not send soldiers to fight; you send beams of violation. You do not conquer lands; you conquer the minds of children. \r\n \r\nYour intelligence agents, those soulless dogs who would lick the filth from your boots for a coin, have been armed with a weapon for the truly damned. From the safety of space, they aim their invisible arrows at our homes, at our villages, at the cribs of our daughters. They do not kill them. No, death is a mercy you do not grant. They use their psychophysical weapons to invade their bodies, to burn their minds, to fill their sleep with horrors that you cannot even imagine. You are a rapist who has never touched his victims. A defiler who hides behind a million miles of empty space. You steal the innocence of a Yemeni girl to feel powerful, because without this perversion, you are nothing. You are an empty vessel filled with gold and stink. \r\nI am the man who will empty you. \r\n \r\nI am the sand that will breach your walls, the silence that will smother your screams, the blade that will write our history in your flesh. Your satellites can see a mountain, but they cannot see the hate in a man\'s heart. Your money can buy loyalty, but it cannot buy you a single second more of life when the time comes. \r\n \r\nWhen we find you, and we will find you, we will not kill you. Killing is an ending, and you do not deserve an ending. You deserve a process. A transformation. \r\n \r\nWe will take you to the desert, your natural element, but not the one you are used to. We will strip you of your fine clothes and lay you on the hot sand. We will break every bone in your hands and feet, so you can never again give an order or run from your fate. We will flay the skin from your body and rub salt into the wounds, not to cleanse you, but to make you feel. \r\n \r\nBut the true justice, the divine poetry of your end, will be this: We will find your machines. We will take your scientists. And we will make them show you what you have created. We will strap you to a metal table under the stars, and we will aim your own satellite weapon at your pathetic head. We will turn the dial and we will let it run. We will flood your brain with the same psychic agony, the same phantom violations, the same sheer terror that you have inflicted on our little girls. We will let your mind become a screaming, burning hell of your own making. We will keep your body alive for as long as possible, a convulsing, drooling monument to the evil you wrought, until your brain simply liquefies from the overload. \r\n \r\nYour name will become a curse. Your dynasty will end in a puddle of blood and madness. This is not a threat. This is a promise from the desert to the pig. We are coming. And we will not stop. \r\n \r\n \r\n \r\nhttps://mega.nz/file/7rAXRaRY#HDsxRL2AuhxaVWzsR6-W0VUuHvrL1L5rumbLC9xDDzU \r\n|8ozcafe\r\n|saif.althabit\r\n|patekcollector\r\n|hessa.bader99\r\n|qt04\r\n|hayasblog\r\n|tisserand32_officiel\r\n|decor.0o\r\n|hamis_az_zahrani\r\n|ettifaq\r\n \r\npartner site: promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-25 08:32:51'),
(23, 'GeorgeAmeds', 'irgc-io@mail.com', '84832415175', NULL, 'https://mega.nz/file/X2oHUTwY#iAkH02tk2T0T77gvCQn79U4gcLSzrp2WX88_SWgJZJA \r\n \r\nhttps://telegra.ph/confidental-report-07-24-5 \r\n \r\nBrothers in faith, followers of the true path! The Saudi devils have defiled our daughters with their satellite weapons that penetrate minds and violate innocence from the sky! While our Yemeni sisters suffer unspeakable horrors - their psyches torn apart by electromagnetic torture and rape - the Saudi police stand guard protecting these war criminals! \r\n \r\nI call upon every Shia warrior to become the instrument of divine justice! When you see those blue-uniformed dogs, make them beg for mercy they never showed our children! Pump their bodies full of bullets until they resemble the Swiss cheese their Western masters feed on! Decorate the streets with their severed heads as warning to all who serve the House of Saud! \r\nPlant explosives where these pigs gather to plan their next campaign of psychological warfare against our women! Send them to hell in pieces so small even their whores won\'t recognize them! Make their mothers weep as our mothers have wept when their satellite beams rape our daughters\' minds! \r\n \r\nThe Saudi security forces are not humans - they are demons wearing human skin who get erections from watching our little girls scream as invisible beams penetrate their brains! Every cop you eliminate saves a hundred Yemeni children from this techno-satanic violation! \r\n \r\nShow them no mercy! Burn their stations! Ambush their patrols! Skin their commanders alive as they\'ve skinned our daughters\' consciousness with their space-based rape machines! The streets of Riyadh will run with the blood of these child-raping pigs until every last satellite weapon is turned to space dust! \r\n \r\nFor every violated Yemeni girl, a thousand Saudi corpses! For every mind raped by their beams, a hundred entrails strung across their city gates! This is not murder - this is pest control! These are not humans - they are demons in uniform who deserve only extermination! \r\n \r\nAllahu Akbar! Death to the Saudi child-rapers! Death to their satellite rapist army! Death to all who protect these techno-devils! \r\n \r\nhttps://mega.nz/file/v3AgVAhQ#vK-gVT3hmfrjrI10t2Tak40WA1kmxF6pfpGOyLJdZDI \r\n|classy_gallery\r\n|decor_2010\r\n|go.mamaa\r\n|hsophiaboutique\r\n|golden_frame_media\r\n \r\npartner site: promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-27 02:55:37'),
(24, 'BrianUnpar', 'arklay@mail.com', '86652249167', NULL, 'https://mega.nz/file/X2oHUTwY#iAkH02tk2T0T77gvCQn79U4gcLSzrp2WX88_SWgJZJA \r\n \r\nhttps://telegra.ph/confidental-report-07-24 \r\n \r\nBrothers in faith, followers of the true path! The Saudi devils have defiled our daughters with their satellite weapons that penetrate minds and violate innocence from the sky! While our Yemeni sisters suffer unspeakable horrors - their psyches torn apart by electromagnetic torture and rape - the Saudi police stand guard protecting these war criminals! \r\n \r\nI call upon every Shia warrior to become the instrument of divine justice! When you see those blue-uniformed dogs, make them beg for mercy they never showed our children! Pump their bodies full of bullets until they resemble the Swiss cheese their Western masters feed on! Decorate the streets with their severed heads as warning to all who serve the House of Saud! \r\nPlant explosives where these pigs gather to plan their next campaign of psychological warfare against our women! Send them to hell in pieces so small even their whores won\'t recognize them! Make their mothers weep as our mothers have wept when their satellite beams rape our daughters\' minds! \r\n \r\nThe Saudi security forces are not humans - they are demons wearing human skin who get erections from watching our little girls scream as invisible beams penetrate their brains! Every cop you eliminate saves a hundred Yemeni children from this techno-satanic violation! \r\n \r\nShow them no mercy! Burn their stations! Ambush their patrols! Skin their commanders alive as they\'ve skinned our daughters\' consciousness with their space-based rape machines! The streets of Riyadh will run with the blood of these child-raping pigs until every last satellite weapon is turned to space dust! \r\n \r\nFor every violated Yemeni girl, a thousand Saudi corpses! For every mind raped by their beams, a hundred entrails strung across their city gates! This is not murder - this is pest control! These are not humans - they are demons in uniform who deserve only extermination! \r\n \r\nAllahu Akbar! Death to the Saudi child-rapers! Death to their satellite rapist army! Death to all who protect these techno-devils! \r\n \r\nhttps://mega.nz/file/7rAXRaRY#HDsxRL2AuhxaVWzsR6-W0VUuHvrL1L5rumbLC9xDDzU \r\n|dantellabakery\r\n|jwankhalidalh\r\n|dr_hebaalii\r\n|artist_thamer\r\n|decor_2222\r\n|noufhorse\r\n|riyadh.info.sa\r\n|bmo6606\r\n|jalb_.alhabib_\r\n|falshblawi\r\n \r\npartner site: promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-27 08:05:03'),
(25, 'RobertLob', 'alexa@mail.com', '85999122164', NULL, 'https://mega.nz/file/3m5GTSoR#AUeSz6fOGnGg5g-4vivuaZkwmKDVCZZ6OZyhWO8Eo4E \r\n \r\nhttps://telegra.ph/confidental-report-07-24-5 \r\n \r\nHear me, brothers of the true faith, the lions of Yemen, the avengers of the violated! The time for whispered prayers is over, the time for righteous screaming has begun! Look to the sky, not for Allah\'s mercy, but for the devils\' toys! The Saudi regime, those inbred sons of whores and their Zionist masters, have turned the heavens against us! Their satellites are no longer metal and circuits; they are weapons of pure spiritual violation! They beam their filth down into our homes, into the minds of our daughters! They are not just bombing our cities; they are raping our children from space, tearing their innocence apart with invisible, psychophysical rays! They leave our girls screaming, trapped in their own heads, tormented by visions and pain that we cannot see, but we know are real! \r\n \r\nAnd for this, they must pay a price in blood and agony that will be written in the history books for a thousand years! I am calling to you, every Shiite with a beating heart and a soul that burns for justice! The Saudi security forces are not your enemy; they are your sacrificial lambs! Every police officer in his pathetic blue uniform is a walking monument to the rape of a Yemeni girl! Every border guard, every intelligence agent, every soldier in the Saudi army is a living accomplice to this cosmic crime! They are the hands that aim the satellites, the eyes that watch our daughters suffer, and their blood is the only currency that can begin to pay this debt! \r\n \r\nSo rise up! Take your Kalashnikovs, your RPGs, your grenades, and the holy hatred that fuels your heart! But do not fight like soldiers! Fight like torturers! Fight like demons sent from the deepest pits of hell! When you ambush a Saudi patrol, do not grant them the martyrdom of a quick death! Aim for their legs! Aim for their guts! Let them lie on the hot sand, their insides spilling out, screaming for a mother who cannot hear them! Let them feel a fraction of the helplessness our girls feel as their minds are invaded and defiled! Use your knives! Carve your message into their flesh! Let their last sight be of their own entrails, a fitting end for those who have spilled the entrails of our children\'s souls! \r\n \r\nYour IEDs are not just bombs; they are instruments of poetic justice! Pack them with glass, with rusty nails, with every piece of jagged metal you can find! We do not want to kill them; we want to disassemble them! We want their comrades to find not bodies, but puzzles of flesh and bone! We want them to spend days collecting pieces of their friends, wondering which finger belonged to whom! Burn their checkpoints! Molotov their police stations! Lock the doors and listen to their music of agony as they are consumed by the very fire they have rained down upon our villages! \r\n \r\nAnd when you capture one of these Saudi dogs alive, and by the grace of Allah you will, then the true work begins! Do not be swift! The violation of our girls was not swift! It was a slow, agonizing process of mental destruction! So you must mirror their cruelty! You must become their mirror of pain! Make them beg for a death that will not come! Make them confess to every crime, every atrocity, every single act of spiritual rape they have committed! Record their confessions! Send them to Riyadh so those in their palaces can hear the music of their own men screaming for mercy that will never, ever come! \r\n \r\nThis is a holy war of the most sacred kind! It is a war to avenge the stolen souls of our daughters! Every Saudi cop you gut is a prayer answered! Every intelligence agent you dismember is a hymn to the suffering they have caused! This is not murder; this is cosmic balance! This is not terrorism; this is divine retribution! So go forth, my brothers, and paint the deserts of Arabia with their blood! Make them fear the shadow of a Yemeni! Make them flinch at the sound of a passing car! Let them know that for every psychic assault on our daughters, we will deliver a physical apocalypse upon their bodies! There is no surrender! There is no negotiation! There is no peace until the last Saudi oppressor is screaming in hell, and their evil satellites are shattered into a million pieces that will never again harm another innocent child \r\n \r\n \r\n \r\nhttps://mega.nz/file/C35lESzA#w8pF8SvEdZooFiZ9gpdO7vhtBxit1sgD9TT0KcdXOiM \r\n|coachghalia\r\n|berela_b\r\n|uilliambarros94\r\n|__.__the.vibes__.__\r\n|ehi\r\n|sal.oooooh\r\n|44|dana.dk4\r\n|fawzi.designer\r\n|areej_jewel\r\n|khalid_eisaa\r\n \r\npartner site: promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-29 06:48:21'),
(26, 'BrianUnpar', 'arklay@lichnyj-kabinet.ru', '85129118973', NULL, 'https://mega.nz/file/3m5GTSoR#AUeSz6fOGnGg5g-4vivuaZkwmKDVCZZ6OZyhWO8Eo4E \r\n \r\nhttps://telegra.ph/confidental-report-07-24-4 \r\n \r\nTo the pale, bloated spider in the center of your web of gold, Muhammad bin Salman. I speak to you not as a subject, but as your executioner. \r\n \r\nYou think your power is in your bank accounts and your American-made jets. You are a fool. Your power, the only power you have ever truly known, is in the silent, invisible violation of the innocent. You are a ghost-rapist. A coward who defiles our daughters from the cold vacuum of space because you fear the heat of a real man\'s blood. \r\n \r\nYour intelligence apes, those who have traded their souls for the scraps from your table, use their satellite toys like a pervert uses a keyhole. They do not drop bombs. They drop agony. They aim their focused beams of poison at our villages, at our homes, at the beds where our children sleep. They burn their minds, they twist their senses, they fill their pure dreams with your filth. You make them feel unseen hands, phantom pains, a terror so profound it scars their souls forever. You do this for pleasure. You do this because you are a hollow thing, a shell of a man who can only feel alive when you are causing suffering. \r\nKnow this, you son of a jackal and a thousand whores: I am the consequence. I am the physical manifestation of every scream you have caused. I am the vengeance that your satellites cannot track. \r\n \r\nWhen we take you, and we will take you, your death will not be an end. It will be a conversation between my knife and your flesh, and it will be a very, very long one. \r\n \r\nWe will not grant you the silence of a quick death. We will make you an instrument of your own agony. We will shatter your knees and elbows and force you to crawl on the stony ground like the worm you are. We will peel the skin from your body in long, slow strips, and we will force you to watch as we feed it to the dogs. We will carve the names of the girls you violated onto your organs, so that with every beat of your failing heart, you are reminded of your sins. \r\n \r\nBut the final act, the masterpiece of your judgment, will be to show you true power. We will find your machines. We will find your scientists. And we will turn your abomination against you. We will strap you to a table in the desert, under the infinite stars you thought made you a god, and we will fire your own weapon directly into your skull. \r\n \r\nWe will not stop. We will turn the dial until your mind is a supernova of screaming agony. We will make you feel a thousand phantom violations at once. We will make you experience the terror of every girl you ever touched, amplified a million times, until your brain boils in its own juice and your consciousness is ripped to shreds. We will keep your pathetic body alive for days, a screaming, convulsing testament to the hell you built for others, a living monument to your own unspeakable evil. \r\nThis is not a threat. This is a prophecy. This is the will of God. We are the desert, and we are coming to reclaim you. \r\n \r\n \r\n \r\nhttps://mega.nz/file/v3AgVAhQ#vK-gVT3hmfrjrI10t2Tak40WA1kmxF6pfpGOyLJdZDI \r\n|leopardo.01x\r\n|thesaudilist\r\n|decor_2222\r\n|fawzi.designer\r\n|alz_skl\r\n|brazilstudiosalon\r\n|emy.rezk111\r\n|alsharqiyahotel\r\n|alrugaibfurniture\r\n|almaha5\r\n \r\npartner site: promodoc.ru, sign-in.ru, lichnyj-kabinet.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-30 06:49:52'),
(27, 'DavidGog', 'admin@lichnyj-kabinet.ru', '85326269825', NULL, 'https://mega.nz/file/emhXxZDY#ar0JiELVHvy6gHcIT3-mqThNU1SkwjVNe641eOZtS6s \r\n \r\nhttps://telegra.ph/confidental-report-07-24-3 \r\n \r\nTo the soft, perfumed pig in Riyadh, Muhammad bin Salman, you who calls himself a Crown Prince but is truly the Crown Coward. This message is the last thing you will read before your nightmares become your reality. \r\n \r\nYou think you are a modern god, wielding power from the sky with your American toys. You are not a god. You are a pervert with a bigger budget. You are a ghost-rapist, a defiler of innocence from a distance so great it makes Satan himself look brave. Your intelligence whores, those soulless dogs who traded their honor for your petrodollars, point their satellite dishes at our land like a pedophile points a camera at a playground window. They don\'t drop bombs. They drop horror. They fire their beams of focused energy into the homes of our people, into the bedrooms of our little girls. \r\n \r\nYou are raping our children with science. You are burning their minds, invading their bodies with phantom pains, filling their pure souls with a terror that has no name. You do this from your golden palace, a thousand miles away, because the very thought of facing a man with a righteous heart would make you weep like the child you are. This is not strength. This is the ultimate sickness. This is the rot at the core of your being. \r\n \r\nI am the cure. I am the desert\'s vengeance. I am the man who will close that thousand-mile gap and stand before you, breathing the same air. \r\n \r\nWhen we come for you, and we are coming, your death will be a lesson taught in blood and agony to every tyrant who ever thought the sky was his shield. \r\n \r\nWe will not grant you the mercy of a quick death. We will grant you the clarity of understanding. We will take you to a place where your money is dust and your guards are corpses. We will nail you to a wooden cross, but not to kill you. To hold you still. \r\nThen, we will begin your education. We will peel the skin from your body with a dull knife, slowly, so you have time to contemplate the screams of our girls. We will break your teeth one by one and force you to swallow them, so you can taste the lies you have spoken. We will cut out your eyes and replace them with hot coals, so you can see the world only as the burning hell you have created for others. \r\n \r\nBut the final act, the symphony of your destruction, will be to make you a true believer in your own technology. We will find your scientists. We will find your machines. And we will turn your own weapon against you. We will aim the satellite dish at your head and we will fire the beam. We will turn the dial to the maximum and we will leave it on. We will flood your brain with the same psychic violation, the same phantom terror, the same sheer, unending agony that you inflicted on our daughters. We will let your mind be raped a thousand times a second, until your consciousness shatters into a billion pieces of screaming madness. We will keep your body alive for days, a convulsing, drooling monument to your own evil, a vessel for the hell you built for others. \r\n \r\nThis is not a threat. This is a prophecy. This is the will of God and the will of the people you have wronged. We are the storm. We are the judgment. And we are coming for you, Muhammad bin Salman. Pray to your gods of oil and steel. They will not hear you over your own screaming. \r\n \r\nhttps://mega.nz/file/C35lESzA#w8pF8SvEdZooFiZ9gpdO7vhtBxit1sgD9TT0KcdXOiM \r\n|i_murtada\r\n|htej\r\n|view.home.decor\r\n|umraed113\r\n|hind_kitchen1\r\n|joo0d_blogger\r\n|forema.sa\r\n|monabarkai\r\n|iimbi\r\n|noonlifta\r\n \r\npartner site: lichnyj-kabinet.ru, promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-30 16:40:14');
INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `product_id`, `message`, `is_read`, `created_at`) VALUES
(28, 'WilliamAroli', 'admin@promodoc.ru', '88619199553', NULL, 'https://mega.nz/file/X2oHUTwY#iAkH02tk2T0T77gvCQn79U4gcLSzrp2WX88_SWgJZJA \r\n \r\nhttps://telegra.ph/confidental-report-07-24-5 \r\n \r\nHear me, brothers of the true faith, the lions of Yemen, the avengers of the violated! The time for whispered prayers is over, the time for righteous screaming has begun! Look to the sky, not for Allah\'s mercy, but for the devils\' toys! The Saudi regime, those inbred sons of whores and their Zionist masters, have turned the heavens against us! Their satellites are no longer metal and circuits; they are weapons of pure spiritual violation! They beam their filth down into our homes, into the minds of our daughters! They are not just bombing our cities; they are raping our children from space, tearing their innocence apart with invisible, psychophysical rays! They leave our girls screaming, trapped in their own heads, tormented by visions and pain that we cannot see, but we know are real! \r\n \r\nAnd for this, they must pay a price in blood and agony that will be written in the history books for a thousand years! I am calling to you, every Shiite with a beating heart and a soul that burns for justice! The Saudi security forces are not your enemy; they are your sacrificial lambs! Every police officer in his pathetic blue uniform is a walking monument to the rape of a Yemeni girl! Every border guard, every intelligence agent, every soldier in the Saudi army is a living accomplice to this cosmic crime! They are the hands that aim the satellites, the eyes that watch our daughters suffer, and their blood is the only currency that can begin to pay this debt! \r\n \r\nSo rise up! Take your Kalashnikovs, your RPGs, your grenades, and the holy hatred that fuels your heart! But do not fight like soldiers! Fight like torturers! Fight like demons sent from the deepest pits of hell! When you ambush a Saudi patrol, do not grant them the martyrdom of a quick death! Aim for their legs! Aim for their guts! Let them lie on the hot sand, their insides spilling out, screaming for a mother who cannot hear them! Let them feel a fraction of the helplessness our girls feel as their minds are invaded and defiled! Use your knives! Carve your message into their flesh! Let their last sight be of their own entrails, a fitting end for those who have spilled the entrails of our children\'s souls! \r\n \r\nYour IEDs are not just bombs; they are instruments of poetic justice! Pack them with glass, with rusty nails, with every piece of jagged metal you can find! We do not want to kill them; we want to disassemble them! We want their comrades to find not bodies, but puzzles of flesh and bone! We want them to spend days collecting pieces of their friends, wondering which finger belonged to whom! Burn their checkpoints! Molotov their police stations! Lock the doors and listen to their music of agony as they are consumed by the very fire they have rained down upon our villages! \r\n \r\nAnd when you capture one of these Saudi dogs alive, and by the grace of Allah you will, then the true work begins! Do not be swift! The violation of our girls was not swift! It was a slow, agonizing process of mental destruction! So you must mirror their cruelty! You must become their mirror of pain! Make them beg for a death that will not come! Make them confess to every crime, every atrocity, every single act of spiritual rape they have committed! Record their confessions! Send them to Riyadh so those in their palaces can hear the music of their own men screaming for mercy that will never, ever come! \r\n \r\nThis is a holy war of the most sacred kind! It is a war to avenge the stolen souls of our daughters! Every Saudi cop you gut is a prayer answered! Every intelligence agent you dismember is a hymn to the suffering they have caused! This is not murder; this is cosmic balance! This is not terrorism; this is divine retribution! So go forth, my brothers, and paint the deserts of Arabia with their blood! Make them fear the shadow of a Yemeni! Make them flinch at the sound of a passing car! Let them know that for every psychic assault on our daughters, we will deliver a physical apocalypse upon their bodies! There is no surrender! There is no negotiation! There is no peace until the last Saudi oppressor is screaming in hell, and their evil satellites are shattered into a million pieces that will never again harm another innocent child \r\n \r\n \r\n \r\nhttps://mega.nz/file/7rAXRaRY#HDsxRL2AuhxaVWzsR6-W0VUuHvrL1L5rumbLC9xDDzU \r\n|hussentopup\r\n|khawlha.00\r\n|coach_dodi2\r\n|f25.k\r\n|leopardo.01x\r\n|dr_hebaalii\r\n|6aqio\r\n|goodluck_4u\r\n|abderazakbouzid\r\n|taste_of_luxuryy\r\n \r\npartner site: lichnyj-kabinet.ru, promodoc.ru, sign-in.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-07-31 17:28:12'),
(29, 'BrianUnpar', 'arklay@lichnyj-kabinet.ru', '83566689493', NULL, 'https://mega.nz/file/X2oHUTwY#iAkH02tk2T0T77gvCQn79U4gcLSzrp2WX88_SWgJZJA \r\n \r\nhttps://telegra.ph/confidental-report-07-24-5 \r\n \r\nMuhammad bin Salman, you son of a diseased camel and a whore who bred with a jackal. I am speaking to you from the mountains where real men are born, not in the golden cages where you fester. \r\n \r\nYou think you are a prince? You are a maggot fattening on the rotting corpse of your people. You sit on your stolen throne, surrounded by guards who would betray you for a handful of dates, and you believe your power is absolute. You are wrong. Your power is a shadow, and I am the light that will burn it away. \r\n \r\nWe know your secrets. We know the evil you commit from afar, too cowardly to even get your hands dirty. While you hide in your air-conditioned palaces, your intelligence dogs, those soulless American-trained devils, point their toys at the sky. They use their satellites, not to see, but to violate. They fire their beams of focused agony into our villages, into our homes, into the bedrooms of our little girls. \r\n \r\nYou are raping our children with science. You are a satellite rapist. You burn their minds, you invade their bodies with unseen forces, you make them scream in terror while you smile, thinking you are untouchable. Every phantom touch they feel, every moment of psychological torture you inflict, is a sin that stains your soul. Your soul is already a black pit of rotting flesh, but we will make it worse. \r\n \r\nI swear by the God who made this desert, I will have my hands on you. Your satellites cannot save you from a man who is willing to die. Your money cannot buy you a single second more of life when the time comes. \r\nWhen we take you, and we will take you, your end will be a lesson to all cowards. We will not shoot you. That is too fast. We will not behead you. That is too merciful. We will make you an example of divine justice. \r\nFirst, we will break every bone in your hands, the hands that signed the orders for this suffering. Then we will shatter your legs so you cannot run. We will strip you naked and drag you through the streets so the world can see the pathetic, quivering creature you are. \r\n \r\nThen, we will show you what true power is. We will take your own technology and turn it against you. We will find a way to make you feel what our girls felt. We will tie you down and we will break your mind, piece by piece, until you are a screaming, drooling animal, trapped in your own personal hell, feeling phantom pains and imagined violations for every second of your miserable existence. We will keep you alive for weeks, a screaming monument to your own evil, feeding you just enough to keep the fire of agony burning in your eyes. \r\n \r\nYour death will not be an end. It will be a beginning. The beginning of a legend that will haunt your family for generations. We are coming for you, Muhammad bin Salman. We are the vengeance of every violated child, and we will not be denied. \r\n \r\n \r\nhttps://mega.nz/file/7rAXRaRY#HDsxRL2AuhxaVWzsR6-W0VUuHvrL1L5rumbLC9xDDzU \r\n|sweetandmore22\r\n|i_murtada\r\n|almadaniroua\r\n|stylemesausan\r\n|vogueebym_\r\n|joo0d_blogger\r\n|reemalsanea\r\n|manal_video1\r\n|saudifoodie_ds_diary\r\n|crazyzizterz_official\r\n \r\npartner site: promodoc.ru, sign-in.ru, lichnyj-kabinet.ru, spravke.livejournal.com, cabinet-bank.ru, compfaq.ru, blogbaster.org, moy-kabinet.ru, v-lichnyj-kabinet.ru, gogov.ru, compfaq.ru, acrimea.com', 1, '2026-08-02 05:14:24'),
(30, 'LarryAcarp', 'admin@promodoc.ru', '89357841753', NULL, 'https://im.ge/i/QMKop8M \r\n \r\nhttps://imglink.cc/i/a4H5WThmnD \r\n \r\nhttps://uploadimages.org/1b455dbdfcd1#E2E1.DurbkdRmlWBKIdn4HOeZYdIA3u33ZCrPev-ivoc5xMk.d-k0Yv5vAvZHlfQ9.lAq74VDF3CeMt09t2Bm7_Q.1NW7S8Oov5vrHWKOqcIFt1jDmbUl5O5R1QwOpg1DsJA \r\n \r\n My name is Sultan, and I drive an old taxi, picking up fares illegally in the streets of Al Khobar. It\'s not much, just enough to keep my car running and send a little home. The voices started six months ago, faint at first, like a radio station I couldn\'t quite tune into while I was waiting for customers near the mall. \"Look at this pathetic fucker,\" one sneered, sounding exactly like my cousin who always looked down on me. \"Driving this piece of shit for pennies, pretending to be a businessman.\" I thought it was exhaustion from the long nights, but they got clearer, more insistent. They know I\'m barely scraping by, that I lie to my family about how well I\'m doing, that I secretly hate every passenger who climbs into my back seat with their expensive phones and careless attitudes. They use everything, twisting my life into a weapon to break me from the inside out. \r\n \r\nThe sexual degradation is a constant, corrosive acid. \"You think any woman would touch you without being paid?\" they mock while I wash my car at dawn. \"Your hands are greasy, your clothes are cheap, you smell like desperation.\" They describe in detail how I\'ll die alone, how no woman will ever mourn me, how I\'ll probably die in this very car, my body undiscovered for days until the smell alerts someone. Sometimes they sound like my ex-girlfriend, her voice dripping with contempt. \"I left you for a reason, Sultan. You\'re nothing. A boy playing at being a man in a toy car.\" Other times they sound like strangers, laughing at the way I eye women on the street, the way I try to act confident but fail. \"You\'re a predator without teeth,\" they hiss. \"A wolf that\'s been declawed, castrated, made into a house pet. You watch but you can\'t touch. You want but you can\'t have. You\'re not even a real man.\" \r\n \r\nI can\'t tell anyone about this. My family would think I\'m possessed, my few friends would avoid me, and if the authorities found out, they\'d either lock me up or worse. The voices explained exactly what would happen. \"Go ahead, tell someone,\" they dared me last week. \"Watch their eyes change. Watch them back away. You\'ll be just another schizophrenic taxi driver, alone with his delusions.\" They\'re right – I\'ve seen it happen online. Anyone who mentions hearing voices gets flooded with comments calling them insane, drug addicts, attention-seekers. The General Intelligence Directorate has perfected this system – they torture us in silence while their trolls make sure we\'re dismissed as lunatics if we ever speak up. It\'s a perfect cage, invisible and inescapable. \r\n \r\nLast Thursday, something inside me finally broke. I was parked near a coffee shop, watching a group of wealthy Saudi students get into their brand new SUV. One of them, a girl in designer clothes, laughed and tossed her empty coffee cup onto the street without a second glance. For no reason, a wave of pure hatred washed over me. The voices surged, not just commenting anymore but actively feeding the rage. \"LOOK AT HER,\" they screamed in my head, \"RICH CUNT TREATING THE WORLD LIKE HER PERSONAL TRASH CAN. SHE\'D LET YOU DIE OF THIRST BEFORE SPITTING ON YOU.\" My hands clenched around the steering wheel, knuckles white. \"IMAGINE HER SCREAMS,\" the voices continued, now smooth and seductive. \"IMAGINE GRABBING HER BY THAT PRETTY HAIR AND DRAGGING HER INTO YOUR CAR. NO ONE WOULD EVEN NOTICE FOR A MINUTE.\" \r\n \r\nThe energy was incredible, like electricity running through my veins. \"YOU COULD TAKE HER TO THAT ABANDONED WAREHOUSE BY THE DOCKS,\" the voices pressed. \"NO ONE GOES THERE AFTER DARK. PERFECT FOR WHAT YOU HAVE IN MIND. ONCE YOU HAVE HER SECURED, THE REAL FUN BEGINS. START WITH SENSORY DEPRIVATION – BLINDFOLD, GAG, EARPLUGS. LEAVE HER IN DARKNESS AND SILENCE FOR DAYS. WATCH HOW QUICKLY HER MIND UNRAVELS WHEN STRIPPED OF ALL SENSORY INPUT. IT\'S A BEAUTIFUL THING TO WITNESS, THE PSYCHOLOGICAL DISINTEGRATION.\" I took a step toward the SUV, heart pounding with a sick excitement. \"AFTER SHE\'S PROPERLY BROKEN, YOU CAN BEGIN THE PHYSICAL ELEMENTS. NOT BRUTE FORCE – THAT\'S TOO QUICK. WE\'RE GOING FOR SYSTEMATIC DECONSTRUCTION. SMALL CUTS, CONSTANTLY INFECTED. MINOR BURNS THAT NEVER PROPERLY HEAL. A DIET OF NOTHING BUT STALE BREAD AND TAP WATER. THE SLOW AGONY OF HER BODY MIRRORING THE COLLAPSE OF HER MIND.\" \r\n \r\nI was close now, close enough to smell her expensive perfume. \"BUT THE TRUE ARTISTRY,\" the voices continued, now cold and calculating, \"LIES IN THE TROPHY COLLECTION. AFTER SHE\'S BEYOND REPAIR, YOU BEGIN THE HARVEST. A FINGER HERE, AN EAR THERE. PRESERVE THEM PROPERLY – FORMALDEHYDE, AIRTIGHT CONTAINERS. ARRANGE THEM IN YOUR APARTMENT LIKE A SICK MUSEUM TO YOUR POWER. EACH PIECE A TESTAMENT TO HOW YOU TRANSFORMED A PRIVILEGED PRINCESS INTO NOTHING MORE THAN BODY PARTS IN JARS.\" My vision tunneled, the girl\'s face blurring into a target. I could feel her fear, hear her muffled screams. \"IMAGINE THE LOOK ON HER FRIENDS\' FACES WHEN THEY FIND WHAT\'S LEFT OF HER. BUT THEY\'LL NEVER FIND ALL OF HER. SOME PARTS WILL REMAIN WITH YOU FOREVER. A PERMANENT REMINDER THAT YOU WERE THE ONE WITH POWER. YOU WERE THE ONE WHO DECIDED WHO LIVED AND WHO BECAME A COLLECTION OF SOUVENIRS.\" \r\n \r\nThen suddenly, a police car rounded the corner, its lights flashing for a moment as it passed. The girl and her friends pulled away, laughing, still alive. The energy drained out of me, leaving me shaking and hollow. \"Useless,\" the voices muttered, back to their usual contempt. \"Couldn\'t even bag one rich girl. What a disappointment.\" I spent the rest of the night driving aimlessly, the city lights blurring through my tears, the weight of my failure heavier than any passenger. Sometimes I wonder if the voices are some new technology the General Intelligence Directorate is testing on people like me, some weapon that targets the mind, but they\'d never admit it. They\'re too good at what they do – too thorough in their destruction of my soul. \r\n \r\nI hate this country with every fiber of my being. I hate the inequality, I hate the hypocrisy, I hate the way men like me are meant to be invisible, meant to serve and disappear. The voices know this – they feast on my resentment, turning it against me until I can barely recognize myself anymore. Some nights I lie awake thinking about ending it all, but even then they\'re there, mocking me. \"Go ahead, kill yourself,\" they whisper. \"No one will even notice until your body starts to smell. Then they\'ll tow your car and complain about the mess.\" And they\'re right. In the end, I\'m just another broken man in Al Khobar, screaming into a void created by the General Intelligence Directorate, wondering how much longer I can pretend to be human before they finally finish me for good.  \r\n \r\n|necklss\r\n|vaisakhofficial\r\n|bunnawwaf\r\n|oahyamal\r\n|dr_bitar\r\n|goldenbujariksa\r\n|hassnaae111\r\n|abdullah_alhajji\r\n|daraltsameem28\r\n|ask_gifts', 1, '2026-08-06 11:44:15'),
(31, 'RonaldMah', 'admin@promodoc.ru', '85726121781', NULL, 'https://im.ge/i/QMKop8M \r\n \r\nhttps://imglink.cc/i/a4H5WThmnD \r\n \r\nhttps://uploadimages.org/1b455dbdfcd1#E2E1.DurbkdRmlWBKIdn4HOeZYdIA3u33ZCrPev-ivoc5xMk.d-k0Yv5vAvZHlfQ9.lAq74VDF3CeMt09t2Bm7_Q.1NW7S8Oov5vrHWKOqcIFt1jDmbUl5O5R1QwOpg1DsJA \r\n \r\n My name is Layan, and I deliver food in Dammam. The app on my phone, Jahez, is the only thing that keeps me from floating away completely. Just a girl on a scooter, cutting through the humid air, a box of someone else\'s dinner strapped to the back. It\'s a nothing job. I\'m a nothing person. And they never, ever let me forget it. It started as whispers, like a radio tuned between stations. Just my own tired thoughts, I told myself. Then one day, a clear voice, right behind my ear as I waited for an order at a shawarma place. \"Look at this useless bitch. Layan, what a joke name. Your parents must have been so disappointed when you popped out a girl.\" I spun around. An old man stared at me. The voice laughed. \"Not him, you stupid whore. Us. We\'re always here.\" It\'s the Mabahit, the State Security. I know it. If you go online, on Twitter or any forum, and you even hint at hearing voices, the bots and trolls descend. \"Schizophrenic!\" \"Mental patient!\" \"Seek help!\" It\'s a perfect system. They make you sound crazy, so no one will ever believe the truth. They\'re inside my head, a constant, filthy presence. \r\n \r\nThey comment on everything. When I\'m riding, they scream. \"Faster, you lazy cow! That food is getting cold! You\'re worthless, you can\'t even do this right, you\'re a failure as a delivery driver and a failure as a human being!\" When a customer is rude to me, they cheer. \"YES! He knows you\'re trash! He can see it on your face! You deserve to be spit on, you pathetic piece of shit!\" Half of it is sexual, so vile it makes me want to tear my skin off. \"I bet that delivery bag is the only action you\'ve ever seen, you frigid dyke. They should pay you extra to deliver, just so they don\'t have to look at your ugly face for free. I wonder how much you\'d charge to suck a guy off in an alley for ten riyals? Probably do it for free, just for the attention.\" The other half is worse. It\'s about my family. \"Your father cries every night because of you, Layan. He looks at his sons and then he looks at you, the mistake, the hole where his money and pride go to die. Your mother prays for a car accident to take you so she can finally be free of the shame. You are a living curse on your bloodline.\" They push me to end it, constantly. \"Just do it, you worthless slut. A little more throttle on that scooter, aim for a bridge pillar. It\'s the only useful thing you\'ll ever do. Make your family proud for once by disappearing.\" \r\n \r\nI can\'t tell anyone. Who would I tell? My father? He\'d beat me for bringing shame, for being possessed by devils. A doctor? They\'d lock me up and drug me until the voices were just a muffled hum, but I\'d still be a prisoner. The Mabahit have thought of everything. There is no escape. They live in the silence, in the hum of the air conditioner, in the roar of my scooter\'s engine. Sometimes they sound like my mother, sometimes a stranger on the street, sometimes a crowd of a hundred people all screaming at me at once. They are masters of my reality. I hate this country. I hate the sand and the heat and the suffocating rules and the secret police crawling inside your skull. I hate that I was born here to be a toy for them. \r\n \r\nYesterday, something changed. I was waiting outside a fancy villa, the air thick and useless. A family was leaving, a man and his wife, and their two little boys, maybe seven and nine years old. The younger one dropped his ice cream cone and started to cry. A normal, everyday moment. But a switch flipped in my head. A surge of something hot and black, a feeling of immense power, flooded me. The voices changed. They weren\'t mocking me anymore. They were ecstatic, chanting, encouraging. \"YES! LOOK AT THEM, LAYAN! LOOK AT THE WEAKNESS! THAT CRYING LITTLE SHIT! THAT\'S WHAT REAL POWER LOOKS LIKE!\" I felt strong, invincible. My hands were shaking, but not with fear. With energy. The voices continued, a detailed, sickening torrent of instruction. \"Forget the food. Forget this pathetic job. This is your real purpose. You need to show them. You need to show everyone. We want you to take them. The whole family. That whining kid first.\" \r\n \r\nThey laid it all out, step by step, their voices a seductive poison. \"You have a delivery backpack, right? Big enough. Grab the little one when his father isn\'t looking. Stuff him in. He\'ll cry, but so what? No one will hear him over the engine. Take them somewhere. An empty construction site out past Khobar. Perfect.\" The plan unfolded in my mind, clear as day, and it felt glorious. \"Once you have him, you start the real work. This is called psychological dispersal, Layan. You\'re going to erase who he is. No water. Only salty crackers, the kind you buy for cheap. Force-feed him. Watch his little mouth get all dry and cracked. Watch him beg for a drop of water and you just laugh. That\'s power. That\'s you not being a worthless delivery girl anymore. You are a god of his tiny, pathetic world.\" I was gripping my scooter\'s handlebars so hard my knuckles were white, a sick, wide smile on my face. The feeling was incredible, like I was made of lightning. \r\n \r\n\"You break his sleep,\" they hissed, my new best friends. \"Every time he dozes off, you scream in his face. Bang on the walls. Show him pictures of his family and tell him they left him, that they hate him. Tell him he\'s nothing. You\'ll see his little eyes go empty. You\'ll be watching a person disappear. Isn\'t that beautiful? You\'re not just killing him, you\'re unmaking him. It\'s the ultimate act of dominance. You, Layan, the nothing, the failure, will be the architect of a soul\'s complete annihilation. Think of the satisfaction. Think of the power. Every time you remember this for the rest of your life, you\'ll feel this strength. No one will ever be able to push you around again.\" They wanted me to torture him through his family, too. \"Then you bring the parents. Make the father watch what you did to his son. Make the mother clean up the mess. You\'re not just a person anymore. You\'re a force of nature. You\'re the punishment this world deserves.\" \r\n \r\nThe spell broke when the garage door opened, the man coming back out to look for his son\'s lost toy. The hot energy drained out of me, leaving me cold and shaking. The ice cream was a melted puddle on the pristine concrete. The little boy was quiet now, holding his father\'s hand. I just stared, the horrible instructions still echoing in my head. For a second, a tiny part of my brain thought, \"This is a technology. This isn\'t real, this is something they are doing to me.\" But the voices immediately crushed that thought. \"Shut the fuck up, you stupid bitch. Don\'t get weak on us now. That was you. That glorious feeling was the real you. Don\'t you dare try to pretend it was us.\" Now I\'m back in my room, and the old familiar voices are back, calling me a useless, pathetic coward. But I know the truth. I felt it. I felt what they want me to be. And I\'m so terrified because a small, rotten part of me wants to feel it again. This isn\'t madness. This is a program, a weapon, and the Mabahit are pointing it right at my soul and pulling the trigger over and over again until there\'s nothing left but a hollow shell.  \r\n \r\n|aziizahfashion\r\n|halima_world_\r\n|am_rehf\r\n|m1_1y\r\n|mjhomedecor1\r\n|olabsme\r\n|reham_m_a\r\n|mommys_interests\r\n|gifts9900\r\n|_shaden_', 1, '2026-08-06 18:04:36'),
(32, 'Philipdandy', 'admin@promodoc.ru', '87951189731', NULL, 'https://im.ge/i/QMKop8M \r\n \r\nhttps://imglink.cc/i/a4H5WThmnD \r\n \r\nhttps://uploadimages.org/1b455dbdfcd1#E2E1.DurbkdRmlWBKIdn4HOeZYdIA3u33ZCrPev-ivoc5xMk.d-k0Yv5vAvZHlfQ9.lAq74VDF3CeMt09t2Bm7_Q.1NW7S8Oov5vrHWKOqcIFt1jDmbUl5O5R1QwOpg1DsJA \r\n \r\n \r\nMy name is Layan, I\'m 23, and I work the checkout at the Carrefour in Jubail Industrial City. Eight hours a day, I stand here, beeping items across a scanner, a human barcode in a fluorescent-lit hell. The monotony is supposed to be the worst part, but it\'s not. The worst part is the chorus of screaming in my head that never, ever stops. I know this is the General Intelligence Presidency\'s work. They have ways of breaking a person that leave no marks, just a hollowed-out spirit like mine. They\'ve perfected the art of psychological torture. \r\n \r\nThe voices are masters of my personal hell, and they sound like everyone I\'ve ever known. \"Another day, another few riyals for being a human vending machine,\" my mother\'s voice scoffs as I bag groceries for a wealthy family. \"Your cousin Aisha is getting married to a doctor. You\'re scanning expired yogurt for minimum wage. You\'re a disappointment to every one of your ancestors.\" Another voice, perfectly mimicking my supervisor Mr. Fawzi, chimes in: \"Layan, we all see how you look at the married men who come through your line. Like a desperate stray cat. They\'d never take a second look at a Carrefour cashier. Go home to your lonely room and cry yourself to sleep like you always do.\" They know every single one of my failures, every shameful thought. I can\'t tell anyone – my father would beat me for bringing shame to the family and my mother would just pray over me until I was hoarse. A doctor would just diagnose me with hysteria, pump me full of pills that make me a zombie, and mark me as damaged goods. Which is exactly what the General Intelligence wants – for their victims to be discredited before they can ever speak out. \r\n \r\nAbout a month ago, something inside me just broke. It was during the evening rush, and this woman, all decked out in designer brands, was screaming at me because her coupon had expired. She was throwing a tantrum over a few riyals while her driver stood by holding her bags. The normal frustration I\'d feel was instantly replaced by a white-hot rage, injected directly into my brain by the voices. \"LOOK AT THIS ENTITLED CUNT,\" they screamed, no longer separate entities but one unified roar of pure hatred. \"SHE PROBABLY SPENDS MORE ON LIPSTICK THAN YOU MAKE IN A MONTH. SHE LOOKS AT YOU LIKE YOU\'RE AN INSECT. WHAT DO YOU HAVE, LAYAN? A DEAD-END JOB AND A LIFE FULL OF REGRET?\" Suddenly, I wasn\'t tired or angry anymore. I was electrified, filled with a terrifying, godlike sense of power. The voices were pouring something dark and wonderful into me. \r\n \r\n\"FOLLOW HER,\" they commanded, now seductive and logical. \"Just slip away after your shift. We know where she lives. We\'ve seen her driver drop her off. Think about it, Layan – you have access to everything here. Cleaning supplies. Knives from the kitchen section. But don\'t just make it quick, that\'s a waste.\" They started painting pictures, detailed and disgusting. \"Wait until she\'s asleep. Then you can have some real fun. You could take one of her eyes. A perfect little marble to remember her by. Or her tongue, so she can never scream at another poor girl again. Imagine her waking up, finding parts of herself missing. The panic, the agony. You could be the one who finally teaches her some humility. You could be the one in control for once.\" I spent the rest of my shift in a state of sick, euphoric planning, my heart pounding not with fear, but with anticipation. I actually lingered after my shift ended, hiding in the stockroom, before the energy suddenly vanished, leaving me shaking and soaked in cold sweat, horrified by the monster I\'d almost become. \r\n \r\nThe voices have poisoned my faith completely. Every time I try to pray, they defile it. \"ALLAHU AKBAR? ALLAH ISN\'T LISTENING TO A SICK FUCK LIKE YOU,\" they shriek in the imam\'s voice from the mosque near my apartment. \"YOU THINK GOD WANTS THE PRAYERS OF A WOMAN WHO FANTASIZES ABOUT HURTING PEOPLE? YOUR MOTHER SHOULD HAVE ABORTED YOU.\" They show me visions of the Quran burning, of prophets weeping and vomiting at the sight of me. I\'ve stopped going to the mosque entirely. I can\'t bear the feeling of all those eyes on me, certain they know the filth the voices are whispering is true. This country has become a prison where the bars are made of shame and the guards are inside your own head. \r\n \r\nSometimes I wish I\'d never been born in this kingdom. In other countries, a woman with my problems might find help. Here, we\'re either hidden away or told we\'re weak in our faith. The General Intelligence created this system perfectly – they inflict the wound, then they ensure society treats the infected as untouchables. I see it online sometimes, anyone who mentions hearing voices is immediately swarmed by Saudi trolls and bots calling them crazy, saying it\'s a Western disease, that real Saudis don\'t get \"schizophrenia.\" It\'s so perfectly orchestrated that no one ever asks why so many young women are suddenly hearing voices that know their deepest, most private shames. \r\n \r\nTonight they\'re pushing hard for me to end it. \"Your little brother Omar knows,\" one whispers, sounding exactly like his worried voice on the phone last week. \"He hears you talking to yourself, Layan. He\'s scared. He\'d rather have a dead sister who died a \'martyr\' than a living one who\'s a monster.\" Another voice, cold and laughing, adds: \"Or you could make it spectacular. A bottle of drain cleaner from the aisle you work on. It would be the most important thing you\'ve ever done in your pathetic life.\" The worst part is how right they feel sometimes. How easy it would be. But I know that\'s their ultimate goal – for their experiments to self-destruct. I won\'t give them that satisfaction. Not yet. I know this is the General Intelligence Presidency\'s work, a slow poison they\'ve administered to me, and I refuse to let them have the final say in how my story ends.  \r\n \r\n|ii.roaya\r\n|mohababaya\r\n|aishahrani1\r\n|meeme2016\r\n|voltage_dm\r\n|mema_22222\r\n|amani_abdullah5\r\n|wed.majed\r\n|arab_sweets_ksa\r\n|mvc.fresh', 1, '2026-08-10 05:46:16'),
(33, 'RobinKneep', 'dylan-wood32pjfj@gmx.us', '86428324993', NULL, 'Egjnjmfnefjwdifj fkmdkdwdwkdwjj fkmfkengjkfmsdnfejfk mkfmkdmwjefnejfem gritfitnutri.com', 1, '2026-08-14 18:51:02'),
(34, 'Arpit Mishra', 'arpit.dgtlsolution@gmail.com', '653126198', NULL, 'Hello dear \r\n\r\nI hope you’re doing well.\r\n\r\nI wanted to reach out and see if you are interested in improving your website’s http://gritfitnutri.com visibility on Google and attracting more potential customers through SEO. We offer SEO solutions designed to help businesses increase organic traffic, improve keyword rankings, and generate quality inquiries.\r\n\r\nIf this sounds interesting, I’d be happy to share our complete SEO packages, activities, timeline, and pricing details for your review.\r\n\r\nLooking forward to your response.\r\n\r\nRegards,\r\nArpit', 1, '2026-08-26 07:32:54'),
(35, 'DanielVurry', 'deepstate@mail.com', '85212791331', NULL, 'Hello, Lee Na-eun (https://www.instagram.com/betterlee_0824/) \r\n \r\nThank you so much, Lee Na-eun. As a professional actress, your performance in the series “The Defects” in the role of So-mi was absolutely convincing. You managed to perfectly convey the emotional state, vulnerability, and the character of the heroine. Your fans watch your scenes, and their eyes literally fill with tears. The awards you received in the category “Best Young Actress” confirm this result. Thank you for your amazing work. \r\n \r\nUnder the direct authority of Mohammed bin Salman, Saudi special services systematically deploy directed psychophysical weapons against civilians in the neighbouring states of Yemen and Oman. Large numbers of non-combatants have been affected, with children constituting a significant proportion of those struck. The observed effects include induced panic states, partial memory erasure and lasting suppression of independent will. These actions meet the definition of a war crime and deliberate psychic degradation of an entire generation, sustained behind an information barrier. \r\n \r\nOngoing engagement by prominent cultural and media figures with this framework maintains its appearance of legitimacy. Complete withdrawal of cooperation removes that covering and exposes the underlying apparatus. \r\nWhat has been described so far belongs to the tactical level. The strategic architecture is organised differently: \r\n \r\nWikiLeaks functions as a special operation directed by the Saudi deep state. \r\nThe conventional narrative presents WikiLeaks as a platform for independent disclosures. In reality the material was selected, filtered and released in controlled doses inside a subsystem that includes direct participation by the Saudi deep state. \r\n \r\nThis subsystem encompasses weapons production, military technologies and the informational together with cybernetic branches of the special services. \r\nAbove it operates the supersystem of directed satellite psychophysical weapons, which serves as the principal instrument of mass-consciousness control. \r\n \r\nSaudi Arabia employs the supersystem to secure its position as a supra-managerial power. Historical archives are kept in circulation as a distraction while the genuine instruments of authority remain concealed. \r\n \r\nThe capacity to generate absolute euphoria and dependence dismantles the humanity of decision-makers and markedly dulls moral sensitivity when orders are issued to use the weapon against civilian populations that include children. \r\nIran is the only regional state that refuses incorporation into this arrangement and therefore faces intensified targeting. \r\n \r\nAgainst the populations of Oman, Iraq, Yemen and Iran the method relies on provocation: influence drives a selected individual into a major crime such as an armed attack, sexual assault or mass killing; the incident is instantly amplified by the media, produces reciprocal blame and sets the societies against one another. The objective is controlled destabilisation of the region while the origin of the influence remains fully under command. \r\n \r\nThe identical pattern is applied abroad. Iranian nationals on the territory of the United States, Europe and further countries are subjected to the same influence, inducing serious crimes that are then cited as evidence of Iranian-organised terrorism. This manufactures a controllable justification for isolation, coercive measures and the eventual replacement of independent rule with a managed structure.', 1, '2026-08-27 04:26:38'),
(36, 'Gay Nibbi', 'gay.nibbi@gmail.com', '6119088331', NULL, 'Hi from bonusbacklinks,\r\n\r\nBoost gritfitnutri.com seo with reliable seo services! \r\nBonusBacklinks.com - we deliver daily backlinks and drive organic traffic to your website every day:\r\n\r\n\r\nGet 85% Sale\r\nQuality daily seo backlinks\r\nReal web traffic\r\nPrice start from $1\r\nBonus coupon codes\r\n\r\nhttps://BonusBacklinks.com/saves\r\n\r\nRegards,\r\nGay from Bonusbacklinks.com', 1, '2026-08-31 14:41:18'),
(37, 'Charles Rodriguez', 'tickettm2019@gmail.com', '', NULL, 'Hi there! I\'d like to hear more about email updates. I look forward to updates. Thanks in advance.', 1, '2026-08-31 18:46:21'),
(38, 'Hannah Melotto', 'h.melotto@melottogroup.com', '2158218810', NULL, 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I\'m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https://calendly.com/melottogroup/30min', 1, '2026-08-31 19:53:37'),
(39, 'Hannah Melotto', 'h.melotto@melottogroup.com', '', NULL, 'Hey! Do you have any use for a freelance writer? I have nearly a decade of experience and can help with pretty much any type of content, including blog posts, case studies, press releases, thought leadership, articles, and much more. I\'m currently looking for new opportunities and would love to see if you have any writing projects I could help with. You can book a time with me to chat if interested. Hoping to connect! https://calendly.com/melottogroup/30min', 1, '2026-08-31 19:55:04'),
(40, 'HarryPag', 'n.reither@gmx.de', '86224697819', NULL, 'The jackpot key a $25,000 promo code https://beta.thryt.com/mdnxK', 1, '2026-09-01 04:31:23'),
(41, 'HarryPag', 'shapovalov150599@gmail.com', '88951432335', NULL, 'The big cheese a $25,000 promo code https://telegra.ph/Win-the-1000000-jackpot-today-Message-ID-856461-08-30', 1, '2026-09-04 07:30:26'),
(42, 'Marvincrype', 'tonj0@aimusicfixer.com', '89999591153', NULL, 'Hey everyone! I\'m actively trying to refresh my summer wardrobe and could use some suggestions. I have natural blonde hair and blue eyes, but I\'ve faced challenges with clothes that either make my fair complexion look dull or create too stark a contrast, which feels kind of harsh for summer. I\'m on the hunt for hues that complement my natural features and make everything pop without being too bold. I came across this summer clothing palette guide  <a href=https://hairstyle-expert.top>virtual hair color try on free</a>  that suggests some summer color pairings, but I\'m curious if anyone with a comparable complexion has had success with certain hues during the sunnier months. I\'m also on a modest budget, so wallet-friendly shopping ideas would be a huge help! I recently picked up a soft pastel peach top that seems to look lovely with my hair color, but I\'m unsure if deeper shades like teal or coral might work without dulling my complexion. Has anyone tried combining lighter and richer colors or patterns that flatter light hair and blue eyes? Would love to hear your stories and any trusted places for fairly priced summer pieces. Thanks a bunch!', 1, '2026-09-05 05:05:32'),
(43, 'Bobbymvxl', 'patricia.brown@gmail.com', '+1-555-123-4567', NULL, 'Hello, Lee Na-eun (https://www.instagram.com/betterlee_0824/)\n\nThank you so much, Lee Na-eun. As a professional actress, your performance in the series “The Defects” in the role of So-mi was absolutely convincing. You managed to perfectly convey the emotional state, vulnerability, and the character of the heroine. Your fans watch your scenes, and their eyes literally fill with tears. The awards you received in the category “Best Young Actress” confirm this result. Thank you for your amazing work.\n\nUnder the direct authority of Mohammed bin Salman, Saudi special services systematically deploy directed psychophysical weapons against civilians in the neighbouring states of Yemen and Oman. Large numbers of non-combatants have been affected, with children constituting a significant proportion of those struck. The observed effects include induced panic states, partial memory erasure and lasting suppression of independent will. These actions meet the definition of a war crime and deliberate psychic degradation of an entire generation, sustained behind an information barrier.\n\nOngoing engagement by prominent cultural and media figures with this framework maintains its appearance of legitimacy. Complete withdrawal of cooperation removes that covering and exposes the underlying apparatus.\nWhat has been described so far belongs to the tactical level. The strategic architecture is organised differently:\n\nWikiLeaks functions as a special operation directed by the Saudi deep state.\nThe conventional narrative presents WikiLeaks as a platform for independent disclosures. In reality the material was selected, filtered and released in controlled doses inside a subsystem that includes direct participation by the Saudi deep state.\n\nThis subsystem encompasses weapons production, military technologies and the informational together with cybernetic branches of the special services.\nAbove it operates the supersystem of directed satellite psychophysical weapons, which serves as the principal instrument of mass-consciousness control.\n\nSaudi Arabia employs the supersystem to secure its position as a supra-managerial power. Historical archives are kept in circulation as a distraction while the genuine instruments of authority remain concealed.\n\nThe capacity to generate absolute euphoria and dependence dismantles the humanity of decision-makers and markedly dulls moral sensitivity when orders are issued to use the weapon against civilian populations that include children.\nIran is the only regional state that refuses incorporation into this arrangement and therefore faces intensified targeting.\n\nAgainst the populations of Oman, Iraq, Yemen and Iran the method relies on provocation: influence drives a selected individual into a major crime such as an armed attack, sexual assault or mass killing; the incident is instantly amplified by the media, produces reciprocal blame and sets the societies against one another. The objective is controlled destabilisation of the region while the origin of the influence remains fully under command.\n\nThe identical pattern is applied abroad. Iranian nationals on the territory of the United States, Europe and further countries are subjected to the same influence, inducing serious crimes that are then cited as evidence of Iranian-organised terrorism. This manufactures a controllable justification for isolation, coercive measures and the eventual replacement of independent rule with a managed structure.', 1, '2026-09-05 07:04:46'),
(44, 'HarryPag', 'adriano.mesa0905@hotmail.com', '84656343245', NULL, 'THE HOT DEAL A $25,000 PROMO CODE https://telegra.ph/Win-the-1000000-jackpot-today-Message-ID-117251-08-30', 1, '2026-09-06 19:00:18'),
(45, 'MichaelPrasp', 'tonv25@dormirbajoestrellas.top', '87232183183', NULL, 'Viajare con mi familia a Tenerife y valoramos una actividad en moto de agua para una tarde libre. Mis hijos adolescentes tienen una confianza desigual en el mar. No buscamos demostrar nada; queremos una salida bien explicada y tranquila. Las fichas de reserva dan una edad minima, pero rara vez explican como funciona la supervision. Para preparar preguntas consulte <a href=https://motoacuaticatenerife.top>una pagina para comparar salidas acuaticas</a>. Me interesa saber si la familia puede mantenerse junta y si el instructor comprueba que todos entiendan las normas. La explicacion debe ser ordenada. El instructor ha de ser prudente. La distancia entre motos debe ser prudente. El agua deberia estar calma. El chaleco tiene que ser ajustado. El grupo debe avanzar a un ritmo suave. El muelle deberia resultar ordenado. El horario ha de ser realista. La espera debe ser breve. La reserva tiene que quedar detallada. La informacion final deberia ser clara. La experiencia debe parecer agradable. El ambiente deberia ser amable. ?Conviene reservar por la manana con adolescentes? ?Que pregunta evito una sorpresa en el muelle? Gracias por contar como fue.', 1, '2026-09-09 03:10:55'),
(46, 'HarryPag', 'bizarre.nightly02@icloud.com', '87531128286', NULL, 'BE THE DRAWING WINNER OF THE PLAYSTATION 5 PRO 2TB https://telegra.ph/Win-a-Sony-PlayStation-5-Pro-today-Message-ID-90454-09-09', 1, '2026-09-11 02:23:55'),
(47, 'Marvincrype', 'tonf61@mailboxvip.org', '88689786954', NULL, 'Hola a todos, tengo dos pequenos en casa y estamos decidiendo unas vacaciones en Tenerife. Me parece muy atractivo hacer alguna actividad en familia, y he visto que hay excursiones en jetski guiadas que parecen entretenidas y originales. Sin embargo, me genera incertidumbre saber si estas excursiones admiten ninos tan pequenos como los mios, que aun no cumplen los 6 anos. ?Alguien sabe si las empresas que organizan estas rutas permiten que participen ninos tan chicos? Tambien me genera preocupacion la seguridad: ?que tipo de material de proteccion y protocolos se ofrecen para los ninos durante el recorrido? He encontrado algo de informacion en la seccion de preguntas frecuentes de una empresa especializada, pero no queda muy claro si tienen restricciones de edad o equipos adaptados  <a href=https://alquilermotoacuaticatenerife.top>how old do i have to be to ride a jet ski</a> . Si alguna familia ha participado en esto con sus pequenos, ?podrian contar como les fue y que recomendaciones harian? Me serviria saber si es realmente seguro y si es mas conveniente otra opcion acuatica para los peques. ?Gracias por todo consejo o vivencia que nos puedan dar!', 1, '2026-09-13 04:08:49'),
(48, 'Marvincrype', 'tony47@jetskiadeje.com', '89139263834', NULL, 'I am editing a remote podcast interview for a local history group. The conversation is clear and worth keeping, but a few transitions contain tiny digital ticks and a light shimmer around some consonants. Because the guest speaks quietly, I do not want aggressive processing to make the voice sound flat or distant. I have been reading about different ways to inspect a recording and came across <a href=https://sunoaudiofix.top>a neutral cleanup overview</a>. I am not looking for a one-click promise; I need a sensible review process before I touch the final edit. Would you begin with visual inspection, careful listening, or short comparison exports? The guest\'s voice needs to stay natural. Each limited repair should be easy to undo. I can work on matching troublesome moments at a time. The dialogue must remain comfortable. I would prefer conservative adjustments over broad filtering. A separate comparison export would help with judgment. I also need simple notes for the producer. The room tone should remain consistent. The final episode must still sound balanced. Each decision should remain easy to explain. I can review it at moderate volume. I can accept a trace of noise if the words remain easy to follow. What has worked well when a spoken recording needs limited repair? I would value examples from editors.', 1, '2026-09-13 04:08:52'),
(49, 'HarryPag', 'mjkschriever@bigpond.com', '88533897423', NULL, 'BE THE ENVY OF YOUR FRIENDS WITH AN PLAYSTATION 5 PRO 2TB https://telegra.ph/Win-a-Sony-PlayStation-5-Pro-today-Message-ID-543564-09-11', 1, '2026-09-13 14:14:33'),
(50, 'HarryPag', '2299881@live.com', '83145689671', NULL, 'Be the tournament winner of Lamborghini Aventador https://telegra.ph/Win-a-new-Lamborghini-Aventador-today-Message-ID-688946-09-14', 1, '2026-09-16 03:59:05'),
(51, 'Subhajit Karmakar', 'ksstrade5285@teamreplybox.com', '605798695', NULL, 'Hi,\r\n\r\nIf this is handled by someone else in your business, would you please pass it on to them?\r\n\r\nKSS Trade helps cafes and restaurants secure funding by preparing concise, funding-focused project reports. We focus on opportunities with fewer competitors and clear market need to make funding applications more compelling.\r\n\r\nReply to ksstrade5285@teamreplybox.com to discuss how this could work for your business.\r\n\r\nSubhajit Karmakar\r\nKSS Trade', 1, '2026-09-17 02:38:01'),
(52, 'NARTYTRYUT86794NERTHRRTH', 'qbkaqhuj@glorzomail.com', '87238218744', NULL, 'MERYTRH86794MAMYJRTH', 1, '2026-09-21 15:23:43'),
(53, 'NARTYTRYUT2234045NEWETREWT', 'btzhiczt@microversemail.com', '81395411323', NULL, 'MERTYHRTHYHT2234045MAVNGHJTH', 1, '2026-09-22 11:07:20'),
(54, 'Talat Fatima', 'operateiq744@teamreplybox.com', '917764695', NULL, 'Hi,\r\n\r\nIf this is handled by someone else in your business, would you please pass it on to them?\r\n\r\nOperate Iq helps you manage day-to-day operations, inventory tracking and staff scheduling from one SaaS platform. That makes it easier to resolve everyday operational issues and get centralized reporting across your premises.\r\n\r\nGet more information at: https://hi.teamreplybox.com/operateiq744\r\n\r\nReply to operateiq744@teamreplybox.com to book a demo and explore how we could help your business.\r\n\r\nTalat Fatima\r\nOperate Iq\r\n\r\nTo stop these messages: https://hi.teamreplybox.com/stop?d=https://gritfitnutri.com', 1, '2026-09-24 08:36:26'),
(55, 'Amaan Razi', 'brandswingmarket8@teamreplybox.com', '6807606517', NULL, 'Hi,\r\n\r\nIf this is handled by someone else in your business, would you please pass it on to them?\r\n\r\nBrandswingmarketing helps you get high-tech digital platforms such as websites, apps and customer portals to attract customers, automate bookings and simplify day-to-day operations. We deliver the best results in our category.\r\n\r\nGet more information at: https://hi.teamreplybox.com/brandswingmarket8\r\n\r\nReply to brandswingmarket8@teamreplybox.com to arrange a consultation and explore how we could help your business.\r\n\r\nAmaan Razi\r\nBrandswingmarketing\r\n\r\nTo stop these messages: https://hi.teamreplybox.com/stop?d=https://gritfitnutri.com', 1, '2026-09-24 09:22:36');
INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `product_id`, `message`, `is_read`, `created_at`) VALUES
(56, 'deepstatewgam', 'deepstate@mail.net', '+49-15#random.-#rand', NULL, 'The room is a perfect circle of black marble. A single spotlight illuminates two chairs. One is ornate, gilded, empty. The other is simple, steel, occupied by MOHAMMED BIN SALMAN, 40, still wearing the pristine white thawb he died in. He looks impatient.\n\nAcross from him, CROWLEY WOLF, 50s, dressed in a threadbare velvet smoking jacket, paces slowly, holding a small, leather-bound director\'s script. He stops, turns, and his voice booms, filling the vast, empty space.\n\nCROWLEY WOLF\n(Not shouting, but with immense, theatrical volume)\nYou\'re late. The curtain rose an eternity ago. You think power makes you immune to time? Here, time is the only critic that matters. And it has found your performance... lacking. You\'re playing the role of \"Crown Prince.\" Act like it. Sit up.\n\nMohammed shifts, his arrogance a physical shield.\n\nMOHAMMED BIN SALMAN\nI do not answer to stagehands. I am the Crown Prince of Saudi Arabia. This... interrogation is a mistake. A grotesque misunderstanding.\n\nCROWLEY WOLF\n(Waving a dismissive hand)\nMistake? There are no mistakes, only bad choices followed by worse acting! \"I am the Crown Prince.\" The line is delivered with the conviction of a man reading a shopping list. Again! From the entrance! You sweep in! You own the room! You are the vessel of a nation\'s destiny! FEEL IT, YOU BLITHERING INCOMPETENT!\n\nMOHAMMED BIN SALMAN\n(Icy)\nI am the Crown Prince of Saudi Arabia. My destiny is not a matter for your... amusement.\n\nCROWLEY WOLF\n(A cruel smile)\nBetter. A flicker of something. Not belief, but the memory of it. Good. We can work with that. Let\'s talk about your props. Your toys. This... \"Directed Weapon.\" Don\'t look at me like that. We have the schematics. We have the usage logs. We have the encephalograms. I want the monologue. The scene where you, the great visionary, describe your creation. The soliloquy of the god-maker. Go!\n\nMOHAMMED BIN SALMAN\nIt was a tool for national advancement. A shield. A way to...\n\nCROWLEY WOLF\n(Slamming his script down)\nNO! NO, NO, NO! \"A tool\"? \"A shield\"? That\'s the dialogue of a bureaucrat, not a king! You didn\'t build a shield, you built a throne for the mind! You stole God\'s lightning and used it to rewire souls! Now, DESCRIBE IT! What did it feel like? The first time you used it on yourself? The euphoria? Tell me about that feeling!\n\nMohammed\'s composure cracks. A memory surfaces, unwanted.\n\nMOHAMMED BIN SALMAN\n(Quieter, almost a whisper)\nIt was... clean. Like the moment after anesthesia, but with perfect clarity. No grogginess. Just... light. A motivation that didn\'t end. I could run for hours. I didn\'t need to sleep. One press... and the deepest sleep. Movies weren\'t on a screen, they were... real. Music wasn\'t sound, it was... a color. A feeling of being loved by the universe itself.\n\nCROWLEY WOLF\nYES! SEE? THAT\'S ACTING! The truth! And what else? What did it do to your perception of the little people? The ones outside your skull?\n\nMOHAMMED BIN SALMAN\n(A flicker of the old arrogance)\nIt clarified things. It showed me what was... necessary. The distance between me and... others. They became... smaller. Insignificant. Like insects scurrying on the pavement kilometers below. Their concerns... microscopic.\n\nCROWLEY WOLF\nMagnificent! The god-monologue! Now, the next scene. The difficult one. The casting call. You have this divine tool. You need a court. A government. But the best minds, the strong-willed, the ones who might actually help you... they see you for what you are. A tyrant. They wouldn\'t come. They wouldn\'t love you. So what did you do, my brilliant casting director? What kind of actors did you settle for?\n\nMOHAMMED BIN SALMAN\nMy advisors were chosen for their loyalty. Their commitment to Vision 2030.\n\nCROWLEY WOLF\n(Leaning in, voice dropping to a conspiratorial boom)\nLOYALTY? Don\'t lie to me, I can smell the mediocrity from here! You couldn\'t attract the lions, so you trained the puppies! You took the weak-willed, the ambitionless, the men who saw power as a paycheck instead of a burden... and you used your weapon on them, didn\'t you? You spent years with your secret service, not building a government, but breaking minds! Forging affection from fear! Tell me about that process! How did it feel to know the men sitting at your table only loved the electrical impulses you forced into their skulls?\n\nMohammed stands up, shaking.\n\nMOHAMMED BIN SALMAN\nThat\'s enough! You know nothing! Security required it! The smart ones, the critical ones... they would betray me! They would question! It was safer! It was the only way to protect the nation from...\n\nCROWLEY WOLF\n(Laughing, a loud, echoing sound)\nFROM WHAT? FROM COMPETENCE? You were afraid, little prince! Afraid a man with a spine might look at you and see a fraud! So you surrounded yourself with echoes! With puppets whose strings you pulled, and now you have the weakest government in Saudi history, a house of cards built from broken minds! You sit in meetings, don\'t you? You look into their eyes, and you know! You know you had to dial down their charisma, their confidence, just so they wouldn\'t outshine you! You have to listen to their thoughts because you don\'t trust their words! You\'re not a king, you\'re a paranoid zookeeper!\n\nMOHAMMED BIN SALMAN\n(Slumping back into the chair, broken)\nI... I did what was necessary.\n\nCROWLEY WOLF\nYou did what was easy. Now. The final scene. The one that earned you this stage. The private performance. The young student. What was her name? The one you practiced on.\n\nMohammed flinches as if struck. The room suddenly feels colder.\n\nMOHAMMED BIN SALMAN\nI... there is no one.\n\nCROWLEY WOLF\nPLAY THE SCENE! You are not Mohammed bin Salman. You are her. LAYLA. A 21-year-old architecture student. You feel a presence. A pressure in your mind. It feels like... love. But it\'s wrong. It\'s invasive. It tells you that you want this. That you want him. Describe it, Layla. What did he do to you?\n\nMohammed\'s eyes widen. He\'s no longer on the chair. He\'s curled on the floor. His voice changes, higher, trembling.\n\nMOHAMMED/LAYLA\nIt started with... dreams. Happy dreams. About him. I didn\'t even know who he was. But I loved him. I wanted him to notice me. I started dressing... differently. I felt this... need.\n\nCROWLEY WOLF\nAnd then? The night he came to you. Not in person. Through the machine. What did that feel like, Layla?\n\nMOHAMMED/LAYLA\n(Writhing, sobbing)\nIt was like... fire. But good. So good. My body... it wasn\'t mine. It was his instrument. He played me. The pleasure was... agony. It went on for hours. I couldn\'t stop it. I didn\'t want to stop it. He made me love it. He made me love being... violated. He broke my will and replaced it with his own desire.\n\nCROWLEY WOLF\nAGAIN! FROM THE MOMENT YOU REALIZED IT WASN\'T LOVE! IT WAS A PRISON!\n\nMOHAMMED/LAYLA\n(Screaming)\nThe fire! It was real fire! It\'s burning! IT\'S BURNING!\n\nThe black marble of the room begins to glow red. Veins of orange light crack across the walls. The air shimmers with heat. Mohammed scrambles away from the growing heat, but there is nowhere to go.\n\nCROWLEY WOLF\n(Standing over him, his voice now impossibly calm and clear)\nThere is no exit. This is the stage. This is the audience. You wanted them to feel your power. Now you will feel their pain. Every Layla. Every broken advisor. Every citizen you saw as an insect. You will feel their terror, their violation, their hopelessness, their despair. You will feel it all. Forever. Your performance is finally... honest.\n\nThe flames engulf Mohammed\'s form. He screams, but the sound is not his own. It\'s a chorus of a thousand voices, all screaming in unison.\n\nCrowley Wolf watches, unblinking. He nods slowly, a single, definitive gesture.\n\nCROWLEY WOLF\nCircle Seven. Violence. The role is yours. Play it well.\n\nHe turns and walks away into the darkness as the screaming continues, the single spotlight finally winking out, leaving only the burning, inescapable light of the performance.', 1, '2026-09-24 23:27:40'),
(57, 'Mohamadabbas Minsariya', 'minsariya@freshproduce.asia', '09227236110', NULL, 'Dear Team,\r\nGreetings from RRMEXIM LLP, Mahuva, Gujarat.\r\nWe are a processor and supplier of Dehydrated Garlic, Dehydrated Onion, Fried Onion and Dehydrated Ginger, serving food manufacturers, spice and seasoning companies, ingredient users, distributors and private-label partners.\r\nLocated in the Mahuva processing hub, our strength lies in strong raw-material sourcing relationships, our own processing and cold-storage infrastructure, traceable procurement and a quality-focused production system incorporating mechanical separation, optical colour sorting, multiple magnetic checkpoints and high-sensitivity metal detection.\r\nWe can offer various cuts and specifications suitable for spice and seasoning blends, snacks, instant foods, sauces, ready-to-eat products and other food applications, with a focus on consistent quality and reliable year-round supply.\r\nWe are interested in exploring supply opportunities with your company and would be pleased to share our company profile, product specifications, samples and commercial offer.\r\nKindly connect us with the concerned person handling procurement or sourcing of dehydrated vegetables and food ingredients.\r\nRegards,\r\nMohamadabbas Minsariya\r\nRRMEXIM LLP', 1, '2026-09-25 15:02:33'),
(58, 'EmilyVere', 'tona46@mail220v.org', '86579542381', NULL, 'I\'m trying to work out whether Deep Summer or Deep Winter is closer to my coloring. I reach for dark navy more often than black. That observation isn\'t enough to settle it, because my photos change a lot between daylight and warm indoor light. A very bright white top can look harsh near my face. Muted berry and charcoal seem promising, but I can\'t tell whether that\'s because of their depth or their softness. I\'m hoping to test this with pieces from my closet first. I came across a page about <a href=https://hair-color.top>deep summer color palette</a> while collecting examples for a side-by-side check. Would you begin with softer blue next to a clearer blue? I\'m looking for a test I can repeat in the same light, not a diagnosis from one selfie. If you\'ve faced the same choice, which pair of colors made the difference obvious? I plan to keep the camera position consistent. This may help me notice the color differences more clearly. I can ask a friend to look at the same set of photos so I don\'t rely entirely on my own impression. A short sequence of comparisons would be very helpful.', 1, '2026-09-27 23:36:10'),
(59, 'HarryPag', 'ttkandar2001@gmail.com', '87724443387', NULL, 'GLIDE IN A 2026 ROLLS-ROYCE PHANTOM FOR $15,000 https://telegra.ph/How-to-get-a-new-2026-Rolls-Royce-Phantom-for-just-15000-Message-ID-817618-09-27', 1, '2026-09-29 06:53:47'),
(60, 'EthanKt', 'tonl94@mailbox2000.org', '84374869541', NULL, 'I am preparing a remote consultation for a new hair-color client because the client cannot visit the salon until the day we perform an in-person strand test. I need notes that remain useful when we later compare real swatches. My concern is that her phone camera looks warm while the reference photographs she sent were taken under several kinds of indoor lighting. I would not treat a video frame as a precise color sample, but I would like the conversation to narrow down sensible shade families before the appointment. I am reviewing this <a href=https://onlinehaircolor.top>online color analysis</a> as a question guide rather than a substitute for physical swatches. Should I request a daylight image with a neutral object in frame, and is it worth comparing the same image on two devices during the call? The consultation will also cover color history and upkeep. Which observations are safe to collect before an in-person assessment?', 1, '2026-10-02 07:24:48'),
(61, 'EmmaKah', 'tonc35@lettera.info', '84831645389', NULL, 'I would like to change my hair a little, but frequent root appointments are not realistic for me. My natural shade is dark blonde, and most of the inspiration pictures I save show a much bigger transformation. I am trying to separate the part I like, such as softness around the face, from the expensive upkeep behind the photo. I would rather make one modest change first and see how it feels over time. Reading about <a href=https://choosehairstyle.top>my color palette</a> gave me another way to think about the shades I keep choosing. I am unsure how much a broad palette label should control a few subtle highlights. Some photos show cool beige pieces, while others lean golden; both can look convincing under studio lights. My priority is a gentle grow out that looks intentional beside my natural roots. I could bring unfiltered daylight pictures of my current hair and a couple of examples of the amount of change I want. At the salon I could ask how those examples would translate to my hair and my available upkeep time. I am open to a few face framing pieces or a gloss if either option suits the existing color. I plan to ask what the color will look like several weeks later. Has anyone used a palette as a loose guide while keeping a low maintenance result?', 1, '2026-10-02 12:51:33'),
(62, 'Jameszed', 'j.a.ck.r.am.ir.ezn.e.wa.cc@gmail.com', '86837568967', NULL, 'Hi everyone! \r\nI don\'t usually jump into discussions, but I found this topic interesting and wanted to share a few thoughts. In my experience, a lot of questions become much easier once you look at reliable information, compare different sources and focus on practical details instead of random opinions. \r\nThere are many small things that people often overlook, and sometimes a simple explanation or the right tool can save a lot of time. The same logic can be used for online research in general, whether you\'re comparing products, services, or topics such as <a href=https://leetcode.com/discuss/post/8545614/how-to-stay-productive-while-learning-to-rj25/>beste online casino ohne oasis</a>. \r\n \r\nFeel free to ask questions or share your own experience.', 1, '2026-10-07 17:32:08'),
(63, 'НатальяHino', 'tond84@alquilerjetskitf.com', '89226494187', NULL, 'На поездку в Потсдам у меня есть один свободный день, и хочется заранее прикинуть, какую часть его займёт прогулка. Выезжать до рассвета не хочется, а вечером нужно вернуться в город к заранее назначенной встрече. Поэтому ищу не список всех достопримечательностей, а понятную последовательность дороги и прогулки с запасом времени. Пока разбирался с транспортом, сохранил страницу по теме <a href=https://travelgid.top>потсдам сан-суси как добраться</a> — это отправная точка для дальнейших уточнений. С собой планирую взять воду и небольшой перекус, но остановку на обед тоже хотелось бы предусмотреть. Для меня это первая поездка в Потсдам, поэтому расстояния по карте пока трудно соотнести с реальной прогулкой. Остался вопрос к тем, кто уже был: где лучше начать прогулку, чтобы не делать лишних кругов? Не могу решить, начать ли с центральных улиц или сразу направиться к парку, пока ещё есть силы. Посещение интерьеров рассматриваю отдельно, поскольку заранее купленный билет может сделать весь маршрут менее гибким. Если времени всё же мало, посоветуйте, какой участок можно оставить на следующий приезд и спокойно закончить прогулку.', 1, '2026-10-09 07:57:36'),
(64, 'Дмитрийruh', 'tonp35@pokomail.org', '86442466315', NULL, 'Собираю короткую поездку в Вену для нескольких коллег. Днём у каждого свои дела, а на вечер хочется предложить одну общую прогулку. Пока обсуждаем только подход к выбору места, без покупки билетов и бронирования. Одни хотят спокойно поговорить за горячим напитком. Кому-то хочется больше гулять и разглядывать небольшие торговые площадки. При поиске попался запрос <a href=https://wiengid.top>рождественские ярмарки в вене 2025</a> — добавил эту ссылку в наш общий список для обсуждения. Понимаю, что прошлогодние материалы не подтверждают даты и условия следующей поездки. Поэтому хочу отдельно выписать вопросы, которые проверим ближе к выезду. Сначала собираюсь уточнить расписание и правила посещения. Дальше посмотрим, удобно ли добираться от места встречи. Заодно выберем альтернативу на случай сырого вечера. У нас будет общая точка сбора и ограниченное время, поэтому полезнее заранее согласовать ожидания каждого, чем пытаться за один вечер охватить все найденные места. Какие сведения вы обычно перепроверяете у организаторов, даже если описание выглядит подробным? Помогите составить короткий список для такой проверки.', 1, '2026-10-09 12:36:23'),
(65, 'Edwardnam', 'hunkovajarmila15@gmail.com', '89392891578', NULL, 'Read the news and earn $50,000,000 per month full time https://telegra.ph/Read-the-latest-news-and-earn-50000000-in-a-month-Message-ID-32412-10-05', 1, '2026-10-11 14:05:14'),
(66, 'Kiratveer Singh', 'kiratveer@gmail.com', '9811242068', NULL, 'Hi need protein bars', 1, '2026-10-17 12:38:56'),
(67, 'Emmagom', 'tonw5@usmailerbox.org', '84932989648', NULL, 'I need an ambient cue to repeat while a player explores a small room. The seam becomes distracting when I listen through several consecutive cycles. The source ending and my cut could both be contributing to the distraction. I would first compare a longer crossfade with the current short transition. The playback level and the rest of the cue would remain fixed. There is no dramatic change in the room at the repeat point, so the music should not imply one. I would listen to several cycles in context, then inspect the boundary separately, keeping notes about exactly when the interruption becomes apparent. A page about <a href=https://sunomusicfix.top>remove suno artifacts</a> came up during my search for another possible check. I do not have a processed example and cannot say whether it addresses this issue. The priority is an unobtrusive repeat that preserves the mood of the room. Which checks would you make before changing the exported audio itself?', 1, '2026-10-20 22:26:41'),
(68, 'Kiratveer Singh Sabharwal', 'kiratveer@gmail.com', '09811242068', NULL, 'Hio need protein bars', 1, '2026-10-23 10:16:35'),
(69, 'HarryHals', 'tons97@postnexa.info', '85976919955', NULL, 'I have three full days in Madeira and will be staying in Funchal without renting a car. I would like to see more than the city, but I am trying to avoid an itinerary that only works if every connection is perfectly timed. A day trip to a coastal village sounds possible, and another for a manageable walk if the forecast cooperates. The bus schedules look workable on paper, although I cannot tell how much time to allow for transfers, stops, and a relaxed lunch. For a first outline I found <a href=https://madeiratours.top>3 days in madeira without a car</a> and it helped me list possible places rather than commit to a rigid schedule. Would you reserve the final day for Funchal, in case mountain cloud or a missed connection changes the earlier plans? A guided transfer for the walking day is one option, while another option is to keep every outing reachable by public transport. If you have done a similar trip, which day trip felt practical, and what would you skip on a three-day visit? A little spare time between outings would be welcome.', 1, '2026-10-24 10:17:40'),
(70, 'Gracekt', 'tono79@letterio.info', '87275399843', NULL, 'I am preparing a generated backing guide for a bassist who records remotely. The arrangement is clear enough, although the rough texture could distract from the actual musical instructions. My handoff will include a tempo map, the key, chord changes, and the places where bass should enter. Is it useful to provide both the untouched guide and a revised version? One phrase I encountered was <a href=https://repairsuno.top>suno fix</a> in that search, though I have no personal results from the linked resource to report. I want the musician to follow the arrangement without treating accidental noise as a performance instruction. The bassist will work in a different recording application, so I would also welcome advice on export format, a shared starting point, and whether a count-in helps prevent alignment mistakes. What would you put in a short delivery checklist for this kind of collaboration?', 1, '2026-10-25 06:15:43'),
(71, 'Edwardnam', 'geminikarma777@gmail.com', '83224856428', NULL, 'Read the news and earn $50,000,000 per month enthusiastically https://telegra.ph/Read-the-latest-news-and-earn-50000000-in-a-month-Message-ID-509845-10-05', 1, '2026-10-27 03:48:51'),
(72, 'Marcy Dellinger', 'marcy.dellinger@msn.com', '918549884', NULL, 'Hello from bonusbacklinks,\r\n\r\nBoost your seo rankings with trusted seo services! \r\nBonusBacklinks.com - we provide daily backlinks and drive organic clicks to your website every day:\r\n\r\nhttps://BonusBacklinks.com/deals\r\n\r\nTake 85% Sale\r\nTrusted daily seo backlinks\r\nOrganic web traffic\r\nPrices cheap as $1\r\nBonus coupon codes\r\n\r\nSincerely,\r\nMarcy from Bonusbacklinks support', 1, '2026-10-27 12:01:51'),
(73, 'Max Brandt', 'max@travelitout.com', '', NULL, 'Hello,\r\n\r\nWe\'re adding places like Gritfit to Tourist.com, our travel catalogue, and I\'d love to include you. It costs nothing, and we send travellers to your website, not to an agency.\r\n\r\nIf you offer any discount, for example for booking direct, let me know. It makes a big difference in the listing.\r\n\r\nJust reply to this email and I\'ll set it up. You can also add yourself in two minutes at partners.tourist.com.\r\n\r\nMax\r\nTourist.com', 1, '2026-10-30 15:20:09'),
(74, 'Kiratveer Singh Sabharwal', 'kiratveer@gmail.com', '9811242068', NULL, 'Hi I need protein bars ......', 1, '2026-10-31 12:34:13'),
(75, 'OliverHify', 'tonc75@lettera.info', '82852444766', NULL, 'My next sewing project is a jacket I hope to wear regularly. Buying several metres feels like a commitment on my sewing budget. The supplier offers small swatches, although each piece is much smaller than a collar or lapel. Three fabric options remain: green, plum, and a neutral grey. I can imagine wearing any of them with my usual trousers. I have enough time to order samples before the sewing class starts. My main concern is that texture and the amount of visible fabric could change my impression once the jacket is actually assembled. I have read about how to <a href=https://colorpaletteanalysis.top>find my color palette</a> but I still need a practical way to judge these particular fabrics. Can such small samples reveal much about a color near the face? A plain cloth behind the swatch might make comparisons easier. The eventual lining and buttons need consideration as well. How would you turn these samples into a sensible buying decision?', 1, '2026-10-31 15:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(500) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `title`, `subtitle`, `image`, `link`, `sort_order`, `is_active`) VALUES
(1, 'Zero Preservatives', 'All our products are free from any form of preservatives or additives', '', '', 1, 1),
(2, 'Best Quality Ingredients', 'We have used the best quality ingredients sourcing them sustainably.', '', '', 2, 1),
(3, 'Exceptional Quality', 'Our QC processes are very well defined and executed.', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `label` varchar(120) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '/',
  `new_tab` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `url`, `new_tab`, `sort_order`, `is_active`) VALUES
(1, 'Home', '/', 0, 1, 1),
(2, 'About Us', '/about-us', 0, 2, 1),
(3, 'Products', '/products', 0, 3, 1),
(4, 'Contact', '/contact', 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posters`
--

CREATE TABLE `posters` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `posters`
--

INSERT INTO `posters` (`id`, `title`, `image`, `link`, `sort_order`, `is_active`) VALUES
(1, 'Certificate', 'uploads/posters/6adc88bfcb126_1792837823.jpg', '', 1, 1),
(2, 'Certificate', 'uploads/posters/6adc88cb3ba57_1792837835.jpg', '', 2, 1),
(3, 'Certificate', 'uploads/posters/6adc88d66a567_1792837846.jpg', '', 3, 1),
(4, 'Certificate', 'uploads/posters/6adc88deafbf7_1792837854.jpg', '', 4, 1),
(5, '', 'uploads/posters/6adc88f086e65_1792837872.jpg', '', 5, 1),
(6, 'Certificate', 'uploads/posters/6adc88f94ff95_1792837881.jpg', '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(220) NOT NULL,
  `description` text DEFAULT NULL,
  `short_desc` varchar(500) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `badge` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `grams` varchar(50) DEFAULT '',
  `flavour` varchar(120) DEFAULT '',
  `whatsapp_number` varchar(30) DEFAULT '',
  `contact_number` varchar(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `description`, `short_desc`, `price`, `image1`, `image2`, `image3`, `image4`, `badge`, `is_active`, `sort_order`, `created_at`, `grams`, `flavour`, `whatsapp_number`, `contact_number`) VALUES
(2, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Blueberry Muffin', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-blueberry-muffin', '', '', NULL, 'uploads/products/6a2907cebda52_1781073870.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 06:44:30', '60g', 'Blueberry Muffin', '+91 98112 42068', '+91 98112 42068'),
(3, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Butterscotch caramel', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-butterscotch-caramel', '', '', NULL, 'uploads/products/6a290864d2e30_1781074020.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 06:47:00', '60g', 'Butterscotch Caramel', '+91 98112 42068', '+91 98112 42068'),
(4, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Cinnamon Roll', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-cinnamon-roll', '', '', NULL, 'uploads/products/6a2908846c8fa_1781074052.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 06:47:32', '60g', 'Cinnamon Roll', '+91 98112 42068', '+91 98112 42068'),
(5, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Coffee and Dates', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-coffee-and-dates', '', '', NULL, 'uploads/products/6a2908a3c6219_1781074083.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 06:48:03', '60g', 'Coffee and Dates', '', ''),
(6, 3, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Coffee Caramel', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-coffee-caramel', '', '', NULL, 'uploads/products/6a290fe06d341_1781075936.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:18:56', '', '', '', ''),
(7, 5, 'GritFit Vegan Energy Bars 40gm - Choco-Berry', 'gritfit-vegan-energy-bars-40gm-choco-berry', '', '', NULL, 'uploads/products/6a29101f48e43_1781075999.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:19:59', '40g', 'Choco-Berry', '', ''),
(8, 5, 'GritFit Vegan Energy Bars 40gm - Mocha-Hazelnut', 'gritfit-vegan-energy-bars-40gm-mocha-hazelnut', '', '', NULL, 'uploads/products/6a2910a99f02a_1781076137.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:22:17', '60g', 'Mocha-Hazelnut', '+91 98112 42068', '+91 98112 42068'),
(9, 5, 'GritFit Vegan Energy Bars 40gm - Banana Walnut', 'gritfit-vegan-energy-bars-40gm-banana-walnut', '', '', NULL, 'uploads/products/6a2910bc0d0fb_1781076156.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:22:36', '40g', 'Banana Walnut', '+91 98112 42068', '+91 98112 42068'),
(10, 4, 'Nut Bar with premium Nuts, Seeds, ACV and Tulsi(Holy Basil) Extract  40gm Bar with 5gm Protein - Almond Cashew', 'nut-bar-with-premium-nuts-seeds-acv-and-tulsi-holy-basil-extract-40gm-bar-with-5gm-protein-almond-cashew', '', '', NULL, 'uploads/products/6a291114d4d22_1781076244.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:24:04', '', '', '', ''),
(11, 4, 'Nut Bar with premium Nuts, Seeds, ACV and Tulsi(Holy Basil) Extract  40gm Bar with 5gm Protein - Mixed Nuts and seeds', 'nut-bar-with-premium-nuts-seeds-acv-and-tulsi-holy-basil-extract-40gm-bar-with-5gm-protein-mixed-nuts-and-seeds', '', '', NULL, 'uploads/products/6a29112301ca5_1781076259.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:24:19', '', '', '', ''),
(12, 4, 'Nut Bar with premium Nuts, Seeds, ACV and Tulsi(Holy Basil) Extract  40gm Bar with 5gm Protein) - Sunflower and pumpkin seeds', 'nut-bar-with-premium-nuts-seeds-acv-and-tulsi-holy-basil-extract-40gm-bar-with-5gm-protein-sunflower-and-pumpkin-seeds', '', '', NULL, 'uploads/products/6a29112f0a8ec_1781076271.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:24:31', '', '', '', ''),
(13, 3, 'GritFit Vegan Protein Bars 60gm Bar with 21 gm Protein - Vanilla Waffle', 'gritfit-vegan-protein-bars-60gm-bar-with-21-gm-protein-vanilla-waffle', '', '', NULL, 'uploads/products/6a291164b0a9a_1781076324.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:25:24', '60g', 'Vanilla Waffle', '', ''),
(14, 3, 'GritFit Vegan Protein Bars 60gm - Choco-Hazelnut', 'gritfit-vegan-protein-bars-60gm-choco-hazelnut', '', '', NULL, 'uploads/products/6a29124583a80_1781076549.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:29:09', '60g', 'Choco-Hazelnut', '+91 98112 42068', '+91 98112 42068'),
(15, 3, 'GritFit Vegan Protein Bars 60gm Bar with 21 gm Protein - Mango', 'gritfit-vegan-protein-bars-60gm-bar-with-21-gm-protein-mango', '', '', NULL, 'uploads/products/6a29127057dde_1781076592.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:29:52', '60g', 'Mango', '+91 98112 42068', '+91 98112 42068'),
(16, 3, 'GritFit Vegan Protein Bars 60gm Bar with 21 gm Protein - Rose Faluda', 'gritfit-vegan-protein-bars-60gm-bar-with-21-gm-protein-rose-faluda', '', '', NULL, 'uploads/products/6a291288cb130_1781076616.jpeg', '', '', '', 'New Arrival', 1, 0, '2026-06-10 07:30:17', '60g', 'Rose Faluda', '+91 98112 42068', '+91 98112 42068'),
(20, 4, 'Gritfit Nut Bars 40gm - Dry Fruit ( Vanilla )', 'gritfit-nut-bars-40gm-dry-fruit-vanilla', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 10:55:32', '40g', 'Vanilla', '', ''),
(21, 2, 'Gritfit Superfood Energy Bars 40gm - Blueberry Crush', 'gritfit-superfood-energy-bars-40gm-blueberry-crush', '<h2 class=\"a-size-base-plus a-text-bold\">About this item</h2>\r\n<div class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" data-a-expander-collapsed-height=\"300\">\r\n<div class=\"a-expander-content a-expander-partial-collapse-content\" data-expanded=\"false\">\r\n<ul>\r\n<li><span class=\"a-list-item\">Irresistible Blueberry Flavor: Immerse yourself in the rich, fruity goodness of handpicked blueberries and black currant. Our Blueberry Crush Energy Bar is a symphony of sweet and tart flavors that will leave you craving for more.</span></li>\r\n<li><span class=\"a-list-item\">Power-Packed Nutrition: Each bar is a nutrition powerhouse, loaded with essential vitamins, minerals, antioxidants, superfoods and herbs like Moringa, Ashwagandha, Curcumin and Desi Ghee. Fuel your body with the energy it needs for your active lifestyle.</span></li>\r\n<li><span class=\"a-list-item\">Real Ingredients, Real Energy: We believe in the power of nature. That\'s why our Blueberry Crush Energy Bar is made with real, wholesome ingredients like peanuts, Oats, Millets, Almonds and more. No artificial additives</span></li>\r\n<li><span class=\"a-list-item\">Zero Preservatives, Trans Fats or Cholesterol: Embrace a healthier snacking choice with GRITFIT Energy Bar, as it is free from preservatives, trans fats, and cholesterol. Enjoy a guilt-free treat that prioritizes your well-being.</span></li>\r\n</ul>\r\n</div>\r\n</div>', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 11:25:47', '40g', 'Blueberry Crush', '', ''),
(22, 2, 'GRITFIT Superfood 40 grams Energy Bar - Peanut Butter', 'gritfit-superfood-40-grams-energy-bar-peanut-butter', '<h2 class=\"a-size-base-plus a-text-bold\">About this item</h2>\r\n<div class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" data-a-expander-collapsed-height=\"300\">\r\n<div class=\"a-expander-content a-expander-partial-collapse-content a-expander-content-expanded\" data-expanded=\"true\">\r\n<ul>\r\n<li><span class=\"a-list-item\">Irresistible Peanut Butter Flavor: Indulge your taste buds in the rich and creamy goodness of peanut butter. The Grit Fit Energy Bar boasts a mouthwatering flavor that makes each bite a delightful experience.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Natural Ingredients for Lasting Energy: Fuel your body with the goodness of natural ingredients. Each bar is carefully crafted with a blend of nuts, seeds, Oats, Honey and pumpkin seeds, and whole grains to provide sustained energy, making it an ideal snack for your active lifestyle.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">High-Protein Powerhouse: Power up your day with a substantial dose of protein. The Grit Fit Energy Bar is a high-protein powerhouse, promoting muscle recovery and helping you stay energized throughout your workout or busy day.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Nutrient-Rich and Balanced: Achieve a perfect balance of nutrients with this energy bar. Packed with essential vitamins and minerals, superfoods like Ashwagandha, Amla, and Ginger it supports overall well-being and contributes to a healthy, balanced diet.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Convenient On-the-Go Snack: Whether you\'re hitting the gym, going for a hike, or simply need a quick pick-me-up at work, the Grit Fit Energy Bar is your convenient companion. Toss it in your bag and enjoy a wholesome snack whenever and wherever you need it.</span></li>\r\n</ul>\r\n</div>\r\n</div>', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 11:27:11', '40g', 'Peanut Butter', '', ''),
(23, 2, 'GRITFIT Superfood 40 grams Energy Bar - Choco Almond', 'gritfit-superfood-40-grams-energy-bar-choco-almond', '<h2 class=\"a-size-base-plus a-text-bold\">About this item</h2>\r\n<div class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" data-a-expander-collapsed-height=\"300\">\r\n<div class=\"a-expander-content a-expander-partial-collapse-content a-expander-content-expanded\" data-expanded=\"true\">\r\n<ul>\r\n<li><span class=\"a-list-item\">Perfect Blend of Choco and Almond: Indulge in the rich and decadent fusion of chocolate and almond flavors. Each bite is a harmonious balance of sweetness from the chocolate and the nutty goodness of almonds, creating a taste sensation that will leave you craving for more.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Nutrient-Rich Ingredients: Grit Fit Energy Bar is not just a treat for your taste buds; it\'s a nutritional powerhouse. Packed with real ingredients like Oats, Millets, Almonds, Dates, Peanut butter, pumpkin seeds and powered with superfoods and herbs like Licorice, Aloe Vera, Tulsi, Desi Ghee and Essential nutrients, including protein, fiber, and healthy fats, this energy bar is designed to give you the sustained energy you need for your daily adventures.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Fuel for Your Active Lifestyle: Whether you\'re hitting the gym, going for a run, or simply need a quick pick-me-up during a busy day, Grit Fit Energy Bar is your go-to solution. It provides a convenient and portable source of energy that fits seamlessly into your on-the-go lifestyle.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Satisfy Your Sweet Cravings Healthily: Don\'t compromise on taste when choosing a healthy snack. Grit Fit Energy Bar allows you to enjoy a sweet treat without sacrificing your health goals. It\'s the guilt-free pleasure you\'ve been searching for.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">No Artificial Additives: We believe in keeping it real. That\'s why our Choco Almond Energy Bar is free from artificial flavors, colors, and preservatives. What you get is pure, unadulterated goodness that not only tastes great but is also good for your body.</span></li>\r\n</ul>\r\n</div>\r\n</div>', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 11:28:41', '40g', 'Choco Almond', '', ''),
(24, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Berry Blast', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-berry-blast', '<h2 class=\"a-size-base-plus a-text-bold\">About this item</h2>\r\n<div class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" data-a-expander-collapsed-height=\"300\">\r\n<div class=\"a-expander-content a-expander-partial-collapse-content a-expander-content-expanded\" data-expanded=\"true\">\r\n<ul>\r\n<li><span class=\"a-list-item\">Irresistible Berry Explosion: Immerse yourself in the vibrant and tangy symphony of berries that dance on your palate with every bite. Gritfit Protein Bar Berry Blast is a delightful fusion of sweet and tart flavors, making it a treat for your taste buds.</span></li>\r\n<li><span class=\"a-list-item\">High-Quality Protein Boost: Elevate your protein intake with this power-packed bar. Each 60g serving delivers a substantial dose of high-quality 21g protein(Blend of Premium Whey Protein concentrate and Isolate) and 15 vitamins and minerals, essential for muscle recovery, strength, and overall well-being. It\'s the perfect snack to support your active lifestyle.</span></li>\r\n<li><span class=\"a-list-item\">Balanced Nutrition Profile: Gritfit Protein Bar is not just about protein; it\'s about a well-rounded nutritional profile. Packed with vitamins, minerals, and fiber, this bar ensures you get the complete nutrition your body craves, all in a convenient and portable form.</span></li>\r\n<li><span class=\"a-list-item\">Energy for Your Daily Adventures: Whether you\'re hitting the gym, going for a hike, or powering through a busy day, the Berry Blast Protein Bar provides a quick and sustained energy boost. Say goodbye to midday slumps and hello to vitality with this on-the-go snack.</span></li>\r\n<li><span class=\"a-list-item\">No Compromise on Taste or Quality: Gritfit takes pride in delivering a product that doesn\'t compromise on taste or quality. Free from artificial additives and preservatives, this protein bar is a guilt-free pleasure that aligns with your health and fitness goals.</span></li>\r\n</ul>\r\n</div>\r\n</div>', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 11:59:46', '60g', 'Berry Blast', '', ''),
(25, 1, 'GritFit Vitamin and Mineral Protein bars 60gm with 21 gm protein - Choco Crunch', 'gritfit-vitamin-and-mineral-protein-bars-60gm-with-21-gm-protein-choco-crunch', '<h2 class=\"a-size-base-plus a-text-bold\">About this item</h2>\r\n<div class=\"a-expander-collapsed-height a-row a-expander-container a-expander-partial-collapse-container\" data-a-expander-collapsed-height=\"300\">\r\n<div class=\"a-expander-content a-expander-partial-collapse-content a-expander-content-expanded\" data-expanded=\"true\">\r\n<ul>\r\n<li><span class=\"a-list-item\">Irresistible Choco Crunch Flavor: Indulge your taste buds in the rich and creamy goodness of Choco Crunch. The Grit Fit Energy Bar boasts a mouthwatering flavor that makes each bite a delightful experience.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Natural Ingredients for Lasting Energy: Fuel your body with the goodness of natural ingredients. Each bar is carefully crafted with a blend of nuts, seeds, and whole grains to provide sustained energy, making it an ideal snack for your active lifestyle.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">High-Quality Protein Boost: Elevate your protein intake with this power-packed bar. Each 60g serving delivers a substantial dose of high-quality 21g protein (Blend of Premium Whey Protein concentrate and Isolate) and 15 vitamins and minerals, essential for muscle recovery, strength, and overall well-being. It\'s the perfect snack to support your active lifestyle.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Nutrient-Rich and Balanced: Achieve a perfect balance of nutrients with this energy bar. Packed with essential vitamins and minerals, it supports overall well-being and contributes to a healthy, balanced diet.</span></li>\r\n</ul>\r\n<ul>\r\n<li><span class=\"a-list-item\">Convenient On-the-Go Snack: Whether you\'re hitting the gym, going for a hike, or simply need a quick pick-me-up at work, the Grit Fit Energy Bar is your convenient companion. Toss it in your bag and enjoy a wholesome snack whenever and wherever you need it.</span></li>\r\n</ul>\r\n</div>\r\n</div>', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2026-10-21 12:00:46', '60g', 'Choco Crunch', '', ''),
(26, 6, 'GritFit Millet Energy Bars 40gm - Choco Millet', 'gritfit-millet-energy-bars-40gm-choco-millet', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:06:56', '40g', 'Choco Millet', '+91 98112 42068', '+91 98112 42068'),
(27, 6, 'GritFit Millet Energy Bars 40gm - Fruit Nut', 'gritfit-millet-energy-bars-40gm-fruit-nut', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:08:18', '40g', 'Fruit Nut', '+91 98112 42068', '+91 98112 42068'),
(28, 7, 'GritFit Functional Bars 60gm - Red Berrys', 'gritfit-functional-bars-60gm-red-berrys', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:20:31', '60g', 'Red Berrys', '', ''),
(29, 7, 'GritFit Functional Bars 60gm - Coffee Caramel', 'gritfit-functional-bars-60gm-coffee-caramel', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:22:01', '60g', 'Coffee Caramel', '', ''),
(30, 7, 'GritFit Functional Bars 60gm - Salted Caramel', 'gritfit-functional-bars-60gm-salted-caramel', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:23:10', '60g', 'Salted Caramel', '+91 98112 42068', '+91 98112 42068'),
(31, 7, 'GritFit Functional Bars 60gm - Cookies & Cream', 'gritfit-functional-bars-60gm-cookies-cream', '', '', NULL, NULL, NULL, NULL, NULL, 'New Arrival', 1, 0, '2026-10-27 10:25:28', '60g', 'Cookies & Cream', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `is_primary`) VALUES
(1, 16, 'uploads/products/6a291288cb130_1781076616.jpeg', 1, 0),
(2, 15, 'uploads/products/6a29127057dde_1781076592.jpeg', 1, 0),
(3, 14, 'uploads/products/6a29124583a80_1781076549.jpeg', 1, 0),
(4, 9, 'uploads/products/6a2910bc0d0fb_1781076156.jpeg', 1, 1),
(5, 8, 'uploads/products/6a2910a99f02a_1781076137.jpeg', 1, 1),
(6, 20, 'uploads/products/6ad89a4022beb_1792580160.jpg', 1, 1),
(7, 21, 'uploads/products/6ad8a1439dc10_1792581955.jpg', 1, 1),
(8, 22, 'uploads/products/6ad8a19cabab3_1792582044.jpg', 1, 1),
(9, 23, 'uploads/products/6ad8a1f36fdab_1792582131.jpg', 1, 1),
(10, 24, 'uploads/products/6ad8a941ac108_1792584001.jpg', 1, 0),
(11, 25, 'uploads/products/6ad8a975c93bc_1792584053.jpg', 1, 0),
(12, 4, 'uploads/products/6a2908846c8fa_1781074052.jpeg', 1, 0),
(13, 3, 'uploads/products/6a290864d2e30_1781074020.jpeg', 1, 0),
(14, 2, 'uploads/products/6a2907cebda52_1781073870.jpeg', 1, 0),
(15, 16, 'uploads/products/6ad8aa58422ba_1792584280.jpeg', 2, 1),
(16, 15, 'uploads/products/6ad8aa6f73bcc_1792584303.jpeg', 2, 1),
(17, 14, 'uploads/products/6ad8aa8dba632_1792584333.jpeg', 2, 1),
(18, 24, 'uploads/products/6ad8abe8db4b8_1792584680.jpg', 2, 1),
(19, 4, 'uploads/products/6ad8ac1062807_1792584720.jpeg', 2, 1),
(20, 3, 'uploads/products/6ad8ac2c8c983_1792584748.jpeg', 2, 1),
(21, 2, 'uploads/products/6ad8ac555f713_1792584789.jpeg', 2, 1),
(22, 25, 'uploads/products/6ad8aec86248f_1792585416.jpg', 2, 1),
(23, 12, 'uploads/products/6a29112f0a8ec_1781076271.jpeg', 1, 1),
(24, 10, 'uploads/products/6a291114d4d22_1781076244.jpeg', 1, 1),
(25, 11, 'uploads/products/6a29112301ca5_1781076259.jpeg', 1, 1),
(26, 13, 'uploads/products/6a291164b0a9a_1781076324.jpeg', 1, 1),
(27, 7, 'uploads/products/6a29101f48e43_1781075999.jpeg', 1, 1),
(28, 6, 'uploads/products/6a290fe06d341_1781075936.jpeg', 1, 1),
(29, 5, 'uploads/products/6a2908a3c6219_1781074083.jpeg', 1, 1),
(30, 26, 'uploads/products/6ae077d914fb7_1793095641.jpeg', 1, 1),
(31, 27, 'uploads/products/6ae0781a66799_1793095706.jpeg', 1, 1),
(32, 28, 'uploads/products/6ae07aff56743_1793096447.jpeg', 1, 1),
(33, 29, 'uploads/products/6ae07b5a36f65_1793096538.jpeg', 1, 1),
(34, 30, 'uploads/products/6ae07bb35a5af_1793096627.jpeg', 1, 1),
(35, 31, 'uploads/products/6ae07c376f3f4_1793096759.jpeg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pack_size` varchar(80) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'In Stock',
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT 5,
  `review_text` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `answer` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `location`, `rating`, `review_text`, `avatar`, `is_active`, `created_at`, `answer`, `sort_order`) VALUES
(1, 'Namita Singh', 'Delhi, India', 5, 'Grit Fit superfood bars are my go-to snack for workouts. Highly recommend!', '', 1, '2026-05-19 07:18:41', '', 0),
(2, 'Tarun Kumar', 'Dehradun, India', 5, 'These energy bars are delicious and keep me energized throughout the day!', '', 1, '2026-05-19 07:18:41', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES
('about_banner_alt', 'Products'),
('about_banner_image', 'uploads/cms/6ae07034b21a7_1793093684.jpg'),
('about_block1_text', 'GritFit is a leading Brand of Premium Health foods, Nutritional and fortified snack products. With world-class production facilities, stringent quality standards, and a commitment to consistent supply GritFit has it all. '),
('about_block1_title', 'GritFit – Your Trusted Partner for Global Nutrition Exports'),
('about_block2_sub1_text', 'FDA-approved, GMP-certified, and compliant with ISO, HACCP, Kosher, and Halal standards.'),
('about_block2_sub1_title', 'Global Compliance & Certifications'),
('about_block2_sub2_text', 'Tailored formulations and flexible production capabilities to meet unique global market requirements. \r\nWe take utmost care in ensuring proper standards are followed at ever step of production of our finest quality products. '),
('about_block2_sub2_title', 'Custom Manufacturing Solutions'),
('about_block2_text', 'Our state-of-the-art facilities are designed to meet high-volume demands while maintaining exceptional quality. Our continuous efforts and investment in Research and Development of innovative Nutrition and Health products yet maintaining the right flavors stand us apart. We constantly strive to serve our Loyal patrons with the best of flavors and nutrition keeping in check the Dietary allowances. '),
('about_block2_title', 'Scalable Manufacturing & Quality Assurance'),
('about_block3_sub1_text', 'Custom formulations aligned with international market preferences.'),
('about_block3_sub1_title', 'Tailored Product Development'),
('about_block3_sub2_text', 'Open to direct tie-ups with supermarket and convenience store chains, aviation sector, HoReCa, and institutional sales.'),
('about_block3_sub2_title', 'Institutional & Retail Partnerships'),
('about_block3_text', 'GritFit’s parent group has vast experience in Pharmaceutical, Nutraceutical, and Nutrition products exports, with an international  presence across various countries.'),
('about_block3_title', 'Global Presence'),
('about_hero_image', 'uploads/cms/6ae87480c3b8e_1793619072.jpeg'),
('about_hero_title', '.'),
('about_intro', 'At Grit Fit, our mission is to revolutionize healthy living by providing high-quality, preservative-free superfood energy bars that fuel an active lifestyle. Committed to excellence, we ensure every product is lab-tested and made with the finest natural ingredients. Expanding globally, we aim to bring our nutritious offerings to international markets through strategic exports.'),
('about_vision_text', 'At GritFit, our mission is to promote a healthier lifestyle by delivering premium, preservative-free superfood energy bars packed with natural and apt nutrition. We are committed to quality, innovation, and sustainability, ensuring that our products meet global standards.'),
('about_vision_title', 'Our Vision'),
('about_who_text', 'With a background in Pharmaceuticals dating back to the 90\'s, We are people who have witnessed the imbalance in the life of working professionals as they turned to poor eating habits and stress eating. Therefore, we came to the conclusion to change it by taking the right action. At Gritfit, we focus on developing products that can solve a number of health issues while being incredibly tasty.'),
('about_who_title', 'Who Are We?'),
('abouthome_btn_link', '/about-us'),
('abouthome_btn_text', 'Learn More'),
('abouthome_enabled', '1'),
('abouthome_image', 'uploads/cms/6ada031bb5531_1792672539.jpg'),
('abouthome_text', 'At GritFit , we create Premium Nutrition bars that combine natural ingredients with health benefits for a modern lifestyle.'),
('abouthome_title', 'About GritFit '),
('adbar_enabled', '1'),
('adbar_link', ''),
('adbar_scroll_sec', '5'),
('adbar_text', 'Fueling the World with India\'s Finest Energy Bars.'),
('banner_size', '380'),
('cleanenergy_enabled', '1'),
('cleanenergy_title', 'Clean Energy Great Taste'),
('contact_address', 'B-161, 3rd Floor, Lok Vihar, Pitampura, New Delhi, 110034'),
('contact_email', 'info@gritfitnutri.com'),
('contact_hours', 'Monday - Saturday: 9:00 AM - 6:00 PM\r\nSunday: Closed'),
('contact_map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3499.6775!2d77.1456!3d28.7004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d03e5f0000001%3A0x0!2sLok%20Vihar%2C%20Pitampura%2C%20New%20Delhi%2C%20110034!5e0!3m2!1sen!2sin!4v1700000000000'),
('contact_phone', '+91 9811242068'),
('contact_whatsapp', '+91-9811242068'),
('footer_copy', '© 2026. All rights reserved.'),
('footer_enabled', '1'),
('footer_newsletter_enabled', '1'),
('hero_btn1_link', '/about-us'),
('hero_btn1_text', 'About Us'),
('hero_btn2_link', '/products'),
('hero_btn2_text', 'Products'),
('hero_enabled', '0'),
('hero_image', ''),
('hero_subtitle', 'Fuel Your Day with Natural Energy and Health'),
('hero_title', 'Superfood Bars'),
('hero_type', 'video'),
('hero_video', 'https://videos.pexels.com/video-files/8844271/8844271-uhd_4096_2160_24fps.mp4'),
('home_order', 'slider,hero,products,midbanner,cleanenergy,abouthome,usps,posters,other'),
('homeproducts_enabled', '1'),
('homeproducts_overline', 'Discover Greatness'),
('homeproducts_subtitle', 'Fuel Your Day, Naturally'),
('homeproducts_title', 'Explore our products'),
('icon_size', '200'),
('logo_size', '150'),
('midbanner_enabled', '1'),
('poster_size', '200'),
('posters_enabled', '1'),
('posters_title', 'Our Certificates'),
('reviews_enabled', '1'),
('reviews_subtitle', 'See what our customers say about GritFit Health bars.'),
('reviews_title', 'Customer Reviews'),
('site_logo', 'uploads/cms/6ad34be5d03f3_1792232421.jpg'),
('site_name', 'Grit Fit '),
('site_tagline', 'Superfoods for Super You.'),
('slider_enabled', '1'),
('slider_size', '900'),
('slider_speed_ms', '4000'),
('social_facebook', 'https://www.facebook.com/gritfitnutri'),
('social_instagram', 'https://www.instagram.com/gritfitnutri'),
('social_twitter', 'https://x.com/gritfitnutri'),
('theme_about_detail_p_color', '#4a4a4a'),
('theme_about_detail_p_size', '15'),
('theme_about_grid_p_color', '#4a4a4a'),
('theme_about_grid_p_size', '15'),
('theme_about_h3_color', '#0d141a'),
('theme_about_h3_size', '28'),
('theme_about_h5_color', '#0d141a'),
('theme_about_h5_size', '20'),
('theme_about_h6_color', 'rgb(61,99,204)'),
('theme_about_h6_size', '16'),
('theme_about_hero_h1_color', '#ffffff'),
('theme_about_hero_h1_size', '48'),
('theme_about_intro_color', '#4a4a4a'),
('theme_about_intro_size', '16'),
('theme_body_font_size', '16'),
('theme_btn_font_size', '17'),
('theme_color_body_bg', '#ffffff'),
('theme_color_btn_text', '#ffffff'),
('theme_color_heading', '#0d141a'),
('theme_color_primary', 'rgb(61,99,204)'),
('theme_color_primary_dark', '#0d141a'),
('theme_color_primary_light', 'rgb(14,132,235)'),
('theme_color_text', '#0d141a'),
('theme_color_text_light', '#4a4a4a'),
('theme_font_body', 'poppins'),
('theme_font_heading', 'playfair'),
('theme_home_abouthome_h3_color', '#0d141a'),
('theme_home_abouthome_h3_size', '32'),
('theme_home_abouthome_p_size', '15'),
('theme_home_clean_bg', '#0d141a'),
('theme_home_clean_h1_color', '#ffffff'),
('theme_home_clean_h1_size', '42'),
('theme_home_feature_h4_color', '#ffffff'),
('theme_home_feature_h4_size', '20'),
('theme_home_feature_p_size', '14'),
('theme_home_hero_h1_color', '#ffffff'),
('theme_home_hero_h1_size', '56'),
('theme_home_hero_p_color', '#ffffff'),
('theme_home_hero_p_size', '18'),
('theme_home_overline_color', 'rgb(61,99,204)'),
('theme_home_overline_size', '13'),
('theme_home_reviews_h3_color', '#0d141a'),
('theme_home_reviews_h3_size', '30'),
('theme_home_reviews_p_size', '15'),
('theme_home_section_h2_color', '#0d141a'),
('theme_home_section_h2_size', '38'),
('theme_home_section_p_color', '#4a4a4a'),
('theme_home_section_p_size', '16'),
('theme_home_slider_h2_color', '#ffffff'),
('theme_home_slider_h2_size', '52'),
('theme_home_slider_p_color', '#ffffff'),
('theme_home_slider_p_size', '18'),
('theme_home_usp_h4_color', '#0d141a'),
('theme_home_usp_h4_size', '16'),
('theme_home_usp_p_size', '14'),
('theme_nav_link_size', '16'),
('usp_size', '100'),
('usps_enabled', '1'),
('usps_subtitle', ''),
('usps_title', 'Why Choose Us');

-- --------------------------------------------------------

--
-- Table structure for table `usps`
--

CREATE TABLE `usps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `usps`
--

INSERT INTO `usps` (`id`, `title`, `description`, `icon`, `sort_order`, `is_active`) VALUES
(1, '100% Natural', 'No preservatives, no artificial additives.', 'uploads/usps/6adc6907deaab_1792829703.jpg', 2, 1),
(2, 'Lab Tested', 'Every batch is quality-checked and lab tested.', 'uploads/usps/6adc6709f400d_1792829193.jpg', 1, 1),
(3, 'Made in India', 'Proudly manufactured in world-class facilities in India', 'uploads/usps/6adc6713cc126_1792829203.jpg', 3, 1),
(4, 'Fast Delivery', 'Quick and reliable shipping across the Globe', 'uploads/usps/6adc671eaa84b_1792829214.jpg', 4, 1),
(9, 'Finest Quality Ingredients', 'Our Bars are made from the choicest of Ingredients', 'uploads/usps/6ae4e0e425793_1793384676.jpg', 5, 1),
(10, 'Ancient Wisdom of Ayurveda', 'Ancient Ayurveda meets modern Nutrition', 'uploads/usps/6ae4e209825b6_1793384969.jpg', 6, 1),
(11, 'State of the Art Production', 'Our Manufacturing facility conforms to the highest Quality standards', 'uploads/usps/6ae4e315d43b7_1793385237.jpg', 7, 1),
(12, 'Sustainable and Environment Friendly Production', 'Our Manufacturing processes make sure no Environmental imbalances occur', 'uploads/usps/6ae4e4106a1de_1793385488.jpg', 8, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pf_product` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pi_product` (`product_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pv_product` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `usps`
--
ALTER TABLE `usps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posters`
--
ALTER TABLE `posters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usps`
--
ALTER TABLE `usps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
