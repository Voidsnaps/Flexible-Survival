Version 1 of Beaver by Stripes begins here.

"Adds a Beaver creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

nobeaversex is a number that varies.

to say randomcanadiancity:
	say "[one of]Toronto[or]Vancouver[or]Montreal[or]Ottawa[or]The Rock[at random]";

to say losetobeaver:
	now nobeaversex is 0;
	let analchance be 5;
	if anallevel is 3, increase analchance by 1;
	if Player is mpreg_ok, increase analchance by 1;
	if Player is mpreg_able, increase analchance by 1;
	if Player is neuter, increase analchance by 1;
	if anallevel is 1, now analchance is analchance / 2;
	if HP of Player > 0:
		say "     Giving into the cheerful beaver's advances, you are pushed to the ground. 'See, that's much better. No need for a big kerfuffle. Now let's get cozy, eh?' he says, giving you a kiss while letting his paw slide down to grope you. ";
	else:
		say "     Unable to find the will to keep struggling against the friendly beaver, you are pushed to the ground with the plump fellow atop you. '[one of]Now don't be a sook just because you lost. Gimme a kiss,' he says[or]What's with all the kerfuffle, eh? Why's everybody here in the States got to be so rude?' he says[or]Now don't get rattled just [']cuz I won fair and square. Let's kiss and make up,' he says[at random], pressing his whiskered muzzle to your face while letting a paw slide down to grope you. ";
	if Player is female and a random chance of 3 in 5 succeeds:
		say "His paw finds its way to your pussy and teases at your wet folds. Finding yourself growing quickly excited, you help him pull off your gear and clothes, laying yourself bare for the amorous fellow.";
		if scalevalue of Player < 4 and a random chance of 1 in 4 succeeds:
			say "     'You know what they say aboot Canada, eh? We're bigger and we're on top,' he quips as he thrusts his thick meat into your juicy hole";
		else:
			say "     Gently spreading your legs, he gets his throbbing cock lined up with your pussy and brushes his glans across it a few times. This sets your pussy aquiver with need and you press your hips up, pushing his tip into you. Grinning down at you, he slowly sinks the rest of the way in";
		say ". His webbed paws slide over your body as his pudgy belly presses down on you[if Breast Size of Player > 0]. After giving you another kiss, he nuzzles down to your breasts and starts licking and kissing at them[else]. He bestows many more kisses upon you[end if] as he thrusts into your juicy hole. He turns out to be a very considerate and tender lover, asking for and giving you what you want now that you're welcoming his affection. There's just something about the big, lovable guy that's gotten you really turned on and you're lusting for him to keep fucking you.";
		if a random chance of Libido of Player in 100 succeeds:
			say "     In the mood for a hard, fast fuck, that's what you ask the beaver for, and he's more than happy to give it to you. Shifting into a kneeling position, he grabs your ass with one paw and raises your rear. Once in position, the thrusts back into you, pulling at your hips each time he thrusts, pounding into you firmly. His cock pulses and throbs inside you and his hefty balls slap against you as he fuck you, going harder and faster as you cry out for more and more from him. Going at this pace, neither of you is able to hold out for long and you groan loudly as you orgasm, feeling his thick seed rushing into your belly. As he's filling you, you [one of]feel both warm and cold inside[or]hear the cheer of a hockey crowd screaming 'GOAL!'[or]taste maple syrup[at random]. This strange sensation lasts only a moment, but is strangely exciting and invigorating, adding to the pleasure each spurt of cum into you brings.";
		else:
			say "     In the mood for a nice, long fuck, that's what you ask the beaver for, and he's more than happy to give it to you. Shifting onto his back, he cuddles you in his arms so you can rest atop his soft, warm belly while riding his cock. He slides his paws down your back and gropes your ass as he thrusts up into you gently, letting you set the pace atop his throbbing rod. You take it slow at first, drawing out the pleasure his chubby nine-inch cock can give while kissing your rodent lover[if HP of Player < 1]. Having forgotten you were ever reluctant to fuck the plump beaver, you[else]. You[end if][if Cunt Count of Player > 1] pull off and switch cunts a few times, drawing it out even longer. You[end if]r beaver lover, after you've ridden him for a deliciously long time, informs you that he can't hold back any longer. While grinding down onto him for his few last thrusts, you press your lips to his and kiss him moments before he cums hard. As blast after blast of his syrupy load shoots into you, you [one of]feel both warm and cold inside[or]hear the cheer of a hockey crowd screaming 'GOAL!'[or]taste maple syrup[at random]. This strange sensation lasts only a moment, but is strangely exciting and invigorating, adding to the pleasure each spurt of cum into you brings.";
		say "     After his balls are drained and he's pulled out, he staggers to his feet, thanks you for the fun and turns to go. '[one of]Mmm... I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye after a fuck like that[or]Now, where can I get me a two-four of real beer? Maybe this way[or]I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Beaver";
	else if Player is not female and a random chance of analchance in 15 succeeds:
		say "His paw finds its way to your ass and teases at your tight pucker. You squirm for a moment, but find yourself quickly growing excited and you're soon helping him to pull off your gear and clothes. Once you're naked, you let the amorous fellow roll you over onto all fours.";
		if scalevalue of Player < 4 and a random chance of 1 in 4 succeeds:
			say "     'You know what they say aboot Canada, eh? We're bigger and we're on top,' he quips as he climbs atop you and thrusts his thick meat into your tight hole. You groan a little at this rough intrusion, but also feel a rush of pleasure as his thick meat rubs across your sensitive inner walls.";
		else if anallevel is 3 and a random chance of 3 in 5 succeeds:
			say "     'Here, this should help you get your motor runnin['],' he says, nuzzling his fuzzy face against your ass. After a few gentle nipples with his sharp teeth, he presses his wedge-shaped head between your cheeks and starts licking at your pucker. His tongue moves gently across your crinkled flesh, teasing and rubbing at it, coaxing it to relax and open in preparation for what's to come. After making a few final thrusts of his tongue into your hole to make sure you're open for business (which cause you to moan in pleasure), he pulls away. Climbing atop you, he sinks his chubby shaft into your slick hole with relative ease, feeling a rush of pleasure as his thick meat rubs across your sensitive inner walls.";
		else:
			say "     Gently spreading your legs, he gets his throbbing cock lined up with your back entrance and brushes his glans across it a few times. Wanting to be filled, your ass pushes back, pushing his tip into you. Grinning down at you, he slowly sinks the rest of the way in. The penetration is slow at first, but he doesn't force it, giving your hole the time to accept the chubby intruder. While there's a bit of initial discomfort, that quickly gives way to a rush of pleasure as his thick meat rubs across your sensitive inner walls.";
		say "     Once he settles into a rhythm for fucking you[if HP of Player < 1] and you've become too lustful to continue resisting[end if], he lets his webbed paws slide over your body while his pudgy belly rubs atop your back[if Breast Size of Player > 0]. His webbed paws run all over you, but play particular attention to your breasts[end if][if Player is male]. Eventually a paw does find its way to your cock, stroking and squeezing at it as he pounds into you, his plump balls slapping against yours[end if]. He turns out to be a very considerate and tender lover, asking for and giving you what you want now that you're welcoming his affection. There's just something about the big, lovable guy that's gotten you really turned on and you're lusting for him to keep fucking you.";
		if a random chance of Libido of Player in 100 succeeds:
			say "     In the mood for a hard, fast fuck, that's what you ask the beaver for, and he's more than happy to give it to you. Shifting into a kneeling position, he grabs your ass with both paws and kneads at your bottom. After smearing some spit on your hole for extra lube, he thrusts firmly back into you, pulling at your hips each time he thrusts, pounding into you firmly. His cock pulses and throbs inside you and his hefty balls slap against you as he fuck you, going harder and faster as you cry out for more and more from him. Going at this pace, neither of you is able to hold out for long and you groan loudly as you orgasm, feeling his syrupy seed [if Player is male]blasting against your prostate[else]rushing into your ass[end if]. As he's filling you, you [one of]feel both warm and cold inside[or]hear the cheer of a hockey crowd screaming 'GOAL!'[or]taste maple syrup[at random]. This strange sensation lasts only a moment, but is strangely exciting and invigorating, adding to the pleasure each spurt of cum into you brings.";
		else:
			say "     In the mood for a nice, long fuck, that's what you ask the beaver for, and he's more than happy to give it to you. Shifting onto his back, he cuddles you in his arms so you can rest atop his soft, warm belly while riding his cock. He slides his paws down your back and gropes your ass as he thrusts up into you gently, letting you set the pace atop his throbbing rod. You take it slow at first, drawing out the pleasure his chubby nine-inch cock can give while kissing your rodent lover[if a random chance of 1 in 2 succeeds and Player is male]. 'Mmm... if we were back home, we could get married and do this all the time,' he says with a grin and a light swat of his broad tail across your ass[end if][if HP of Player < 1]. Having forgotten you were ever reluctant to fuck the plump beaver, you[else]. You[end if][if Player is mpreg_able] find yourself hoping to get a few pudgy beaver children of your own. You[end if]r beaver lover, after you've ridden him for a deliciously long time, informs you that he can't hold back any longer. While grinding down onto him for his few last thrusts, you press your lips to his and kiss him moments before he cums hard. As blast after blast of his syrupy load shoots into you, you [one of]feel both warm and cold inside[or]hear the cheer of a hockey crowd screaming 'GOAL!'[or]taste maple syrup[at random]. This strange sensation lasts only a moment, but is strangely exciting and invigorating, adding to the pleasure each spurt of cum into you brings.";
		say "     After his balls are drained and he's pulled out, he staggers to his feet, thanks you for the fun and turns to go. '[one of]Mmm... I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye after a fuck like that[or]Now, where can I get me a two-four of real beer? Maybe this way[or]I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Beaver";
	else if Player is male and a random chance of 2 in 5 succeeds:
		say "His paw finds its way to your [cock size desc of Player] [Cock of Player] cock starts stroking it, grinning as you moan despite yourself. You find yourself quickly getting excited and soon you're helping him to pull off your gear and clothes. Once you're naked, you let the amorous fellow push you back down onto your back so he can tend to your throbbing erection.";
		say "     Leaning in, he gives your cock several slow licks with his tongue. He takes added care for his teeth as he swirls it over your glans, teasing until you're fully hard and dribbling precum[if HP of Player < 1]. By this point, you've become too lustful to continue resisting and stay put while he moves[else]. You smile at him as he shifts[end if] into a new position where he can put those big, webbed feet of his on your cock. The skin, while thick, is also quite smooth and flexible, feeling very nice against your sensitive rod and [Ball Size Adjective of Player] [Balls]. And the webbing between his long toes only means there's more of it to rub against you at once. Already quite excited and dripping pre, this leaves him free to smear the slick fluid across your cock, getting you slick and glistening with your own precum. Enjoying the foot job, you stretch out on your back, looking up at the [if daytimer is day]blue[else]night[end if] sky and bask in the pleasure of him playing with you.";
		say "     'Mmm... just how I like it. Nice and slippy.' Hearing some additional fapping, you look over to see the beaver's having a good time as well, stroking himself off while working his feet over you. His talented paws aren't even thrown off by this, both his hands and feet seeming to handle their jobs independently as they work those pulsing pillars of manhood. Finding the sight of his paws sliding up and down his chestnut rod a much more interesting sight than [if daytimer is day]watching the clouds go by[else]stargazing[end if], you turn your attention to watching him. He has such a delicious looking nine inches of thick, chubby cock that it's very arousing to watch him play with it while those paws of his work their magic over you.";
		say "     Between the foot job and the show, you groan in pleasure and cum hard while his webbed toes work your shaft so you cum all over yourself and onto his paws. Your [Cum Load Size of Player] load splatters across your face and body as he does his best to drain you dry. He smears his messy feet over your balls[if anallevel is 3], down to your asshole[end if] before wiping them on your thighs. As you're still basking in the afterglow, he gets up and stands above you, pumping his cock a few more times so he can spray his load down onto you, adding his own seed to the wet mess covering you. You catch the faint maple scent coming from it amidst the scent of your own jizz.";
		say "     After his balls are drained, he smiles down at you and thanks you for the fun before turning to go. '[one of]Mmm... I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye after all that like that[or]Now, where can I get me a two-four of real beer? Maybe this way[or]I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
		CreatureSexAftermath "Beaver" receives "OralCock" from "Player";
	else:
		say "His other paw finds its way to his stiff cock and starts stroking it. Breaking off the kiss, he guides your head down to his throbbing meat[if HP of Player < 1]. Feeling too weak to resist after the fight[else]. With growing excitement[end if], you open your mouth and take in the nine inches of chestnut-colored meat and start sucking on it. He moans happily and rubs your head as you start getting into it more and more. 'Mmm... that's the spirit, [if Player is male]bud[else]hon[end if]. I got a good, sweet dose of [one of]beaver fever[or]maple syrup[at random] for ya,' he says with a chuckle.";
		say "     His cock is actually quite delicious, having a soft maple taste to go with the muskier scent of his manhood. As you lap up his precum, it makes you increasingly excited to get more and soon you're going at him with considerable zeal, eager to get your tasty treat from those warm balls of his. Speaking of, you have a hand on them, rubbing and caressing them. They're heftier than a normal man's and should give you quite the mouthful very soon. Since you're showing such enthusiasm for his manhood, he contents himself to stroking your head and letting you suck him off until he groans that he's 'aboot to blow.' With that said, you go at him all the harder, pushing him to cum loud and hard, shooting syrupy spurts of maple-flavored semen into your mouth and down your throat. Finding it delicious, you swish it around on your tongue and swallow it down to make room for more, keeping at it until he's drained those big balls for you.";
		say "     Once he's done and has no more to give your needy mouth, he smiles down at you and thanks you for the fun before turning to go. '[one of]Mmm... I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye after all that like that[or]Now, where can I get me a two-four of real beer? Maybe this way[or]I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
		CreatureSexAftermath "Player" receives "OralCock" from "Beaver";

