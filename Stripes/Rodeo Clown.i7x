Version 1 of Rodeo Clown by Stripes begins here.

"Adds Rodeo Clown creature to Flexible Survival."

Section 1 - Creature Responses

to say rodeoclowndesc:
	say "     Coming towards you is a very strange-looking person. With a face covered in greasepaint and brightly colored clothes and a stetson, they look at first glance like a rodeo clown. But things just don't quite seem right. Details quickly pile up to make it clear that they're not a regular rodeo clown bullfighter. The most obvious is the large, F-cup breasts and the smaller, but still noticeable bulge in the crotch of the dusty, baggy overalls. There's also the way she walks with arms and legs that flex and bend in arches rather than at a fixed joint. Her face, you can see when she draws closer to you, is not actually painted with make-up, but naturally has a clown's colorful markings to make it brighter and her exposed skin is a little too pink and smooth to quite be normal. Her clothes as well, it seems, are not really clothes at all, but somehow also a part of her.";
	say "     When she notice you, she start running towards you, waving her flexible arms in the air, whooping and hollering to get your attention, almost annoyingly so. 'Woo! Woo! Here Bossy! Here Bossy! Come git me!' she calls out, taunting you to charge at her like a bull. While mostly an annoyance, she's making far too much noise, so you'd best deal with her before anything else notices the ruckus.";

to say losetorodeoclown:
	if HP of Player > 0:		[SUBMIT]
		say "     Unwilling to keep fighting against the quick-moving clown, you give in and drop to your knees. The rodeo clown grins even more broadly and rushes over to you. 'That's a good [if Player is male]steer[else]cow[end if]! No more fighting for you,' she says soothingly as she kneels down in front of you. Rubbing your head, she guides your mouth to her ample bosom. With the colorful shirt open, you can see the large nipples on her huge breasts and lick your lips at the sight of them. 'Go on now, drink up! You had a rough ride, but it's all over now,' the rodeo clown says softly as you start nursing, drinking down her milk. It is quite delicious and soothing, though it does little to quell your thirst.";
		PlayerDrink 6;
		increase Libido of Player by 6;
		if Libido of Player > 100, now Libido of Player is 100;
		say "     With your drink in you, you feel rather muddleheaded and horny, submitting to the strange creature as she runs her hands over you, sliding off your clothes and pack. ";
		if (player is puremale) or (Player is herm and a random chance of 1 in 2 succeeds):
			say "She runs her hand down to your hard cock and takes a hold of it, guiding you further into her arms with the other. Glancing down, you can see that under her above average cock is a huge pussy, wide, wet and waiting. With one hand on your cock and the other pulling at your ass, she gets you into position and takes your penis into her with one easy thrust.";
			say "     You moan and rock your hips, having trouble focusing your milk-addled mind on anything more than thrusting into that smooth, slick hole. Her pussy, clearly wide enough to take in even the largest steer to calm it, somehow still manages to grip your shaft nicely[if Cock Length of Player > 18 or Ball Size of Player > 4]. Even your huge meat is able to fully fit in her, simply stretching out her cartoony, rubbery body, to her great delight[end if]. Being so very horny despite your calmness, you fuck her at hard, like a wild bull or angry bronco, much to her delight. She is moaning and pushing into your thrusts with yells of 'Yee-haw!' and 'Ride [']em, cowboy!' as she waves her stetson in the air and slaps your backside with it. When you finally cum, you drive your cock fully into her and unleash your hot seed[if Ball Size of Player > 4]. Your huge balls pump their supply of semen into her, bloating her tummy delightfully full and plump[end if]. When your hips finally come to rest with your balls empty, you drift further into your milky haze and pass out as you see the pleased rodeo clown walking off, stroking her cum-filled tummy.";
		else:
			say "She runs her hand down between your legs and teases your pussy, guiding you into her lap with the other. Glancing down, you can see that above her greatly oversized pussy is a throbbing hard cock, a sizable eight inches of smooth, pink meat. With one hand spreading your pussy open and the other pulling at your ass, she gets you into position atop her hard cock and guides you down onto it.";
			say "     You moan and wriggle your hips, having trouble focusing your milk-addled mind on anything more than riding on that smooth, hard pole. Her cock, a little bigger than that of an average man[if Cunt Depth of Player < 6], sinks fully into you after a few thrusts to stretch you out[else], goes in quite easily, taking you in one smooth thrust that fills you with pleasure[end if]. Being so very horny despite your calmness, you ride her hard and fast, and she bucks you hard in her lap as well. She is moaning and driving up into you with yells of 'Yee-haw!' and 'Ride [']em, cowboy!' as she waves her stetson in the air and slaps your backside with it. When you finally cum, you soak her crotch in your juices and she pushes into you one last time before unleashing her hot cum into you[if Cunt Depth of Player < 6]. With her cock stuffed fully inside your small pussy, she's pumping her cum directly into your womb[end if]. When your hips finally come to rest with you well-seeded, you drift further into your milky haze and pass out as you see the pleased rodeo clown walking off with a bow-legged swagger.[impregchance]";
	else:				[LOST]
		say "     Exhausted by the rodeo clown's frantic and tiring assault, you drop to your knees before her. She looks you over and shakes her head. 'Now, ah must say, you've been right disappointin[']. Ah were hopin['] for more of a wild bull and instead ah gots me a ropin['] calf. Oh well, iffin you can't be a steer, ah guess ah'll just have tah play the bull this time.' With that, she pushes you to the ground and tosses off your clothes and pack, pulling out her above average cock and stroking its smoothly pink flesh.";
		if Player is female:
			say "     Too weak to resist further and somehow starting to long for it, you are pushed onto all fours and she climbs atop you, driving her hard cock into your cunt, making you moan. She grips your shoulders firmly and pounds into you good and hard, making you moan again and again at the pounding you're getting. Pulling her cowboy hat off, she waves it in the air with yells of 'Woo-doggy!' and 'Ride [']em hard!' Your pussy quivers around her cock, cumming several times before she finally drives deep inside you and unleashes her hot load, painting your inner walls and womb with her cum. Finished, she pulls out of you and you collapse onto your side, thoroughly worn out after the fight and the victory ride afterwards. As you're passing you, you see the pleased rodeo clown walking off with a bow-legged swagger.[impregchance]";
		else:
			say "     Too weak to resist further and somehow starting to long for it, you are pushed onto all fours and she climbs atop you, driving her hard cock into your ass, making you moan. She grips your shoulders firmly and pounds into you good and hard, making you moan again and again at the pounding you're getting. Pulling her cowboy hat off, she waves it in the air with yells of 'Woo-doggy!' and 'Ride [']em hard!' Your anus squeezes and clenches around her cock as you cum a few times before she finally drives deep inside you and unleashes her hot load, painting your bowels with her cum. Finished, she pulls out of you and you collapse onto your side, thoroughly worn out after the fight and the victory ride afterwards. As you're passing you, you see the pleased rodeo clown walking off with a bow-legged swagger.[impregchance]";

