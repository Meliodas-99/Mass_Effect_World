-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 10:28 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mass_effect_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rarity` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `description`, `location`, `rarity`) VALUES
(0, 'magnesium', 'Magnesium is a light and sturdy metal. Magnesium alloys are integral to many complex Initiative structures.', 'H-047c, Havarl', 'common'),
(1, 'iron', '	A common metallic element found in many planetary cores. Broadly useful for multiple engineering purposes.', 'Elaaden, Eos, H-047c', 'common'),
(2, 'graphite', '	This crystalline carbon mineral is an electrical conductor and a useful part of many manufacturing processes.', 'Elaaden, Eos', 'common'),
(3, 'copper', 'Copper is a noble metal with high conductivity that makes it useful for a variety of purposes.', 'Kadara, Voeld', 'common'),
(4, 'beryllium', 'An ideal metal for lightweight construction in a variety of applications. Useful as an alloying element.', 'Kadara, Voeld', 'common'),
(5, 'aluminum', 'A valuable non-magnetic light metal, useful in construction and manufacturing despite its relatively low melting point.', 'Eos, Kadara', 'common'),
(6, 'cadmium', '	A metal often used in constructing electronic components and in complex manufacturing.', 'Eos, Kadara, Voeld', 'uncommon'),
(7, 'fluorite', 'A mineral used for creating precision scientific lenses, among other applications.', 'Elaaden, Eos, Voeld', 'uncommon'),
(8, 'iridium', 'A hard, ultra-dense metallic element that is highly resistant to heat and corrosion.', 'Kadara', 'uncommon'),
(9, 'lithium', 'A useful light metal used in multiple engineering applications, including vehicle batteries, radiation shields, and high-quality steel production.', 'Kadara, Voeld', 'uncommon');

-- --------------------------------------------------------

--
-- Table structure for table `races`
--

CREATE TABLE IF NOT EXISTS `races` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `lifetime` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `government` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `races`
--

INSERT INTO `races` (`id`, `name`, `description`, `location`, `type`, `gender`, `lifetime`, `status`, `government`) VALUES
(0, 'turian', 'A race of four-eyed bipeds native to the world of Khar''shan, the batarians are a disreputable species that chose to isolate itself from the rest of the galaxy. The Terminus Systems are infested with batarian pirate gangs and slaving rings, fueling the stereotype of the batarian thug. It should be noted that these criminals do not represent average citizens, who are forbidden to leave batarian space by their ubiquitous and paranoid government.\n\nDespite several disagreements with the Citadel and simmering hostility toward humans, most batarians prefer profitable pursuits such as drug running and slave grabs to out-and-out warfare. They have a reputation for being shrewd businessmen and merchants, though in more lawless regions of the galaxy like Omega, negotiations with a batarian are likely to be conducted at gunpoint.\nBatarians are an anthropoidal race like humans and asari. Their faces are covered with short, fine hairs that grow longer and thicker around the mouth.\n', 'Palaven', 'Humanoid sentient', 'Bigendered', '~150 years', 'Developed, Citadel Council', 'Turian Hierarchy'),
(1, 'human', 'Humans, from the planet Earth, are the newest sentient species of notable size to enter the galactic stage and are the most rapidly expanding and developing. They independently discovered a Prothean data cache on Mars in 2148, and the mass relay networks shortly thereafter.\nHumans have a fairly robust physiology. Their internal makeup and reproductive processes are typical of most bipedal mammals, and their size and proportions give the appearance of being strong, fast and agile. In comparison to the Council races, humans are roughly physically on par with turians (as a human in or around peak physical condition can overwhelm a similarly fit turian, making them near equals in a hand-to-hand combat situation), and less agile than asari (whom they closely resemble). Humans would appear on average to be stronger than salarians but not as fast, due to the extremely elevated metabolisms of the latter. Like most organic races, humans are also capable of producing biotic individuals.', 'Earth', 'Humanoid sentient', 'Bigendered', '<150 years', 'Developed, Citadel Council', 'Systems Alliance'),
(2, 'quarian', 'The quarians are a nomadic species of humanoid aliens known for their skills with technology and synthetic intelligence. Since their homeworld Rannoch was conquered, the quarians live aboard the Migrant Fleet, a huge collection of starships that travel as a single fleet.\n\nApproximately three hundred years before the events of 2183, the quarians created the geth, a species of rudimentary artificial intelligences, to serve as an efficient source of manual labor. However, when the geth gradually became sentient, the quarians became terrified of possible consequences and tried to destroy their creations. The geth won the resulting war and forced their creators into exile. Now the quarians wander the galaxy in a flotilla of salvaged ships, secondhand vessels, and recycled technology.\nQuarians are generally shorter and of slighter build than humans. Quarians have an endoskeleton, lips, teeth, and two eyes with eyelids and tear ducts.', 'Rannoch', 'Humanoid sentient', 'Bigendered', '', 'Nomads', 'Admiralty Board and Conclave'),
(3, 'asari', 'The asari, native to the planet Thessia, are often considered the most influential and respected sentient species in the galaxy, and are known for their elegance, diplomacy, and biotic aptitude. This is partly due to the fact that the asari were among the earliest races to achieve interstellar flight after the Protheans, and the first to discover and settle the Citadel.\n\nA mono-gender race, the asari are distinctly feminine in appearance and possess maternal instincts. Their unique physiology, expressed in a millennium-long lifespan and the ability to reproduce with a partner of any gender or species, gives them a conservative yet convivial attitude toward other races. Favoring compromise and cooperation over conflict, the asari were instrumental in proposing and founding the Citadel Council and have been at the heart of galactic society ever since.', 'Thessia', 'Humanoid sentient', 'Monogendered', '~1000 years', 'Developed, Citadel Council', 'Council of Matriarchs'),
(4, 'batarian', 'Known for their militaristic and disciplined culture, the turians were the third race to join the Citadel Council. They gained their Council seat after defeating the hostile krogan for the Council during the Krogan Rebellions. The turians deployed a salarian-created biological weapon called the genophage, which virtually sterilised the krogan and sent them into a decline. The turians then filled the peacekeeping niche left by the once-cooperative krogan, and eventually gained a Council seat in recognition of their efforts.\n\nOriginally from the planet Palaven, turians are best known for their military role, particularly their contributions of soldiers and starships to the Citadel Fleet. They are respected for their public service ethic—it was the turians who first proposed creating C-Sec—but are sometimes seen as imperialist or rigid by other races. There is some animosity between turians and humans, largely due to the turian role in the First Contact War.', 'Khar''Shan', 'Humanoid sentient', 'Bigendered', '', 'Isolated', 'Batarian Hegemony'),
(5, 'salarian', 'The second species to join the Citadel, the salarians are warm-blooded amphibians native to the planet Sur''Kesh. Salarians possess a hyperactive metabolism; they think fast, talk fast, and move fast. To salarians, other species seem sluggish and dull-witted, especially the elcor. Unfortunately, their metabolic speed leaves them with a relatively short lifespan; salarians over the age of 40 are a rarity.\n\nSalarians are known for their observational capability and non-linear thinking. This manifests as an aptitude for research and espionage. They are constantly experimenting and inventing, and it is generally accepted that they always know more than they are letting on.\nThe salarians are a bipedal race of amphibians, with tall, elongated bodies well-suited for their high metabolism, and skeletons composed of more cartilage than those of other races such as humans. Salarian heads are long and thin, and have a pair of horns protruding from the top of their skulls.', 'Sur''Kesh', 'Humanoid sentient', 'Bigendered', '~40 years', 'Developed, Citadel Council', 'Salarian Union'),
(6, 'leviathan', 'The Leviathans are an ancient aquatic race that dominated the galaxy in the time before the Reapers. Proud and aloof, they regard themselves as the galaxy''s first and only apex race, and think of other races as mere tools meant to serve them. With the advent of the Reapers, the Leviathans were forced into hiding to preserve themselves, and were content to observe the Reapers'' harvests while surreptitiously erasing any evidence of their existence over the course of hundreds of millions of years.\nLike the Reapers that were designed after them, the Leviathans are massive in size and possess a resemblance to Earth cuttlefish or squid. Two sets of three eyes are embedded symmetrically on the lower ventral surface of the body. Several tentacle-like appendages extend below the body and from the sides. The Leviathans'' exterior is covered in bony, heavily ridged plates.', '', 'Nonhumanoid sentient', '', '', 'On the verge of extincition', ''),
(7, 'drell', 'The drell are a reptile-like race that were rescued from their dying homeworld by the hanar following first contact between the two. Since then, the drell have remained loyal to the hanar for their camaraderie and have fit comfortably into galactic civilization.\nDrell are omnivorous reptile-like humanoids with an average lifespan of 85 galactic standard years. Drell appearance is very similar to asari and humans, but their muscle tissue is slightly denser, giving them a wiry strength. They appear to have five fingers on each hand, albeit the ring and middle fingers are fused. Their skin is apparently infused with a venom mild enough to be served in drinks, and may cause mild hallucinations on "oral contact". They also have two sets of eyelids, akin to the nictitating membrane possessed by certain animals such as reptiles. ', 'Rakhana', 'Humanoid sentient', 'Bigendered', '~85 years', 'Developed', ''),
(8, 'collectors', 'The Collectors are an enigmatic race that live beyond the Omega 4 Relay, a mass relay within the same system as Omega, in the Terminus Systems. They are rarely seen in the Terminus itself, let alone Citadel space, and are generally regarded as a myth by Citadel citizens. Definite sightings of Collectors have been made on Omega every few centuries.\n\nThey are most well-known for their odd trade requests for which they offer new technologies, often of a startling level of advancement. Their requests usually involve the trade of living beings in odd numbers and varieties, such as two dozen left-handed salarians, sixteen sets of batarian twins, a krogan born of parents from feuding clans, or two dozen "pure" quarians who have never left the Migrant Fleet due to illness, importance to the fleet, or disability. One of their current interests is in healthy human biotics. No one knows what happens to the individuals concerned after the exchange is completed.', 'Unknown', 'Humanoid sentient', 'Genderless', 'No information', 'Nearly exterminated', 'Collector Generals'),
(9, 'hanar', 'The hanar are a species resembling Earth''s jellyfish and are one of the few non-bipedal Citadel races. Hanar are known for their intense politeness when speaking, and their strong religious beliefs regarding the Protheans, whom they refer to as "the Enkindlers".\nThe hanar "stand" slightly taller than a human, although most of their height is in their long tentacles. The invertebrate, water-native hanar cannot support their own weight in normal gravity. When interacting with mainstream galactic society, they rely on contra-gravitic levitation packs that use mass effect fields. Their limbs can grip tightly, but are not strong enough to lift more than a few hundred grams each. Hanar also possess the ability to secrete natural toxins.\nThe hanar homeworld, Kahje, has 90% ocean cover and orbits an energetic white star, resulting in a permanent blanket of clouds.', 'Kahje', 'Nonhumanoid sentient', 'Genderless', '', 'Developed', 'Illuminated Primacy');

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category` varchar(255) NOT NULL,
  `rarity` varchar(255) NOT NULL,
  `techtype` varchar(255) NOT NULL,
  `modslots` int(11) NOT NULL,
  `damage` int(11) NOT NULL,
  `rof` int(11) NOT NULL,
  `mcs` int(11) NOT NULL,
  `maxammo` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `name`, `description`, `category`, `rarity`, `techtype`, `modslots`, `damage`, `rof`, `mcs`, `maxammo`, `accuracy`, `weight`) VALUES