to say beatthebeaver:
	say "     You knock the pudgy beaver over, sending him falling onto his rather padded backside. 'Ooof! [one of]Whatcha do that for, you hoser?' he groans[or]I'll call the Mounties on you!' he says indignantly[or]Why're all you Americans so rude?' he grumbles[or]Well, we still beat you in 1812!' he yells[or]Câlice de tarbernacle, mon ostie! That hurt!' he cusses colorfully[or]I think I sprained my Molson muscle,' he complains, rubbing his pudgy belly[or]Did you get the license plate of that transport?' he moans, rubbing his head[or]You knob!' he growls[at random] as he struggles to get back up. ";
	if nobeaversex > 2:
		if BodyName of Player is "Beaver":
			say "As with the others of his kind, you resist the urge for sex and help your fellow beaver to his feet, apologizing for having to knock him aboot before sending him on his way. After returning your apology with one of his own, he goes off in search of fun or drink elsewhere.";
		else:
			say "As you've done in the past with his kind, you resist the urge to give in to your lusts and instead move to continue on your way, leaving the injured and tipsy beaver to eventually get back on his own feet and stagger off in search of fun or drink elsewhere.";
	else if Player is not neuter:
		say "     You find yourself feeling [if Libido of Player < 33]a bit[else if Libido of Player < 67]somewhat[else]rather[end if] aroused after all that, your eyes drawn to the pudgy beaver. You find yourself considering having some fun with him before moving on.";
		if Player is male:
			say "     Would you like to [link]fuck the rotund rodent (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link] or just [link]let him go (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>";
				get a number;
			if calcnumber is 1:
				say "[beaver_pvsex1]"; [anal]
			else if calcnumber is 2:
				say "[beaver_pvsex2]"; [m-oral]
			else if BodyName of Player is "Beaver":	[no sex - Beaver]
				say "     Resisting the urge to give in to your baser instincts, you help your fellow beaver to his feet, apologizing for having to knock him aboot before sending him on his way. After returning your apology with one of his own, he goes off in search of fun or drink elsewhere.";
				increase nobeaversex by 1;
			else:							[no sex]
				say "     Resisting the urge to give in to your baser instincts, you decide to continue on your way, leaving the injured and tipsy beaver to eventually get back on his own feet and stagger off in search of fun or drink elsewhere.";
				increase nobeaversex by 1;
		else:
			say "     Would you like to have him [link]eat you out (Y)[as]y[end link] or just [link]let him go (N)[as]n[end link]?";
			if Player consents:
				say "[beaver_pvsex3]"; [f-oral]
			else if BodyName of Player is "Beaver":	[no sex - Beaver]
				say "     Resisting the urge to give in to your baser instincts, you help your fellow beaver to his feet, apologizing for having to knock him aboot before sending him on his way. After returning your apology with one of his own, he goes off in search of fun or drink elsewhere.";
				increase nobeaversex by 1;
			else:							[no sex]
				say "     Resisting the urge to give in to your baser instincts, you decide to continue on your way, leaving the injured and tipsy beaver to eventually get back on his own feet and stagger off in search of fun or drink elsewhere.";
				increase nobeaversex by 1;
	else:
		say "     Feeling [if Libido of Player < 33]a bit[else if Libido of Player < 67]a little[else]kinda[end if] turned, but lacking any gender of your own, you pass on having fun with your defeated foe. ";
		if BodyName of Player is "Beaver":			[neuter - Beaver]
			say "You instead help your fellow beaver to his feet, apologizing for having to knock him aboot before sending him on his way. After returning your apology with one of his own, he goes off in search of fun or drink elsewhere.";
		else:							[neuter]
			say "You decide to continue on your way, leaving the injured and tipsy beaver to eventually get back on his own feet and stagger off in search of fun or drink elsewhere.";

