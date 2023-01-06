import 'dart:convert';

import 'package:cm23mp/models/game.dart';

List<Game> getSnowGames() {
  final snowGamesJson = jsonDecode(snowGamesJsonString) as Map<String, dynamic>;
  final snowGames = snowGamesJson['games'] as List<dynamic>;
  final games = snowGames.map((g) => Game.fromJson(g)).toList();
  return games;
}

const snowGamesJsonString = """
{
    "games": [
        {
            "id": "CSWZgC2TUk",
            "name": "A Few Acres of Snow",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 60,
            "max_playtime": 120,
            "min_age": 14,
            "description": "<p><b>A Few Acres of Snow</b> covers the long struggle between Britain and France for control of what eventually became Canada.<br /></p><p>The game involves a deck-building mechanism which may be familiar to those people who have played another certain award winning card game. Each player starts with a small set of cards. Cards come in two general types, location cards and empire cards. You can add an empire card to your discard pile simply by taking one as an action. Adding a location card is a little more involved. Each location card has a list of locations that it connects to and the transport type required to move to each of those locations. To take control of a neutral location you would have to play a location card with that neutral location on it, then a card that has the correct transport symbol, and then possibly a card with a settler symbol on it if required. You then place a cube in the location and add the location card to your discard pile.</p><p>Players take it in turns to perform two actions. There are a range of actions available, such as settling new locations, besieging locations, trading fur, launching Indian raids, and building fortifications. There are also cards that allow you to perform actions to manage your deck, such as getting rid of useless cards and drawing additional cards from your pile. You can also place cards in reserve so that you can use them at a later point in time.</p><p>The game ends if a player manages to capture his opponent’s capital city or he has managed to place all of his village or town pieces on the board. In the latter case points are calculated to see who wins.</p><p>The game can last from between 30 minutes to two hours, depending on how well players pursue the victory conditions.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1543378688452"
        },
        {
            "id": "v8NDrj9P02",
            "name": "Snow Tails",
            "min_players": 2,
            "max_players": 5,
            "min_playtime": 45,
            "max_playtime": 60,
            "min_age": 10,
            "description": "<p>Snow Tails is set in the snowy world of the Arctic Circle, where brave sledders compete in a test of skill and endurance. Action is fast and furious and not all sleds may make it to the finish. Huskies only have one setting and that is full speed! Hang on to your furs, the reins, your sled and anything else you can get hold of.<br /><br />The game contains modular track pieces which can be fitted together to form different courses. Players have their own Dog Decks which they draw from and play onto their sled mat. Movement is rarely in a straight line as the sled may drift left or right. Losing control or speeding into a corner results in Dent cards being acquired which will limit a player's hand size.<br /><br />The game features a fun and original movement mechanism.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254146838-61p5Mhxv0OL.jpg"
        },
        {
            "id": "2UqQDxWCGz",
            "name": "When I Dream",
            "min_players": 4,
            "max_players": 10,
            "min_playtime": 20,
            "max_playtime": 40,
            "min_age": 8,
            "description": "<p>Night has fallen and your mind is floating in a magical world of dreams. But rest eludes you—the Dream Spirits want to have some fun tonight! Communicate with the Dream Spirits and try to interpret their messages in When I Dream, new from Repos! Become the dreamer, put on your sleep mask, and try to figure out your dream and which spirits are the Naughty ones. Become a Good Spirit and help the Dreamer by giving him clues about the dream before the Naughty Spirits mess it up. You can learn how to play in a few minutes and have a great laugh right from the start. Each role is both challenging and entertaining, giving the game more depth according to the player's imagination. When I Dream truly provides a wonderful experience with a unique dream every round.</p><p>At the beginning of each round of <em><strong>When I Dream</strong></em> one player takes the role of the Dreamer and &quot;falls asleep&quot;, wearing a cloth mask. The other players are secretly dealt their role cards determining what kind of spirits they are &quot;good&quot; or &quot;naughty&quot; or if they are just &quot;tricksters&quot; changing sides as the game goes by.</p><p>The whole round lasts 120 seconds in which the spirits are drawing &quot;Dream&quot; cards depicting a specific element of the dream, trying to describe them to the dreamer using one word each. The dreamer can guess what the element of the Dream is at any time, placing the card to the good spirits team side if the guess was correct and in the naughty spirits pile if it was not. <br />At the end of the round the Dreamer and the good spirits get a point for every card in the good spirits pile, when the naughty spirits get one point for every card in the naughty spirits pile. The tricksters get points according to how well balanced the two teams were at the end of the round, gaining extra points if they managed to equally balance the two piles.</p><p>At the end of the round, the dreamer must use the words he guessed and story-tell his dream for extra points before he opens his eyes.</p><p>You can learn how to play in a few minutes and have a great laugh right from the start. Each role is challenging and entertaining giving the game more depth according to the player’s imagination, providing a wonderful experience with a unique dream every round.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257190063-51gpEkheO9L.jpg"
        },
        {
            "id": "0AQSEsQELG",
            "name": "Mistfall: Heart of the Mists",
            "min_players": 1,
            "max_players": 4,
            "min_playtime": 90,
            "max_playtime": 180,
            "min_age": 14,
            "description": "<i>Mistfall: Heart of the Mists</i> is is a fully cooperative card-based adventure game set in a world of mystery, eldritch powers and perilous adventures. <i>Heart of the Mists</i> continues the story of <i>Mistfall</i> in a standalone expansion featuring new Heroes, Enemies, Encounters and Quests, and introducing Allies, as well as alternative versions of some of the base game mechanisms.<br /><br />At the start of the game each player chooses a hero with a fixed deck of equipment and power cards, as well as a set of upgrades that can be added directly to a player's hand during the game. A semi-randomly created board makes for a different landscape every time the game is played, and randomized sets of encounters and enemies create different challenges for players to face before their time runs out.<br /><br /><i>Heart of the Mists</i> introduces more of what made <i>Mistfall</i> great, making it a good entry point for new gamers, as well as a solid expansion for existing fans. With next to no elements replicated from the base set, Heart of the Mists is the perfect addition to the existing <i>Mistfall</i> set - and a challenging experience both solitaire, as well as with a group of up to three friends.<br /><br />Gather up your resolve, check your gear and get ready to go to the smoldering heart of the unrelenting Mists!<br /><br /><b>Heart of the Mists is a standalone expansion.</b>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254890821-614oPv4SiGL.jpg"
        },
        {
            "id": "HU0cRhiu0G",
            "name": "Inuit: The Snow Folk",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 30,
            "max_playtime": 45,
            "min_age": 13,
            "description": "<p>As aurora borealis fills the night sky with fantastical light, and the eyes of those who came before look upon you, it has fallen on you to lead your village to power and prosperity. Now is the time to grow in numbers and strength, to build, to hunt, to look to the spirits of the white wilderness, and to prove yourself the greatest leader of the Snow Folk. Inuit: The Snow Folk is a card-based strategy game of drafting and tableau building for 2-4 players.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1547304046119"
        },
        {
            "id": "ms5CThuzbo",
            "name": "Arkham Horror: The Card Game - The Dream-Eaters",
            "min_players": 1,
            "max_players": 2,
            "min_playtime": 60,
            "max_playtime": 120,
            "min_age": 14,
            "description": "<p>In light slumber he descended the seventy steps to the cavern of flame and talked of this design to the bearded priests Nasht and Kaman-Thah. And the priests shook their pshent-bearing heads and vowed it would be the death of his soul.<br />– H. P. Lovecraft, &quot;The Dream-Quest of Unknown Kadath&quot;</p><p>There is a hidden realm outside the world of the waking: a realm of wonder, imagination, and nightmares. After occult author Virgil Gray writes about his adventures in these “Dreamlands,” you decide to set forth and learn the truth for yourself. What is real, and what is fiction? And what secrets await in the dark, forbidden places beyond the gates of sleep?</p><p><strong>The Dream-Eaters</strong> is the fifth deluxe expansion for Arkham Horror: The Card Game. In this expansion, players take on the roles of either a group of investigators venturing into the Dreamlands or their companions who have been left in the waking world. This expansion contains the first two scenarios of The Dream-Eaters cycle; one scenario for each of these two groups. This expansion also contains new investigator and player cards that increase the customization options for the game.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324113147.jpg"
        },
        {
            "id": "CuNjhGiwKU",
            "name": "Memoir '44: Battle Map - Tigers In The Snow/Operation Market Garden",
            "min_players": 2,
            "max_players": 8,
            "min_playtime": 90,
            "max_playtime": 120,
            "min_age": 10,
            "description": "<p>The second installment in the series of Memoir '44 Battle Maps includes 2 Overlord scenarios, six Tiger Tanks and 2 bonus scenarios. Out of Print.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257349009-51fOQZUSBnL.jpg"
        },
        {
            "id": "WFdVr8xDKW",
            "name": "Snow Time",
            "min_players": 2,
            "max_players": 6,
            "min_playtime": 30,
            "max_playtime": 45,
            "min_age": 10,
            "description": "Snow is falling! Winter is finally here! A joust is in the making: let the show begin! You play as children, representing your village, and face your opponents in a joyful competition around a marvelous tree. Anticipate other players' moves and guess their intentions. Be crafty, collect strange fruits, and dodge the snowballs!!",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540940714164"
        },
        {
            "id": "n5ho4lyw1g",
            "name": "Snow White and the Seven Dwarfs: A Gemstone Mining Game",
            "min_players": 3,
            "max_players": 7,
            "min_playtime": 45,
            "max_playtime": 60,
            "min_age": 8,
            "description": "<p>Play as one of the iconic Seven Dwarfs and push your luck as you collect gems from the mine and earn bonus points by discovering gem combinations. Inspired by , this game is sure to bring smiles on family game night.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540051639620"
        },
        {
            "id": "LgsHdNAWpX",
            "name": "Through Ice and Snow",
            "min_players": 1,
            "max_players": 5,
            "min_playtime": 45,
            "max_playtime": 90,
            "min_age": 14,
            "description": "<p>Through Ice &amp; Snow is an epic game where players explore the North Pole. In the 19th century, the British Empire needed to find new naval routes to the Asian colonies, and thus promoted many expeditions to the North Pole in order to find the Northwest passage. Those Arctic journeys faced many tragedies, since finding food was extremely hard, the overworked crews were prone to mutiny, and the weather was merciless. Each player is in charge of their own ship and has to manage their resources while sending their crew to contact local communities, explore, hunt or discover new species ... while maintaining the health and morale of their crew.</p><p>The core mechanics of the game are:</p><ul><li>Worker Placement</li><li>Resource Management</li><li>Point Salad</li><li>1 to 5 players</li></ul><p>The main points of the game are:</p><ul><li>It’s highly thematic</li><li>You need to balance the need to score points with the maintenance of your crew</li><li>Indirect interaction</li><li>“In Crescendo” gameplay, that results in epic journeys</li></ul><p><em>—description from the publisher</em></p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/userfiles/1654792970878-ThroughiceandSnow_3dGameBox.jpg"
        },
        {
            "id": "9ApoLHMAUW",
            "name": "Mistfall: Sand & Snow Expansion",
            "min_players": 1,
            "max_players": 4,
            "min_playtime": 120,
            "max_playtime": 180,
            "min_age": 14,
            "description": "<p><strong>Sand &amp; Snow </strong>is an expansion that will enhance your <em>Mistfall</em> and <em>Heart of the Mists</em> experience with a set of 110 brand new cards, you can add to any of one of the sets (or when using both).<br /><br />Let's start with a new type of Enemy: the Lieutenant. Easily recognizable by lacking a Resolve value, a Lieutenant is an alternate version of an existing Enemy which, when eliminated, allows you to take a Reward card right out of the display. Most Enemies appearing in Mistfall and Heart of the Mists will see their Lieutenant version in the Sand and Snow expansion.<br /><br />New opportunities to receive Reward cards call for (you guessed it!) more Rewards, so the expansion comes with a set of brand new General Rewards. Now you get an even greater number of new weapons, armour and arcane items to use with Mistfall and Heart of the Mists.<br /><br />Sand &amp; Snow also includes new Allies, and a set of Special Event cards, drawn at specific times during the game, becoming essentially more permanent versions of Encounters. If you can beat them within a few turns of the game, you might be rewarded for your effort, and if you decide to ignore them, they will come back to bite you!</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540936731294"
        },
        {
            "id": "DsBiOkcX6u",
            "name": "Quirky Circuits: Penny & Gizmo's Snow Day",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 15,
            "max_playtime": 30,
            "min_age": 7,
            "description": "<p>Help Penny and Gizmo have the best snow day ever in <em>Quirky Circuits: Penny &amp; Gizmo's Snow Day</em>, a co-operative programming game for the whole family.<br /><br />Program lovable robots with your friends and family, but make sure to complete each task before batteries run out.<br /><br />All players must work as a team to complete unique scenarios across a 20-page game book, with each scenario being quirkier than the last. Chase down naughty dust bunnies around the house with Gizmo! Slide into action and collect all the flags with Penny, the newest resident robot in Robotopia. Use movement cards to program robots across each map, but be careful! Players have only limited information as to which cards their teammates have played. Program wrong, and your robot could be left spinning its wheels in a corner. Move too slowly and your robo-friend will run out of battery!</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/userfiles/1646968007207-ph3301.jpg"
        },
        {
            "id": "THIBiZN301",
            "name": "Dark Tales: Snow White Expansion",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 30,
            "max_playtime": 30,
            "min_age": 14,
            "description": "<p>From the spooky Prince and the mysterious Dwarves, to the Glass Coffin and the infamous Poisoned Apple, experience all the elements of the classic fairy tale, Snow White, with this expansion to Dark Tales, as new characters and special items appear to create new and unexpected combinations.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540912583791"
        },
        {
            "id": "GV1ndS3yJr",
            "name": "It Never Snows",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 540,
            "max_playtime": 1500,
            "min_age": 14,
            "description": "It Never Snows is a Standard Combat Series (SCS) game covering the pivotal Market Garden offensive in September, 1944. Using a system based on the well-received SCS Game Bastogne, It Never Snows covers the landings and ground offensive endeavoring to link up with them at 600m per hex with units generally companies. Each turn is half a day making for a 17 turn campaign game (uniquely playable among Market Garden games).<br /><br />The expansive five map area allows each of the airborne division fights to be geographically isolated and separate, as was the case historically. What this does is that it allows each situation to be gamed as its own little tactical puzzle-making it such that a player might be ''winning'' in one region while ''losing'' in another, at the same time. Both players are always ''in the game.''<br /><br />While the Allied player is busy dropping paratroopers, establishing bridgeheads and running a ground offensive to link up with them, the German player must devastate the airborne forces clinging to Arnhem, defend the various river crossings and counterattack to sever the Allied supply lines. Both players are attacking and defending at the same time, every turn.<br /><br />Following on the heels of Bastogne, It Never Snows uses a tactical model with a minimal amount of rules overhead which shows both set-piece as well as ''on the fly'' attacks and the effects of indirect fires and air support.<br /><br />A fantastically detailed OOB shows the insane array of German units being scratched together to defeat the Allied offensive-from displaced sailors to the deaf, from elite armor to barely trained school units, from highly motivated SS to penal units being pushed into battle at gunpoint. Against the elite airborne troops of the Allies, this menagerie is hardly the German army many wargamers envision when they think of World War II.",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559255024009-41DDCQnIJAL.jpg"
        },
        {
            "id": "aTFNfwqN0X",
            "name": "Star Wars: Legion - Snowtroopers Unit Expansion",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 60,
            "max_playtime": 120,
            "min_age": 14,
            "description": "<p>No matter how dangerous the freezing temperatures on a planet, you'll find that your Snowtroopers are equipped to handle the killing cold with ease. Within the Snowtroopers Unit Expansion for Star Wars: Legion, you'll find seven unpainted Snowtrooper miniatures, inviting you to field these troopers as a single unit and combat the Rebellion in even the most hostile and adverse environments. Alongside these Snowtroopers, you'll find an assortment of upgrade cards, inviting you to kit out your Snowtroopers for whatever you expect to face on the field of battle. <br /><br /></p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1540855369650"
        },
        {
            "id": "f7pZgDmtC2",
            "name": "Terraforming Mars: Snow Algae Promo Card",
            "min_players": 1,
            "max_players": 5,
            "min_playtime": 90,
            "max_playtime": 120,
            "min_age": 12,
            "description": "<p>Terraforming Mars: Spielbox 2/17 Promo<br />Was also available as a reward for backing The Secret Cabal Gaming Podcast Kickstarter 2017 Campaign and the Man vs Meeple Kickstarter 2018 Campaign.</p><p>Automated Card<br />Needs two oceans.<br />Increase plant production and heat production one step.</p><p><em>German text:</em><br />Schneealgen<br />Selbstständige Karte (grün)</p><p>Benötigt 2 Ozeane.</p><p>Erhöhe deine Pflanzen-Produktion und deine Wärme-Produktion um je 1.</p><p>&quot;Durch das Eis geschützt erzeugen sie eine innere Mikro-Umgebung, die den Schnee verfärbt.&quot;</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1545460669997"
        },
        {
            "id": "3G0vhSoCqB",
            "name": "HUNKER: a game of woodland friendship under the falling snow",
            "min_players": null,
            "max_players": null,
            "min_playtime": null,
            "max_playtime": null,
            "min_age": null,
            "description": "Optimize actions and explore, forage for food, build shelter, do favors, and hunker down before winter arrives. For 2-4 forest friends.",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1582684715987"
        },
        {
            "id": "BLHoGB684j",
            "name": "Scary Tales: Snow White vs. The Giant",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 20,
            "max_playtime": 20,
            "min_age": 13,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1548114320240"
        },
        {
            "id": "X22BnoZfPh",
            "name": "Heroscape Game System Expansion Set: Thaelenk Tundra Glacier Mountains, Ice and Snow Pack with Snow Hunters",
            "min_players": null,
            "max_players": null,
            "min_playtime": null,
            "max_playtime": null,
            "min_age": null,
            "description": "Turn your battlefield into a frozen tundra with snow spaces, ice spaces and glacier mountains that are sure to slow your enemy down. Then track them and attack them with your Dzu-Teh Snow Hunters, who travel quickly through this treacherous terrain and become all but invisible near the glacier mountains.<p>This adventurous playset includes a Thaelenk Tundra battlefield and two unique game scenarios. Also comes with 6 Glacier Mountains, 6 Glacier Bases, 12 Double-hex Snow Tiles, 12 Single-Hex Snow Tiles, 21 Ice Tiles, Army Card, 3 Painted Figures, and Game and Scenario Guide. For 2 to 4 players.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254823596-61QSWASCS5L.jpg"
        },
        {
            "id": "oJK1MYAmS4",
            "name": "Terraforming Mars: 4 Pack Promotional Cards (Penguins, Self-Replicating Robots, Small Asteroid, Snow Algae)",
            "min_players": null,
            "max_players": null,
            "min_playtime": null,
            "max_playtime": null,
            "min_age": null,
            "description": "<p>Terraforming Mars Promo Card Bundle - Snow Algae, Penguins, Small Asteroid and Self-Replicating Robots, 4 Playing Cards to be used with base game Terraforming Mars!, Card Descriptions below.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1606206574457"
        },
        {
            "id": "ZGseuDcEPG",
            "name": "Snow Tails: The Leap of Death",
            "min_players": 2,
            "max_players": 5,
            "min_playtime": 45,
            "max_playtime": 45,
            "min_age": 8,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/empty+box.jpg"
        },
        {
            "id": "kaopl4apFx",
            "name": "That Snow Moon",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 10,
            "max_playtime": 15,
            "min_age": 0,
            "description": "<p><em><strong>That Snow Moon</strong></em> is a space opera inspired by a popular movie involving space and battles, while not actually infringing upon intellectual property.</p><p>In the game, players divide into two teams: Liberation and Dynasty. Liberation throws their cards facedown onto the field, trying to assemble a particular set of cards. The Dynasty drops their cards onto the table, trying to land on the Liberation cards to reveal them and take out important cards from the Liberation.</p><p>The Liberation tries to bluff and disguise what they're doing, while the Dynasty tries to outguess and crush them, which each side uses its unique special abilities as best it can.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1545087540726"
        },
        {
            "id": "UUZqJGIofp",
            "name": "Snow Tails: Polar Plunge Track",
            "min_players": 2,
            "max_players": 5,
            "min_playtime": 45,
            "max_playtime": 60,
            "min_age": 10,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1571411830148"
        },
        {
            "id": "dwnkJb0rmx",
            "name": "Kingdom Death: Monster – Story in the Snow Promo",
            "min_players": 1,
            "max_players": 4,
            "min_playtime": 60,
            "max_playtime": 180,
            "min_age": 17,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/empty+box.jpg"
        },
        {
            "id": "45aN7aYps7",
            "name": "First Snow",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 40,
            "max_playtime": 50,
            "min_age": 10,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/empty+box.jpg"
        },
        {
            "id": "OLS9k8waSh",
            "name": "Snow and Salt: Monsters from the Taiga & Mangrove",
            "min_players": null,
            "max_players": null,
            "min_playtime": null,
            "max_playtime": null,
            "min_age": null,
            "description": "Two anthology zines of monsters intimately tied to their biome. Part of the SWORD DREAM.",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1581437215858"
        },
        {
            "id": "KFa9PDdJn2",
            "name": "Kingdom Death: Monster – Snow the Savior",
            "min_players": 1,
            "max_players": 6,
            "min_playtime": 60,
            "max_playtime": 180,
            "min_age": 17,
            "description": "",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/empty+box.jpg"
        },
        {
            "id": "SvkD8S9mg0",
            "name": "Fairy Tale Assassin League: Snow White? Not Anymore",
            "min_players": 2,
            "max_players": 8,
            "min_playtime": 60,
            "max_playtime": 60,
            "min_age": 16,
            "description": "<p><em><strong>Fairy Tale Assassin League</strong></em> is a storytelling card game that asks the question: &quot;What happens when Snow White goes to Las Vegas and turns bad?&quot; There are no more happily ever afters.</p><p>The game starts with players choosing a fairy tale character; one will be the villain, the remainder good. Each character starts in one of six locations (restaurant, parking lot, theater, stage, kitchen and back alley). The first act of the game is to come up with reasons why the bad guy has to go down. The bad guy starts by bragging about how bad they are. The heroes then say how they have been personally hurt by him. Players can jump in with suggestions for other people&rsquo;s stories.</p><p>The rest of the game is about bringing the villain down (and maybe to justice). The bad guy starts the game. Players take turns to add to the story, assisted by a tableau of scene cards (representing some key point in a revenge story plot) and action cards that can be played from hand. Another player&rsquo;s version of events can be challenged by playing an action card. Challenges are resolved by rolling dice, with the winner gaining the card their opponent used. All cards are worth victory points.</p><p>The aim of the game is to score the most victory points while also telling an interesting story.</p><p>Multiple <em>FTAL</em> decks are available, and they can be combined for a larger scale game.</p>",
            "image_url": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1560987627991"
        }
    ],
    "count": 73
}
""";