to say beattherodeoclown:
	if Player is male:
		say "     Having beaten the strange person, she moans and drops to the ground, making a show of having lost. 'Oh no! The wild bull will gore me now with its horn! Mah poor, vulnerable body!' Her clothes become undone in her squirming, exposing her large breasts, above average and fully hard cock and her very large and dripping pussy. She fingers the last almost eagerly as if trying to entice you to take advantage of her after beating her. It's almost as if she wanted to lose.";
		if Libido of Player > 25:
			say "     Feeling rather horny at this wanton display from a (mostly) human creature, you find yourself compelled to sate your lusts upon her body as she so clearly desires. Pushing her down, she giggles a little and moans about her terrible fate. Getting into it, you pin her down, mostly for show, and drive your hard cock fully into her in one hard thrust. Her wide, ample pussy, able take the biggest and wildest of bulls to satisfy them, spreads easily for you[if Cock Length of Player > 18 or Ball Size of Player > 4]. Your huge cock stuffs her nice and full, stretching her flexible flesh around it and being so full only seems to make her more excited and horny[end if]. You bang away at her hard and fast as her stretchy cunt grips around your penis, squeezing around it as she moans at each thrust. As you fuck her, she wriggles under you, telling you to 'Fuck me hard, you big bull' and 'Mmm... mah wild steer!'";
			say "     Your hands move from her shoulders to her tits, stroking and teasing her large nipples. You play with them lightly at first, but after she squeezes her hands over yours, you play roughly with breasts, squeezing them hard and pinching her nipples firmly. The rough treatment excites her all the more and soon milk's squirting from her nipples as if you were milking a cow. As streams of her milk sprays onto you both, her cock throbs and starts spurting its thicker, white fluid across her body. The sight of all this, after the hard pounding you've been giving her wet pussy pushes you over the edge and you unleash your hot cum into her a few thrusts later with a groan of ecstasy[if Ball Size of Player > 4]. Your oversized balls pump their hot load into her, bloating her tummy delightfully full and plump with your semen[end if]. When you finally come down from your powerful orgasm, you release her and get up, leaving the exhausted herm in a messy puddle of fluids.";
		else:
			say "     Tired from the conflict and only mildly aroused by her display, you manage to turn away and head off, leaving the frustrated herm behind. Perhaps she'll have better luck with the next creature she finds.";
			increase Libido of Player by a random number between 3 and 8;
			if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
			if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 3;
			if Libido of Player > 100, now Libido of Player is 100;
	else:
		say "     Having beaten the strange person, she moans and drops to the ground, making a show of having lost. 'Oh no! The wild beast will ravage me! Mah poor, vulnerable body!' Her clothes become undone in her squirming, exposing her large breasts, above average and fully hard cock and her very large and dripping pussy. She fingers her genitals almost eagerly as if trying to entice you to take advantage of her after beating her. It's almost as if she wanted to lose.";
		if Libido of Player > 33:
			say "     Feeling rather horny at this wanton display from a (mostly) human creature, you find yourself compelled to sate your lusts upon her body as she so clearly desires. Pushing her down, she giggles a little and moans about her terrible fate. Getting into it, you pin her down at one shoulder, mostly for show, and grab her throbbing cock. Her penis is made of smooth, pink flesh and is about eight inches long, leaking slick precum steadily as you start to have your way with her. As you pump at her cock, she rocks her hips and thrusts into your gripping fist. You slide your other hand down her body to her oversized pussy, fingering those plump, juicy lips. You slide a few fingers into it and find it quite large and roomy. You slide another finger into her, then another, then the whole of your fist into her wet, gaping hole. She moans stuff like 'Oh, mah wild beast!' and 'Take me like your slutty cow!' all the louder at this, cock throbbing in your hand and wide cunt quivering around you.";
			say "     With both hands busy on her mixed genitals, she brings her hands to her large breasts as starts kneading and squeezing them roughly. She pinches at her large nipples and the rough treatment soon has her milk squirting from her nipples as if milking a cow's teats. As streams of her milk sprays onto you both, her cock throbs in your hand and starts spurting its thicker, white fluid across her body. Her pussy clamps down firmly around your arm as she cums and the sight of all this has you cum as well, soaking your thighs in your female juices. When you finally come down from your powerful orgasm, you pull your arm from her with a wet, squelching noise and get up, leaving the exhausted herm in a messy puddle of fluids.";
		else:
			say "     Tired from the conflict and only mildly aroused by her display, you manage to turn away and head off, leaving the frustrated herm behind. Perhaps she'll have better luck with the next creature she finds.";
			increase Libido of Player by a random number between 2 and 6;
			if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
			if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 2;
			if Libido of Player > 100, now Libido of Player is 100;

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Rodeo Clown"	"[PrepCombat_Rodeo Clown]"