to say beaver_pvsex1:	[anal]
	now nobeaversex is 0;
	say "     Deciding the pudgy beaver's ass will make for a nice cushion for some pushin['], you get him to roll over and raise that big tail of his. Spreading his furry cheeks, you rub your stiffening cock between them until you're fully hard and ready to go. He moans as you penetrate him, but doesn't resist, seeming happy to get some fun even if he's got to be on the receiving end. You run your hands over his fat rear, kneading it softly as you start thrusting[if Cock Length of Player > 36]. While slow to get started due to your exceptional size, his pudgy body is able to accommodate even your [cock size desc of Player] [Cock of Player] shaft with a little patience and some visible stretching of the beaver's belly[else if Cock Length of Player > 24]. While a little slow to get started due to your considerable size, his pudgy body is able to accommodate your [cock size desc of Player] [Cock of Player] shaft after a little while, though there's a bit of stretching of the beaver's belly to do it[else if Cock Length of Player > 12]. His pudgy body is able to accommodate even your [cock size desc of Player] [Cock of Player] shaft with little difficulty and only a brief delay while his tight hole relaxes enough to take you in[else]. His pudgy body takes your [cock size desc of Player] [Cock of Player] shaft easily enough, his tight hole relaxing enough to take you in[end if]. As you set to work stuffing the beaver, he moans and pants happily. Reaching back, he takes his own cock in hand and starts stroking his throbbing rod.";
	say "     Enjoying your pudgy lover's soft, huggable body, you run your hands over him, squeezing his furry sides[if scalevalue of Player < 4] and nuzzling at his back[end if]. His ass feels so delightfully soft when you press against it with each thrust and his asshole is snug and warm around your shaft. Each thrust also slaps your balls against his, setting those furry orbs rocking along with his hips. You keep it up, going for a good, long ride on the well-padded beaver before picking up the pace as you're about to finish. Feeling this, he groans and pumps at his cock all the faster, chewing at his lip with his big incisors as he's fast approaching climax as well, finally cumming moments [one of]before[or]after[at random] you. You send your [Cum Load Size of Player] load shooting into him even as he paints a big puddle on the ground with his own seed[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load ends up leaving the beaver all the pudgier and rounder, now sloshing quite a bit with all your cum inside him[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load ends up leaving the beaver a little pudgier and sloshing a little as well[end if]. Once you're done, you pull out of the beaver's bottom, pat his ass before slapping his tail down over it. When he finally gets up, you can see your cum leaking out from beneath that tail to run down his legs and drip onto the ground.";
	say "     Steadying himself as best he can, the tipsy rodent grins at you, thanks you for the fun before turning to go. '[one of]Mmm... I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye after all that[or]Now, where can I get me a two-four of real beer? Maybe this way[or]Oh, my aching arse. I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
	CreatureSexAftermath "Beaver" receives "AssFuck" from "Player";

