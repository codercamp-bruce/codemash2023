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
            "id": "21878",
            "name": "The Battle of the Bulge: Panzers in the Snow",
            "min_players": 1,
            "max_players": 2,
            "min_playtime": 360,
            "max_playtime": 360,
            "min_age": 12,
            "description": "This is a Japanese wargame about the Battle of the Bulge 1944.<br/>It was mostly called &quot;SS Bulge&quot; because there are many games of the same name.<br/><br/>This game was firstly published as one of the SS(Small size war Simulation) series in 1990.<br/>Republished in Command Magazine Japan #46 in 2002, along with D-Day.<br/><br/>Designed by Yasushi Nakaguro.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/6Emb5lv__1otIIdEq8TGyQ__original/img/Uo9wtsoppYaOXlYsumg95UhHPqk=/0x0/filters:format(jpeg)/pic894798.jpg",
            "year": "1990"
        },
        {
            "id": "4968",
            "name": "Big Foot",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 45,
            "max_playtime": 45,
            "min_age": 8,
            "description": "&quot;You and your buddy come to Alaska looking for gold even though the dreadful BigFoot has been sighted in the mountains. Other prospectors and you must avoid crossing paths with the creature or else you must leave the mountains forever.&quot;<br/><br/>The game centers around a model of the BigFoot. 10 plastic disks (5 blank and 5 with the footprint of the Bigfoot) are secretly loaded into the base of the creature. Players start with two tokens of matching color. Each player rolls the dice and must move one of his tokens the full dice count, in either direction. The board features various locations and special action spots. When a player's token lands on a Bigfoot space, he/she rolls the dice again and moves the creature the full count. If the creature moves over an opponent's token, a disk is dispensed and if it is a footprint, that player's token is out of the game. The winner is to be the survivor after Big Foot has removed all other opponents. The game is intended Ages 8 - 14, but it's fun for adults as well.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/vB6UCAoFN8v-hmMXRwumnw__original/img/VwbP-yES-YLukq0qyNQLBrfjJiU=/0x0/filters:format(jpeg)/pic451306.jpg",
            "year": "1977"
        },
        {
            "id": "279903",
            "name": "Dark Tales: Snow White and Little Red Riding Hood",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 30,
            "max_playtime": 30,
            "min_age": 14,
            "description": "The card game Dark Tales is inspired by classic fairy tales, retold in a dark style. Correspondingly, the land of Dark Tales is populated by disturbing creatures and sinister characters, and the interaction between cards and magic items is the key to success: A character, event, or sword used at the right time can determine the fate of the game! Thanks to the many setting cards, the items you collect change their power from game to game.<br/><br/>This game combines Snow White and Little Red Riding Hood versions of Dark Tales in one box.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/Tt1EVAGT4UGV-df09Z3TuQ__original/img/2EBk4S49rTlmALP3nVpwm_a7c5c=/0x0/filters:format(jpeg)/pic4954463.jpg",
            "year": "2017"
        },
        {
            "id": "79828",
            "name": "A Few Acres of Snow",
            "min_players": 2,
            "max_players": 2,
            "min_playtime": 60,
            "max_playtime": 90,
            "min_age": 14,
            "description": "A Few Acres of Snow is a two-player, deck-building game about the French and British conflict in North America.<br/><br/>The card-play contains a focus on a deck-building mechanic similar to Dominion, each card will have multiple uses like card-driven games. The players have to choose only one aspect of the card to use when it is played. Each space captured by a player will add another card to the capturing player's deck.<br/><br/>From the box description:<br/><br/>A war fought at the edge of two mighty empires. For over one hundred and fifty years Britain and France were locked in a struggle for domination of North America. Thousands of miles from their homes, settlers and soldiers were faced with impenetrable forests, unpredictable American tribes, and formidable distances. Despite these obstacles they were able to engage in bitter warfare, with the British ultimately taking the prize of Quebec. A Few Acres of Snow is a two-player game that allows you to recreate this contest. You can change the course of history by your decisions.<br/><br/>A Few Acres of Snow takes an innovative approach to the subject, using cards to represent locations and manpower. As the game progresses you add to your selection of cards, increasing the range of actions available to you. There are many strategies to be explored. How quickly should you build up your forces, do you employ Native Americans, what energy should be expended on your economy?<br/><br/>The game is about more than just fighting &ndash; you must successfully colonize the land to have a chance.<br/><br/>Online Play<br/><br/>     Yucata (turn-based)<br/><br/><br/>",
            "image_url": "https://cf.geekdo-images.com/JcrBT921aDP9XTdDyKM_8g__original/img/OpBpj-eVDOaV0SWuixqaCzjoJ-w=/0x0/filters:format(jpeg)/pic905905.jpg",
            "year": "2011"
        },
        {
            "id": "261009",
            "name": "Inuit: The Snow Folk",
            "min_players": 2,
            "max_players": 4,
            "min_playtime": 30,
            "max_playtime": 45,
            "min_age": 13,
            "description": "As aurora borealis fills the night sky with fantastical light, and the eyes of those who came before look upon you, it has fallen on you to lead your village to power and prosperity. Now is the time to grow in numbers and strength, to build, to hunt, to look to the spirits of the white wilderness, and to prove yourself the greatest leader of the Snow Folk.<br/><br/>Inuit: The Snow Folk is a card-based strategy game of drafting and tableau building for 2-4 players.<br/><br/>On your turn:<br/>1. Draw cards from the common deck and place them face up on the table.<br/>2. Choose one type of card to draft into your village.<br/>3. The number of cards you draft is based on the number of Inuit of a given occupation:<br/>   - Elders expand your village.<br/>   - Shamans call upon powerful Spirits and perform mysterious Rites.<br/>   - Warriors bring you the weapons of those they conquer.<br/>   - Hunters provide precious game: seals, orcas, and polar bears.<br/>   - Scouts allow you to choose from more cards each turn.<br/><br/>Inuit: The Snow Folk is a creative reimplementation of Natives, a 2017 release, updated with new lavish art and adding 2 new modular expansions: The Spirit of the Great White and Rising Sun.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/1rcgdy0jY1EaTGR_xKFdhg__original/img/zgrviM6IHxMSUkIQBUwdn4ejLp4=/0x0/filters:format(jpeg)/pic4583623.jpg",
            "year": "2019"
        },
        {
            "id": "41571",
            "name": "Memoir '44: Tigers in the Snow",
            "min_players": 2,
            "max_players": 8,
            "min_playtime": 90,
            "max_playtime": 90,
            "min_age": 10,
            "description": "From DoW website:<br/><br/>Hot on the heels of their success in Operatsiya Bagration, Soviet forces struck deep towards the Baltic coast, rapidly severing communications between German Army Group North and what little was left of Army Group Center.<br/><br/>By early October 1944, the Soviets were in view of the Baltic Sea, near the port of Memel, definitively cutting off Army Group North from any retreat route through East Prussia.<br/><br/>Despite Guderian's plea for an evacuation by sea and subsequent redeployment in Central Europe where forces were desperately needed to help stabilize an increasingly dicey situation, Hitler stubbornly refused.<br/><br/>Instead, he ordered the 200,000+ German troops to entrench themselves, in the hope of using the Courland Pocket as a springboard for a future offensive.<br/><br/>Part of the Memoir '44 series.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/6DyM6GdfvKK1ZNGXxzdt1g__original/img/4Npe3ZQDD8Idleh_VmjKTDbepuA=/0x0/filters:format(jpeg)/pic489626.jpg",
            "year": "2009"
        },
        {
            "id": "231038",
            "name": "Dreamscape",
            "min_players": 1,
            "max_players": 4,
            "min_playtime": 60,
            "max_playtime": 90,
            "min_age": 10,
            "description": "Dreamscape is a unique &quot;dream building&quot; game. Incarnate a dreamer collecting dreamshards in mysterious locations such as the lair of the Clockwork Golem. Create dreamscapes with these shards, stroll along paths, climb mountains, and pass through waterfalls. A game of Dreamscape is played in six rounds consisting of two phases:<br/><br/>In the Travel phase, wander through the dreamworld in quest for dreamshards. Use with skill the key function of the locations you cross and save precious action points to collect more shards. But avoid Mr Nightmare, who is lurking around to infest your dreams.<br/><br/>Then comes the Creation phase, in which you construct your own dreamscape in 3D, using the collected dreamshards. Score points for completed landscapes as listed on your personal goals. And to shape your Dreamscape constantly evolving,  you can rely on the essential location powers.<br/><br/>Furthermore, a series of common goals offer new challenges with each game, influencing your choices while collecting and building your Dreamscape.<br/><br/>Dreamscape offers a game experience that cannot be compared to any other game, with a unique combination of route-planning, resource collecting and ultimately building your own little Dreamworld as a small tableau. In the end, the wonderful dreamscapes you will create will leave you with a magical feeling, constantly renewed.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/3EdeIbt587pyekLIYZlp_A__original/img/4NJrFZttBEVH7zFKXPxf1JKsRUk=/0x0/filters:format(jpeg)/pic5027884.jpg",
            "year": "2019"
        },
        {
            "id": "149828",
            "name": "Ski The Mountain",
            "min_players": 2,
            "max_players": 6,
            "min_playtime": 45,
            "max_playtime": 45,
            "min_age": 8,
            "description": "Ski the Mountain is a competitive skiing game for up to six players in which the board is the piste map. The game recreates a real day on the piste with challenges, restaurant stops, and unexpected events.<br/><br/>Players begin at the bottom of the mountain with targets to achieve during the day. Each player plans his route, then sets off to ski as many runs as he can before the sun sets at the day's end.<br/><br/>Each turn players can collect piste cards to add to their hand, travel up ski lifts, or play piste cards to ski runs. Event cards can be played throughout the game to hinder your opponent or give you an advantage. Remember not to get stuck on the mountain when the sun sets!<br/><br/>Players score points for each run completed with additional points for some named runs. Each completed target scores additional points.  Whoever has the highest point tally at the end of the day wins.<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/DiLxP8v7KZWyEo3Of-DBBQ__original/img/pKWka8jqaP8-oIP4ZQcCsQ9ydDQ=/0x0/filters:format(jpeg)/pic1826213.jpg",
            "year": "2013"
        },
        {
            "id": "256438",
            "name": "Snow Time",
            "min_players": 3,
            "max_players": 5,
            "min_playtime": 20,
            "max_playtime": 40,
            "min_age": 10,
            "description": "Snow is falling! Winter is finally here!<br/>A joust is in the making: let the show begin!<br/>You play as children, representing your village, and face your<br/>opponents in a joyful competition around a marvelous tree.<br/>Anticipate other players&rsquo; moves and guess their intentions.<br/>Be crafty, collect strange fruits, and dodge the snowballs!!<br/><br/>Fruits appear randomly on the board at different levels of the tree.<br/>The players will try to seize them and therefore will have to choose on which branch they want to climb.<br/>Be careful though, a player will only be able to harvest fruits if he is alone on a branch, and if there is not a player in ambush just above him!<br/>Thus, He will try to anticipate the choices of his opponents since otherwise a squabble will start, which will inevitably end up by the loss of cards, unless one of the brawlers dominates the fray.<br/>Finally, the cleverest player will score a point for avoiding the fight by being the lowest in the tree.<br/>Between racing game, bluff, and double guessing.<br/><br/>&mdash;description from the publisher<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/enxgfwNqx3Y-h_HkJ_ZRcw__original/img/4JNCzAYRGvJlnplHjocgfu0VZyU=/0x0/filters:format(jpeg)/pic4236947.jpg",
            "year": "2018"
        },
        {
            "id": "255924",
            "name": "Snowdonia: Deluxe Master Set",
            "min_players": 1,
            "max_players": 5,
            "min_playtime": 30,
            "max_playtime": 90,
            "min_age": 10,
            "description": "Snowdonia is a competitive or solitaire worker placement game, lovingly crafted around the idea of building railways in Wales, and &ndash; with multiple other scenarios &ndash; around the world.<br/><br/>Snowdonia: Deluxe Master Set contains  the Snowdonia base game as well as all previously released promo cards and scenarios, along with five new scenarios: The Bluebell Railway, The Qinghai-Tibet Railway, The Mount Hakone Electric Railway, The Wye Valley Tourer, and The Malta Railway. This set also includes an automa (Botdell), designed by D&aacute;vid Turczi, along with a number of designer trains which are new to the Deluxe Master Set.<br/><br/>Contains:<br/>     <br/>Snowdonia<br/>Snowdonia: Bayerische Zugspitzbahn<br/>Snowdonia: Britannia Bridge<br/>Snowdonia: Candace Camille<br/>Snowdonia: Card 31 of 30<br/>Snowdonia: Essen 2012 Promo Cards<br/>Snowdonia: Jungfraubahn &amp; Mount Washington<br/>Snowdonia: Lost Train Promo Card<br/>Snowdonia: Mrs Larkin's Washing Machine<br/>Snowdonia: Pen-y-Gwryd Hotel<br/>Snowdonia: Puffing Billy<br/>Snowdonia: Rolling Stock #1<br/>Snowdonia: Seasons<br/>Snowdonia: Supply Wagon/Cannon<br/>Snowdonia: The Battlepuppy Express<br/>Snowdonia: The Daffodil Line (the full set of cards found in the first print run; there were less cards for it in the Trans-Australian Railway &amp; The Daffodil Line printing)<br/>Snowdonia: The Lord Mayor's State Coach<br/>Snowdonia: The Necropolis Railway &amp; Neuhauser Bockerlbahn<br/>Snowdonia: The North Pole &amp; The Great Bridge Scrapyard Promo Tile<br/>Snowdonia: The Siege of Petersburg / The Channel Tunnel 1881<br/>Snowdonia: Trans-Australian Railway &amp; The Daffodil Line<br/>Snowdonia: Wagons Expansion<br/><br/>Also includes promo cards that were previously print and play only (these were Kickstarter stretch goals):<br/>Princess Margaret Rose<br/>The Bought At Auction Loco<br/>No. 11 Prototype Engine<br/>The Breakdown Crane<br/>The Utility Loco<br/>Santa's Sleigh<br/>Krampus<br/>The Camoflaged Loco<br/><br/>The Great Old One<br/>The Coal Train<br/>The Downbound Train<br/>Sen's Train<br/>The Scarecrow<br/>The Falkland Island Express<br/>The Birthday Train<br/>Terraforming Engine<br/><br/>Thomas the W*** Engine<br/>The Unreliable Engine<br/>The Coal Train<br/>The Luggage (and this one will be altered, sorry)<br/>The Son of God<br/>The Guvnor's Engine<br/>The Love Train<br/>Conveyor Belt.<br/><br/>AND everything else...EVERYTHING Tony ever published/designed for campaigns/scribbled on envelopes etc!<br/><br/>",
            "image_url": "https://cf.geekdo-images.com/7-3LQMZb5rTDaW5rEwM2-Q__original/img/6QLdlso54Bk0FqBdMb633M1UZZc=/0x0/filters:format(jpeg)/pic4745548.jpg",
            "year": "2019"
        }
    ]
}
""";