to say PrepCombat_Rodeo Clown:
	setmongender 5; [creature is herm]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Rodeo Clown" to infections of BodyHorrorList;
	add "Rodeo Clown" to infections of HumorousList;
	add "Rodeo Clown" to infections of HermList;
	add "Rodeo Clown" to infections of BipedalList;
	now Name entry is "Rodeo Clown";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Rodeo Clown jumps and dodges around, tiring you out as you chase it![or]The bull taunter leaps over your shoulder and shoves you into a nearby wall as you make a grab at it![or]The Rodeo Clown waves a prop red cape at you, then tosses it over your head. Unable to see for a moment, you get hit with a few light punches![or]The weaving and dodging clown leaps onto your back spanks your ass while riding you like a bucking bronco![or]The cavorting clown calls out 'Here bully-bully-bull!' while juggling its large tits alluringly at you![or]The floppy-limbed fool weaves and rolls about, taking slaps at you as it does![at random]";
	now defeated entry is "[beattherodeoclown]";
	now victory entry is "[losetorodeoclown]";
	now desc entry is "[rodeoclowndesc]";
	now face entry is "mostly human in shape, though a little off in appearance. Your eyes are too round, your smile too fixed and broad. You have long, brown hair that is neatly kept in a ponytail";
	now body entry is "human enough at first glance, with normal proportions. Closer scrutiny shows that it is not quite right, though. Your limbs don't quite bend right, acting a little floppy as if there is no fixed joint but can instead bend with a flexible rod. Your body seems a little rubbery as well, bending and warping to pressure in an unnatural manner";
	now skin entry is "loose, colorful clothes over unusually smooth and evenly pink flesh. Markings like those from clown greasepaint are drawn over our face, but are permanent and not paint at all. Your clothes, while able to be opened and even pulled off, are somehow also part of your";
	now tail entry is "Your ass is round and padded against hard blows or hard fucking.";
	now cock entry is "[one of]smoothly pink[or]evenly pink[or]almost human[or]smooth[at random]";
	now face change entry is "your head reshapes itself into something almost human. A broad smile forms on your lips and your hair becomes long and brown, held in a ponytail";
	now body change entry is "it thankfully becomes human in shape. But closer scrutiny shows that it is not quite right in how it all moves";
	now skin change entry is "you gain smooth, pink skin. There is a coolness over your face, spreading across your lips and around your eyes as permanent rodeo clown marking are added. Strange tingles spread across your unusually smooth, pink flesh as a layer of loose, colorful clothing grows to cover your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes shrinks and becomes a tight little rump, then swells almost cartoonishly into a plump and padded rear end";
	now cock change entry is "reforms into the shape of a human penis. It is very smooth and evenly pink, in a tone that's almost right, but a little too bright for normal flesh";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 6;
	now cha entry is 12;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Fair"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 24; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 12; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "rodeo clown milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]rubbery[or]flexible[at random]";
	now type entry is "human-like"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Rodeo Clown Infection"	"Infection"	""	Rodeo Clown Infection rule	1000	false