to say beaver_pvsex2:	[m-oral]
	now nobeaversex is 0;
	say "     While a little leery of his overgrown teeth, you do figure who better than a beaver to deal with your wood. Pulling out your cock and stroking it hard, you pull the pudgy fellow's muzzle over to it. It takes very little coaxing to get him started[if a random chance of 1 in 4 succeeds]. He mumbles something about how it's got to be better than this cheap American beer before[else],[end if] opening wide and welcoming your cock into his muzzle. You rub his furry head and round little ears as he works his muzzle over your shaft, licking and sucking eagerly. Taking care with his big teeth, he lets his tongue do most of the work, lavishing attention upon your throbbing meat[if Cock Length of Player > 36]. The eager beaver works at your [cock size desc of Player] [Cock of Player] cock steadily, eventually managing to get his muzzle to stretch open enough for you to stuff his mouth and belly with your oversized shaft[else if Cock Length of Player > 24]. The eager beaver works at your [cock size desc of Player] [Cock of Player] cock steadily, in time managing to get his muzzle to stretch open enough for you to stuff his mouth and belly with your overgrown shaft[else if Cock Length of Player > 12]. The eager beaver works at your [cock size desc of Player] [Cock of Player] cock steadily, getting his muzzle to stretch open wide enough to take in your enlarged shaft down his throat[else]. The eager beaver works his muzzle over your [cock size desc of Player] [Cock of Player] cock steadily, taking it into his warm mouth so he can suck you off[end if].";
	say "     Once he's gotten [if Cock Length of Player > 24]most of [end if]your cock stuffed into his face, he shifts his paws to your balls[if Cock Count of Player > 2] and other cocks[else if Cock Count of Player > 1] and other cock[end if] so he can play with them as well. He works you over, doing his best to please you so he can get your creamy load. And with his eager muzzle at work, it's not too long before you're feeling your cum welling up in your balls and your hot, [Cum Load Size of Player] load his getting pumped into him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] output ends up leaving the beaver all the pudgier and rounder, now sloshing quite a bit with all your cum inside him[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] output ends up leaving the beaver a little pudgier and sloshing a little as well[end if]. Once he's finally convinced you're drained, he [if Cock Length of Player > 24]gradually pulls himself off[else]releases[end if] your spent shaft and grins up at you, licking his lips.";
	say "     After taking a moment to stroke himself off and cumming onto his hockey jersey, he slowly gets back on his feet[if Ball Size of Player > 5] a little more wobbly for his extra load sloshing around inside his belly[end if]. The tipsy rodent grins at you, thanking you for the tasty treat and rubbing his belly. '[one of]Mmm... almost as good as poutine. Hey, I could sure go for some right now[or]I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry after that drink. Wonder I if can snag me some KD[or]I could use a mickie of rye to wash that down[or]Now, where can I get me a two-four of real beer? Maybe this way[or]I could sure go for a nap on the chesterfield [if Ball Size of Player > 5]after a meal like that[else]right aboot now[end if][at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
	CreatureSexAftermath "Beaver" receives "OralCock" from "Player";