(0, 'scattershot', 'The Scattershot fires particle blasts which can focus upon a target at range. This focusing effect is a result of advanced Initiative targeting systems and invisible "tracing" of paths for the Remnant-derived energy beams. The Scattershot does not require reloading, but will overheat from continuous use. The Scattershot is a unique oddball among its contemporaries. Its damage output is average at best, but its pellets not only ricochet off of hard surfaces, they actively seek out targets in the rough vicinity of its crosshairs. It is therefore virtually impossible to miss with the Scattershot as long as the target is in range and the player was aiming in its general direction when the trigger was pulled. However, this comes at the cost of extremely short range even for a shotgun. Being a Remnant-derived weapon, the Scattershot is subject to all the advantages and drawbacks of this weapon family.', 'shotgun', 'ultra rare', 'remnant', 2, 135, 150, 8, 0, 60, 30),
(1, 'M-3_predator', 'A reliable semi-automatic pistol. Originally manufactured by Elanus Risk Control, the rapid-fire Predator is a deadly and inexpensive weapon. Although Milky Way militaries generally avoided using the Predator, the Andromeda Initiative obtained and adjusted several hundred of them. The rapid-fire Predator also has a rapid reloading rate. According to post-launch balance updates, the Predator also benefits from the rate of fire adjustment bestowed to the Mattock. However, its rate of fire has been reduced. It also saw multiple adjustments to damage. The multiplayer base Predator also increased the force impacted by its bullets. The multiplayer S variant gained improvements to damage, rate of fire, clip size, reload size, and total ammo as of the very last update. The Predator is at best a sidearm, as skill-focused classes can take out enemies more with their powers than with the gun. It has some use as additional (but negligible) DPS while waiting for skills to cool down.', 'pistol', 'common', 'milky way', 2, 34, 500, 15, 105, 52, 5),
(2, 'dhan', 'The Dhan is a kett semi-automatic weapon which unleashes a single plasma-surrounded projectile that causes devastating damage. The Dhan''s large and dense projectiles can knock down opponents and generate magnetic fields sufficient to sustain plasma spheres. Dhan appears to translate to "peacebringer". The Dhan''s plasma slug has very short range beyond which it simply disappears, quite similar to how the Remnant Scattershot shotgun operates, albeit without the homing projectiles. It should only be fired at, or close to, point-blank range, which might be necessary anyway to minimize the impact of its slow projectile speed. The Dhan is the only weapon that can use all augmentations available for gun type weapons. This shotgun boasts immense stopping power, but its single projectile moves so slowly that hitting moving targets with any degree of reliability requires considerable practice. It should therefore be used primarily against large targets like Fiends, Hydras or Destroyers.', 'shotgun', 'ultra rare', 'heleus', 2, 614, 95, 3, 21, 42, 30),
(3, 'biotic_amplifier', 'A specialized bio-amp, originally manufactured by the Milky Way''s Aldrin Labs, allows a user to essentially wrap a mass effect field around their fist and strike an opponent with enormous - often staggering - force. The Biotic Amplifier is a basic melee weapon that upgrades the Omni-Blade with a powerful stagger effect on hit without dealing more damage. Higher weapon tiers unlock automatically as Ryder''s character level increases, making it unnecessary to invest research points in this weapon. Similar to the Omni-Blade, the Biotic Amplifier is a straightforward melee weapon that does not require specialized strategies or skills to be used. Players who rely on its stagger effect are advised to exchange the Amplifier with a Krogan Hammer as soon as possible.', 'melee', 'uncommon', 'milky way', 0, 275, 0, 0, 0, 0, 0),
(4, 'angaran_firaan', 'With few resources, the angara are fighting a guerilla war. Over many years they have developed concealable, deadly, and nearly unbreakable weapons - including the Firaan, an improvement on Milky Way monomolecular blade technology. This small knife can slice through well-armored foes and sharpens itself whenever re-sheathed. The Angaran Firaan is a mid-tier melee weapon that boasts a high attack speed but no special abilities. The Firaan appears to have an exceptionally low chance to drop as random loot despite its mere Uncommon rating. With no useful abilities to its name, the Firaan is overshadowed by any melee weapon that deals more damage. The Heleus Research Points required to unlock its construction should be invested in kett melee weapons instead, and any looted examples should be recycled for resources unless the situation is really dire.', 'melee', 'uncomon', 'heleus', 0, 250, 0, 0, 0, 0, 0),
(5, 'black_widow', 'A smaller, higher-capacity variation of the Widow sniper rifle, the Black Widow fires three powerful shots per thermal clip. Andromeda Initiative engineers have adjusted the scope for improved optical enhancement in a variety of atmospheres.', 'sniper rifle', 'ultra rare', 'milky way', 2, 465, 65, 3, 24, 68, 55),
(6, 'M-5_phalanax', 'In the Milky Way, the M-5 Phalanx was the product of the Alliance''s Offensive Handgun Project. It is an accurate, close-quarters weapon with minimal recoil and solid stopping power. The versions purchased by the Andromeda Initiative were intended for civilian use, but are modified for more robust applications. The multiplayer Phalanx gained a single damage improvement adjustment post-launch.', 'pistol', 'uncommon', 'milky way', 2, 86, 260, 12, 84, 52, 10),
(7, 'M-8_avenger', 'A common and versatile assault rifle. The M-8 Avenger''s modular design and inexpensive components made it a favorite of military groups and mercenaries in the Milky Way. Many Avengers were acquired for Andromeda Initiative security forces. The sturdy rifle has a reputation for being reliable and easy to use.The S variant features boosted damage, clip size, rate of fire, and max ammo compared to the regular multiplayer Avenger. Most of these were tweaked in the final multiplayer update. Reload time also decreased from 1.5 seconds to 1.4 seconds. Previous balance changes mostly increased the S variant''s damage, with one update changing the base weapon''s damage.', 'assault rifle', 'common', 'milky way', 2, 30, 525, 30, 300, 52, 25),
(8, 'L-89_halberd', 'The sleek L-89 Halberd favors power and precision. The semi-automatic rifle was the Andromeda Initiative''s attempt to make a weapon on par with the reliable M-96 Mattock that also used Initiative breakthroughs in materials science. Only a few were made but their effectiveness in the field is unquestioned.\nThe singleplayer Halberd can''t be acquired beyond Rank I. The multiplayer Halberd has no such restrictions and can be leveled to Rank X with sufficient packs.\nThe multiplayer Halberd saw numerous balance changes to its damage and clip size until it settled on 117-147 and 25-32, respectively, as of the very last update. Its rate of fire changed once from 300 to 405.', 'assault rifle', 'rare', 'milky way', 2, 103, 300, 17, 97, 111, 25),
(9, 'M-90_indra', 'An automatic sniper rifle with a rapid fire-rate and a large capacity to compensate for its limited scope. The Indra was still in an early design phase when the Andromeda Initiative acquired its schematics. Initiative engineers completed the design and manufactured a number of functional prototypes. The multiplayer Indra gained improvements on damage, rate of fire, and max ammo as of the very last update. Post-launch its damage has been raised and lowered frequently until its final form shown. The large camera shake at first shot has also been eliminated.', 'sniper rifle', 'rare', 'milky way', 2, 48, 500, 25, 175, 61, 45);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