This is the Rodeo Clown Infection rule:
	if Player has a body of "Rodeo Clown":
		trigger ending "Rodeo Clown Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As if having taken one too many blows to the head, your mind falls apart in a haze and you pass out. After dreams of rodeos, bulls and bucking broncos (which you are under as often as you are riding them), you awaken lost in your new instincts. You travel across the city, taunting the much stronger creatures to attack you, your sturdy, flexible body able to take the punishment of their blows with a chuckle until it is all too much and you collapse to let them have their way with you. You take particular delight in drawing the attention of powerful beasts away from much weaker prey and letting yourself bear the brunt of their lusts instead. You spend quite a bit of time in the park, taunting those well-hung bulls and big-teated cows and nearly as much time at the growing stables of the equine creatures. The latter always try to keep you there, but you always manage to squirm out once you're satisfied and bored of horseflesh.";
			say "     The soldiers, when they come, aren't as much fun and won't play with you when you tire of dodging their bullets or letting them bounce off of you. So you take to rounding up stragglers instead, lassoing and roping them like a calf or jumping them and riding them like a bucking bronco before you have your way with them. With a few more rodeo clowns on your team, you are able to put on better shows and take turns taunting your prey before giving in or riding them when they tire out.";
		else:
			say "     After being freed from the infected city by the military, you try a couple of mundane jobs, but they just don't hold the excitement you crave. Feeling the need to do something more daring, you ";
			let T be a random number between 1 and 3;
			if T is 1:
				say "join up with a movie company as a stunt man. While you need some make-up and costume work to act as a stunt double, there are a few infected actors you can double for fairly well. You get most of your work from stunt driving and from playing the thug who gets thrown across the room in action scenes. A couple of the people you work with get pretty good at disguising you so you're not always the same, though you do get some fans who watch for your scenes. With your malleable body able to take the blows and cartwheel around in a room or from a wreck without serious injury, you are always able to make the hits you take seem all the more powerful, making for a far better show.";
			if T is 2:
				say "join up with a small rodeo, seeming almost a natural choice. You work hard to become a good rodeo clown, helping the thrown riders get to safety and making a fun show for the audience. And if you get hit... well, you can take it. Your body is quite resilient and flexible, able to take the rough blows from the angry bulls. The announcer is always there on hand to tell the folks in the audience that you're especially tough and can take it when you're hit. You get such big cheers from the crowd after you get back up after a big slam or stomping and head right back to your post, ready for more. And the show's just not the same if you don't get to take at least one good hit.";
			if T is 3:
				say "start doing motorcycle stunts. You start with simple jumps for local events. But when you get better at it, you push it further and further. With your durable body, you have little fear aside from possible burns, and even those you seem to grow more resistant to over time. You push your daredevil stunts further and further, going for elaborate jumps and big spectacles to keep the fans coming back. You do well at this and are always considerate to play up your crashes a little, giving those watching the right balance of sympathy and hope for your recovery from such a devastating crash that... 'oh, will you ever ride again?' feeling. And then, after a nice, long recovery with some sexy nurses, you're back again for your triumphant comeback.";
			say "     Aside from flings with many of your adoring fans, you find yourself becoming rather attached to a big, strong [if Player is female]bull man[else]cow woman[end if]. There's just something special about [if Player is female]him[else]her[end if] that just satisfies you like no other. You spend much of your time [if T is 1]between films[else if T is 2]in the off season[else]between tours[end if] with your bovine lover. When you finally get hitched, [if Player is female]he[else]she[end if] moves into your ranch house, keeping occupied with your small herd of cattle and a collection of lovers of [if Player is female]his[else]her[end if] own while you're away. And you're always welcoming you back with a powerful hug on your return.";

Rodeo Clown ends here.