to say beaver_pvsex3:	[f-oral]
	now nobeaversex is 0;
	say "     While a little leery of his overgrown teeth, you do figure who better than a beaver lick your beaver. Uncovering your loins and moving overtop of him, you pudgy fellow's muzzle between your legs. It takes very little coaxing to get him started. He nuzzles at your thighs with his fuzzy cheeks and sets himself to licking your juicy muff. You rub his furry head and round little ears as he works his across your wet folds, licking and lapping eagerly. Taking care with his big teeth, he lets his tongue do most of the work, lavishing attention upon your needy cunt. The eager beaver works his muzzle over your [cunt size desc of Player] snatch steadily, listening and responding to your moans about where you want that tongue of his next.";
	say "     Once he's gotten your hips rocking and pussy quivering from his tonguework, he lets his smooth, webbed paws run over your legs and up your thighs. He caresses your [if Cunt Count of Player > 2]other pussies while his muzzle's not working on them[else if Cunt Count of Player is 2]other pussy while his muzzle's not working on it[else if anallevel is 3 and a random chance of 2 in 5 succeeds]ass before sliding a digit back to tease its way into your asshole. Too worked up now, you don't stop the playful beaver from fingering your ass while he eats you out[else]ass, kneading at it as he eats you out[end if]. As the excitement builds, his tongue works its way all the deeper. While his small tongue can't reach that far, he makes the most of it he can, swirling it over your clit until you cum a few times and are satisfied.";
	say "     After taking a moment to stroke himself off and cumming onto his hockey jersey, he slowly gets back on his feet[if Cunt Depth of Player > 24] while licking at his absolutely soaked muzzle[else if Cunt Tightness of Player > 12] while licking his soaked muzzle[end if]. The tipsy rodent grins at you, thanking you for the tasty treat and licking his lips. '[one of]Mmm... almost as good as poutine. Hey, I could sure go for some right now[or]I could go for a 50 now. Wonder if I can find one around here[or]Now I'm hungry. Wonder I if can snag me some KD[or]I could use a mickie of rye to wash that down[or]Now, where can I get me a two-four of real beer? Maybe this way[or]After all that work, I could sure go for a nap on the chesterfield right aboot now[at random],' he says confusingly as he wanders off in search of whatever he's talking about.";
	CreatureSexAftermath "Beaver" receives "OralPussy" from "Player";

Section 2 - Creature Insertion

to say beaverdesc:
	say "     A pudgy beaver steps into view[one of], chewing on a chunk of wood[or], accidentally bumping into you and apologizing[or], humming some energetic little tune while miming skating around with an imaginary hockey stick and puck[or], as he finishes off the last of a bottle of beer. He mumbles something about weak American piss and drops the empty in the trash[at random]. The plump furry fellow is wearing a colorful hockey jersey and nothing else. His fur is brown and quite glossy, if a little ruffled. His hands and feet are webbed and have small claws.";
	say "     Having noticed you, he slaps his tail on the ground and chuckles. He's got a happy smile on his muzzle that puts his large front teeth prominently on display. '[one of]How's it goin['], eh? How aboot showing a lost Canuck a good time?' he says, his dark brown cock hard and leaking[or]Let's hit the bars. I could use a drinkin['] buddy. Or maybe a fuck buddy,' he adds with a laugh, making a grab for you[or]My buds and I came down from [randomcanadiancity] for the big game. Talk aboot bad timing, eh?' he says with a laugh and moving in to pull you into a hug[or]My buddies and I are doin['] a bit of pub crawl to celebrate the end of the world. Care to join us?' he asks, rubbing his hefty balls and moving to put his arm around your shoulder[or]Nice place you got here. It ain't no Rue Ste-Catherine, but you certainly got more titties, pussy and cock - sometimes all in one package for that matter, eh? - as part of the free show. Come on, [if Player is male]buddy[else]baby[end if], let's find something to drink,' he adds, moving to put his arm around your shoulder[or]Excuse me. Where's the nearest Timmy's? You can blow me while I grab me a double-double,' he says cheerfully while stroking his chubby cock[or]There's a nice dépanneur aboot a klick down the road. How about we go snag a two-four and have some fun?' he asks confusingly while rubbing his chestnut shaft[or]Care for a taste of maple syrup? It's [if Player is not female][']straight['][else]straight[end if] from Canada,' he laughs, stroking his leaking cock[at random]. He's got a strong Canadian accent, almost stereotypically so. You step back from the overly affectionate beaver, who seems a little tipsy and quite upset that you don't want to come with him. 'Aww, what's all this aboot? Gimme a kiss.'";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Beaver"	"[PrepCombat_Beaver]"

to say PrepCombat_Beaver:
	setmongender 3; [creature is male]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Beaver"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Beaver" to infections of RodentList;
	add "Beaver" to infections of FurryList;
	add "Beaver" to infections of NatureList;
	add "Beaver" to infections of MaleList;
	add "Beaver" to infections of BipedalList;
	add "Beaver" to infections of TailList;
	add "Beaver" to infections of TailweaponList;
	now Name entry is "Beaver"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The [one of]beaver[or]furry Canuck[or]pudgy beaver[or]too-friendly beaver[at random] [one of]gropes you with a big smile on his face[or]pulls you into a kiss, pressing his whiskered muzzle to your lips[or]turns quickly and slaps you with his big tail. 'Sorry, eh,' he says with a chuckle[or]laughs and punches you hard on the shoulder[or]presses his rotund body to yours and hugs you tight, grinding his chubby cock against you as he does[or]bites you with his sharp incisors, then blushes and covers his mouth. 'Sorry aboot that, eh? Beaver and all that,' he says. 'Lemme kiss it and make it allll better,' he adds[or]he rushes at you, body checking you like an aggressive defenseman so hard against a wall your teeth rattle[at random].";
	now defeated entry is "[beatthebeaver]";
	now victory entry is "[losetobeaver]";
	now desc entry is "[beaverdesc]";
	now face entry is "now that of a beaver, with a rounded muzzle, large dark nose and large incisors for gnawing at tasty, tasty wood";
	now body entry is "short and pudgy in a strangely sleek manner. The webbed paws on your hands and feet lead you to suspect you'd be more agile swimming than you are walking around";
	now skin entry is "brown fur";
	now tail entry is "You have a very broad, flat beaver tail.";
	now cock entry is "[one of]dark brown[or]chestnut[or]chubby[at random]";
	now face change entry is "your head fills with the sounds of a hockey fight where every blow is another snap of your skull as it reshapes itself. When it is finally broken up, it settles into the shape of a beaver's head";
	now body change entry is "you're wracked with stomach cramps and feel bloated. You are worried for a moment that you'll be sick, but suddenly all the pressure building up shifts and your body bulges outward, forming a rounded belly with a stout stature. As the changes progress out to your limbs, they start to change shape to match. Once at your extremities, your hands and feet form into webbed paws that almost look like flippers, but are more flexible";
	now skin change entry is "a coat of oily brown fur spreads across your body. It looks a little ruffled and coarse, but is quite soft and warm in actuality. It has a glossy sheen to it as well, oils coating it to keep water off of you";
	now ass change entry is "you feel something heavy putting at the base of your spine. As it grows out, it flattens, forming in the broad, flat oval of a beaver tail";
	now cock change entry is "it pulses and throbs, releasing spurts of cum as it gets chubbier. It is general human-like in form, but has also gained on a chestnut brown color. You can't help but find the look of it pleasing";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 13;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 31; [ The monster's starting HP. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "beaver milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]pudgy[or]plump[or]rounded[at random]";
	now type entry is "[one of]rodent[or]beaver[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Beaver Infection"	"Infection"	""	Beaver Infection rule	1000	false

This is the Beaver Infection rule:
	if Player has a body of "Beaver":
		trigger ending "Beaver Infection"; [Here it states, that the ending has been played.]
		if Player is male and Player is pure:
			project the figure of Beaver2_icon;
		if humanity of Player < 10:
			say "     As you start to succumb to the beaver infection afflicting you, you start to become confused, things seeming out of place. You don't belong here. You're just visiting this place. Feeling that a beer would help you get a handle on all this, you walk a few klicks to get back to the bars around the red light district and start rummaging around for some proper beer, a mickie of rye or at least some pop that isn't made with corn syrup. After a few stops, you stumble across a group of beavers in one bar. It seems they've found some [']imported['] Canadian beer. After a few moments, you recognize them as your friends, your colony, who came with you to see the big game.";
			say "     By the time you get through drinking all the beer and have had plenty of sex, things are getting rather noisy out in the city. Americans playing at war with their guns again, it seems. There's lots of soldiers running through the city, fighting mutants and scaring off all the sexy sluts. Deciding with the others that it's time to cut your vacation short, you make your way out of the city, diving into the nearby river to evade the collapsing military lines. It's a long trip back with few donuts and even less proper beer, but you got make the occasional excursion into towns along the way to grab a little fun and leave behind some beaver-tailed locals. Figuring they can catch up later or make a colony of their own out of the river town, you move on.";
			say "     Eventually you make it back to the Great White North where people speak proper and there's a Timmy's on every block. Once there, you and your buds set yourselves to making a proper dam for yourselves and snag a few more new friends while raiding the local liquor store. Soon enough, you have set yourselves up in a big and growing colony with plenty of kits on the way to expand up and down river. Life is good, eh?";
		else:
			say "     Managing to hold out until the military come, you are extracted with the others sane enough to be potentially saved. While your time in the processing facility is tedious and boring, you keep a happy disposition and are always polite to both the staff and the others there. When tempers flare, you do your best to mediate and calm people down before things get out of hand. It doesn't always work, but at least you try. Because of all this, you end up rather well liked by most everyone and you're processed through a little faster by those who get to know you and feel that you must still be safe and sane, since you're such a nice, helpful guy.";
			say "     Once out, you have a little trouble fitting into society as it tries to cope with this changing world. Oh, the transformation and the sex and everything you can cope with. It's stranger, little things that just seem off. You find the weather reports confusing, driving always has you going too slow and beer just doesn't taste good any more. You try to settle down, but you just don't feel comfortable until you take a job posting from Zephyr up north. Crossing the border, you settle into a semi-civilized community a little into the extensive nanite zone over most of the Great Lakes and things start all making sense again. Better food, better beer, cheap coffee, tastier donuts, the metric system and much more. Feeling you've ended up where you belong, you become one of Zephyr's few operatives in Canada, doing your best to report back to them on the activity north of the border. This mainly deals with trying to catalog the unique blend of infections native to the Great Lakes Bubble and keeping them abreast of the political climate as the civil war there begins to escalate.";
			if Player is male and ( anallevel is 3 or Player is mpreg_ok ):
				say "     You end up hooking up with an energetic Pride Bunny while in downtown Toronto and, after several months of visits when your work takes you into that area, you manage to convince him to move out of the city and into your place. You have a lot of fun living with the sexy guy, his boundless energy makes for lots of great sex and you know he'll have plenty of fun boinking or bending over for the male neighbors while you're away[if Player is mpreg_ok]. You end up having a few mixed litters of bunnies and beaver kits with him as well[end if].";
			else if Player is herm:
				say "     You end up hooking up with a slender herm Sun Spot, a yellow-spotted Dalmatian who loves the sunshine, and move in together. She ends up joining you in your work, using her sunny powers to dazzle ferals when things start to get out of hand. Her sunny disposition also helps keep your spirits up on long missions and when celebrating after getting home. She has a few pups of her own [if Player is impreg_ok]and you some beaver kits [end if]over the course of your happy relationship together.";
			else if Player is male:
				say "     You end up hooking up with a cute Goth Squirrel, a black squirrel with goth sensibilities. She may seem depressed and a downer at first, you quickly learn that it's her wry wit and odd way of keeping the world in perspective. And while she does insist on decorating your home in a lot of black and fill it with candles and incense, she's also dynamite in the sack. When every day's the end of the world, why not fuck like it's the end of the world, too? She has a bunch of squirrel and beaver kits with you. And while many of them inherit their mother's quirky sense of humor, it's still happy home.";
			else if Player is female:
				say "     You end up hooking up with a plump Beaver Beaver, a lesbian beaver strain. And while you're not quite the same strain as her and do lust for some meat in your diet, the things that she can do to please you, as well as just how well your personalities mesh, make you fall head over heels for her, much to the dismay of your male suitors. Being understanding, she does not begrudge you having some fun with a few guys she also trusts, but you don't take her up on the offer often. Your pudgy honey's more than enough to keep you happy and fulfilled except on the longest of missions away from her.";


Beaver ends here.
