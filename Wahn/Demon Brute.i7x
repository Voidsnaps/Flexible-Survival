Version 7 of Demon Brute by Wahn begins here.
[Expansion & Rewriting by Wahn]
[Version 7 - Introducing Evil Demon Brute path - Gherod]
[- Originally Authored By: Leo X -]
[Todo: Endings]

"Adds a Monster name to Flexible Survival's Wandering Monsters table, with impreg chance"

DBCaptureQuestVar is a number that varies. DBCaptureQuestVar is usually 0.
DemonBruteStatus is a number that varies. DemonBruteStatus is usually 0.

[ DBCaptureQuestVar - Capture a demon brute             ]
[  0: never fought against one                          ]
[  1: won once                                          ]
[  2: won twice or more                                 ]
[  3: talked to Nermine                                 ]
[  4: during the ritual fight                           ]
[  5: ritual done, demon controlled                     ]
[  6: cleansed from his evil                            ]
[  7: sworn to service to the player                    ]
[ 99: ritual failed                                     ]

[ DemonBruteStatus - Gender switching                   ]
[  0: just a normal demon brute                         ]
[  1: herm demon brute                                  ]
[  2: female demon brute                                ]

[ Lore Note:                                                       ]
[ Children: Brutus saw any child he fathered in hell quickly die,  ]
[      at which point they were reborn in limbo - where demons can ]
[      not go (never had a relationship with a child, not that he  ]
[      would have been nice, as a standard demon brute)            ]

Section 1 - Fighting and Capturing the Brute

to say demonbrutedesc:
	if DBCaptureQuestVar is 5:
		say "The large demon stretches its body, ropes of muscles rippling under dark purple skin and the spade-tipped tail whipping through the air. Then it turns its head towards you, red eyes glowing with hatred. With a roar, it rushes forward with outstretched claws.";
	else:
		say "You see a massive beast ahead, with dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. His entire body is gigantic and muscle-bound, and between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his tailbone, which is constantly flicking back and forth. He wears nothing but a grin.";

a postimport rule: [bugfixing rules for players that import savegames]
	if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7: [cleansed]
		now the icon of demon brute is Figure of BrutusGood_icon;

to say demon brute wins:
	if DBCaptureQuestVar is 4: [as part of the Brutus quest]
		say "[DemonBruteVictoryFuck]";
	else if a random chance of 3 in 6 succeeds: [50% chance]
		say "[DemonBruteVictoryFuck]";
	else if a random chance of 1 in 2 succeeds: [25% chance overall]
		say "[DemonBruteFaceFuck]";
	else: [25% chance overall]
		say "[DemonBruteCumBathScene]";

to say DemonBruteVictoryFuck:
	if Player is female: [female + herm]
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!'";
		else:
			say "     The great purple brute stares down at your vulnerable form, grinning maliciously. 'I look forward to breaking in that cunt of yours. I hope it's tight.' Licking his lips, he crouches over your helpless form and, using a large clawed hand, fondles your tender thighs.";
		WaitLineBreak;
		say "     After a painful slap to your rear, he tears away your clothes and roughly manhandles you pliable backside with dangerously sharp nails, scraping the skin just enough to leave long red claw-marks on your ass and lower back. His hands and body emanate with a demonic heat, and the scratches burn with an intense warmth that sets a fire in your own loins.";
		if "Dominant" is listed in feats of Player:
			say "     What infernal power could cause your own powerful body to react so strongly to this forceful being? You struggle against the abyssal monster, attempting to free yourself from his demonic lust.";
			WaitLineBreak;
			let bonus be (( Strength of Player minus 20 ) divided by 2);
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 30 and score [dice plus bonus]:[line break]";
			if dice + bonus >= 30:
				WaitLineBreak;
				say "     Luckily, you manage to deliver a forceful kick to that leering cocky face grinning above you. The demon brute reels back in agony as you bolt, and the abyssal fiend roars threats of eternal hellfire and torment at your rapidly retreating form.";
				stop the action;
		else if Player is submissive:
			say "     Moaning at the burning sensations spreading through your body and down to your loins, you begin to shake and writhe with an unearthly desire to be taken by the terrible beast molesting your pliable rear.";
		say "     Slapping your shaking ass with a powerful whack, the brutish creature rubs his semi-erect purple member over your dripping cunt, bringing it to full stiffness. The thing is massive, and incredibly thick. You can see thick nubs surround the base of the cock-head, and three or four more rings run down the length of his terrifying purple fuck stick. The grinning brute drags his leaking destroyer down the length of your slit, and his pre seems to burn a red-hot tingle of lust at every point it touches, or is it just your brain compensating for the sheer heat of his liquid desire?";
		WaitLineBreak;
		say "     The towering demon rubs his throbbing purple cock-head along your pink slit, and without a care for whether or not you're ready, he thrusts forcefully inside your body. The nubs pull at your unprepared vaginal opening and your mouth gapes open as your nether lips are stretched wide around his inhuman member. Laughing at your obvious discomfort, he seems to drink it in as you cry out in both pain and ecstasy. 'I should take you back to the pit with me. Show your pitiful mortal body what it means to be fucked till you're raw!' You whimper once more as the demon slowly pulls his titanic phallus from your gaping tunnel, feeling every nub and vein as it tugs along your sensitive walls.";
		say "     Your eyes begin to tear up, and you bite your lip to keep from crying out as you feel his hot pre filling you up inside. Though grateful for the lubrication this adds, you feel as if the fire inside you is a sign of the demon's own building desire to wreck your already abused hole. The brute bends low over your form and growls into your ear, 'Let's see how long you last before breaking.' With another lustful roar, the unholy brute batters his way balls deep into your depths, and with ungodly fervor, begins to fuck your writhing form deep and hard.";
		WaitLineBreak;
		say "     Your mouth gapes open and you're too breathless to even whimper as you are used as a living fuck-doll by the monster bending over you. Your entire being has become focused on the pillar of demon-flesh that has made your pussy its home. It is as if some invading force is staking its claim on your innermost being, and will do so by any force necessary. Every moment being impaled by him seems to stretch out endlessly in its confusing mixture of pain and pleasure. After what feels like an hour of abuse, your cunt is finally stretched wide enough to allow free movement of the invading prick. Your wrecked hole squelches with the hot demon pre that he's constantly been leaking into you, and every powerful thrust churns your insides as he pounds forward faster and faster. The bumps on his cock provide constant stimulation to your insides, scraping along your g-spot in the most agonizingly pleasurable of ways.";
		say "     The worst thing about this demonic rape is that you can't help but actually let out grunts of pleasure with every powerful thrust - something that amuses the purple fiend to no end as he grins down at you. 'Get ready to feel what you were made for!' he bellows, throwing back his head for an evil laugh. Then the demon leers down at your impotent form and, with a grunt of pleasure and a vicious thrust, he buries himself deep. He roars as his balls push forth a torrent of hot demon seed inside you. The sensation of being filled by this monster is just too much and you begin to cum as well, your abused vaginal tunnel twitching tightly around the pillar inside you[if Player is herm], while your cock jumps and squirts its own seed all over the ground[end if]. He begins to thrust and pump his hips once more, the flow of boiling demon lust not abating one bit as he drives his cock in and out of your destroyed snatch. He pumps your pussy full of his fierce seed and it pours into your womb in a deluge of hot liquid. There is so much cum that it begins to bloat your lower abdomen, before the pressure forces it to spurt out around the invading demonic prick. Every thrust pushes a fresh gout of cum into your expanding belly and causes a fresh gush of hot seed to squirt out around the base of his cock.";
		WaitLineBreak;
		say "     Panting and grinning over you, the demon holds his cock in place inside your pussy. It feels as if he has lodged his cockhead into your painfully stretched cervix, creating a seal so none of his cum can escape your bloated womb - even as more pulses into you. Just as you begin to think he might continue till you burst, a terrible shudder goes through your limp body and the pressure lessens - as if his hot cum is being suffused throughout your being, making you absorb the demonic corruption.";
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand, your pussy still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
			trigger ending "DBrute Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";
		else:
			say "     When he finally pulls his softening cock from you, your gaping, wrecked vagina lets loose a river of hot demon jizz from your insides. Laughing at your broken mortal form, he leaves you to wallow in the pool of steaming demon cum still pouring from your gaping slit. As he disappears into thin air, you still find yourself shuddering as waves of tiny orgasms continue to wrack your twitching cunny. As you stand shakily to gather your belongings and what little dignity you have left, you wonder if you should be concerned by how much you enjoyed being taken by that terrible brute.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Demon Brute";
	else if Player is male: [male]
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!' ";
		else:
			say "     The great purple brute stares down at your vulnerable form, grinning maliciously. 'I'd prefer to fuck a nice hot cunt, but there are ways to make use of you no matter what.' Licking his lips, he crouches over your helpless form and, using a large clawed hand, fondles your tender rump. ";
		say "After a painful slap to your rear, he tears away your clothes and roughly manhandles you pliable backside with dangerously sharp nails, scraping the skin just enough to leave long red claw-marks on your ass and lower back. His hands and body emanate with a demonic heat, and the scratches burn with an intense warmth that sets a fire in your own loins. ";
		if "Dominant" is listed in feats of Player:
			say "What infernal power could cause your own powerful body to react so strongly to this forceful being? You struggle against the abyssal monster, attempting to free yourself from his demonic lust.";
			WaitLineBreak;
			let bonus be (( Strength of Player minus 20 ) divided by 2);
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 30 and score [dice plus bonus]:[line break]";
			if dice + bonus >= 30:
				WaitLineBreak;
				say "     Luckily, you manage to deliver a forceful kick to that leering cocky face grinning above you. The demon brute reels back in agony as you bolt, and the abyssal fiend roars threats of eternal hellfire and torment at your rapidly retreating form.";
				stop the action;
			else:
				say "     Alas, you're unable to throw off the demon, and he makes use of the opportunity to dominate you! ";
		else if Player is submissive:
			say "Moaning at the burning sensations spreading through your body and down to your loins, you begin shaking and writhing with an unearthly desire to taken by the terrible beast molesting your pliable rear. ";
		say "Slapping your shaking ass with a powerful whack, the brutish creature rubs his semi-erect purple member over your backside, bringing it to full stiffness. The thing is massive, and incredibly thick. You can see thick nubs surround the base of the cock-head, and three or four more rings run down the length of his terrifying purple fuck stick. The grinning brute drags his leaking destroyer down the length of your crack. His pre seems to burn a red-hot tingle of lust at every point it touches, or is it just your brain compensating for the sheer heat of his liquid desire?";
		WaitLineBreak;
		say "     The abyssal creature lines his throbbing purple cock-head up with your winking pucker, and without a care for whether or not you're ready, he thrusts forcefully inside your body. The nubs pull at your unprepared anal opening and your mouth gapes open as your ring stretches around his inhuman member. The beast laughs at your obvious discomfort as you cry out in both pain and ecstasy. 'I should take you back to the pit with me. Show your pitiful mortal body what it means to be fucked till you're raw!' You whimper once more as the demon slowly pulls his titanic phallus from your gaping tunnel, feeling every nub and vein as it tugs along your sensitive walls.";
		say "     Your eyes begin to tear up, and you bite your lip to keep from crying out as you feel his hot pre filling you up inside. Though grateful for the lubrication this adds, you feel as if the fire inside you is a sign of the demon's own building desire to wreck your already abused hole. The brute bends low over your form and growls into your ear, 'Let's see how long you last before breaking.' With another lustful roar, the unholy brute batters his way balls deep into your depths, and with ungodly fervor, begins to fuck your writhing form deep and hard.";
		WaitLineBreak;
		say "     Your mouth gapes open and you're too breathless to even whimper as you are used as a living fuck-doll by the monster bending over you. Your entire being has become focused on the pillar of demon-flesh that has made your asshole its home. It is as if some invading force is staking its claim on your innermost being, and will do so by any force necessary. Every moment of being taken by him seems to stretch out endlessly in its confusing mixture of pain and pleasure. After what feels like an hour of anal abuse, your colon is finally stretched wide enough to allow free movement of the invader. Your wrecked hole squelches with the hot demon pre that he has been leaking constantly into you - every powerful thrust churns your insides as he pounds forward faster and faster. The bumps on his cock provide constant stimulation to your insides, scraping along your prostate in the most agonizingly pleasurable of ways.";
		say "     The worst thing about this demonic rape is that you can't help but actually let out grunts of pleasure with every powerful thrust - something that amuses the purple fiend to no end as he grins down at you. 'Get ready to feel what you were made for!' he bellows, throwing back his head for an evil laugh. Then the demon leers down at your impotent form and, with a grunt of pleasure and a vicious thrust, he buries himself deep. He roars as his balls push forth a torrent of hot demon seed inside you. The sensation of being filled by this monster is just too much and you begin to cum as well, your abused anal sphincter twitching tightly around the pillar inside you as your cock empties itself onto the ground beneath you. He begins to thrust and pump his hips once more, the flow of boiling demon lust not abating one bit as he drives his cock in and out of your destroyed asshole. He pumps your bowels so full of his fierce seed that it easily fills your colon and gushes into your stomach. There is so much cum it continues up your throat, spilling out in massive quantities from your panting mouth. Each thrust pushes a fresh gout of cum into your expanding belly and out of your cum-drooling mouth.";
		WaitLineBreak;
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand, your asshole still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
			trigger ending "DBrute Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";
		else:
			say "     Panting and grinning over you, he holds his cock in place inside your ass, creating a seal so none of his cum can escape your distended anus. You groan at the sensation of the hot cum being suffused throughout your limp body, absorbing the demonic corruption. When he finally pulls his softening cock from you, your distended stomach still lets loose a river of hot demon jizz from your ass. Laughing at your broken mortal form, he leaves you to wallow in the pool of steaming demon cum still pouring from your ass. As he disappears into thin air, you still find yourself coughing up globules of his seed. As you stand to gather your belongings and what little dignity you have left, you wonder if you should be concerned by how much you enjoyed being taken by that terrible brute.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Demon Brute";
	else: [neuter]
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!' ";
		else:
			say "     The great purple brute stares down at your vulnerable form, grinning maliciously. 'I'd prefer to fuck a nice hot cunt, but there are ways to make use of you no matter what.' Licking his lips, he crouches over your helpless form and, using a large clawed hand, fondles your tender rump. ";
		say "After a painful slap to your rear, he tears away your clothes and roughly manhandles you pliable backside with dangerously sharp nails, scraping the skin just enough to leave long red claw-marks on your ass and lower back. His hands and body emanate with a demonic heat, and the scratches burn with an intense warmth that sets a fire in your own loins. ";
		if "Dominant" is listed in feats of Player:
			say "What infernal power could cause your own powerful body to react so strongly to this forceful being? You struggle against the abyssal monster, attempting to free yourself from his demonic lust. ";
			WaitLineBreak;
			let bonus be (( Strength of Player minus 20 ) divided by 2);
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 30 and score [dice plus bonus]:[line break]";
			if dice + bonus >= 30:
				WaitLineBreak;
				say "     Luckily, you manage to deliver a forceful kick to that leering cocky face grinning above you. The demon brute reels back in agony as you bolt, and the abyssal fiend roars threats of eternal hellfire and torment at your rapidly retreating form.";
				stop the action;
			else:
				say "     Alas, you're unable to throw off the demon, and he makes use of the opportunity to dominate you! ";
		else if Player is submissive:
			say "Moaning at the burning sensations spreading through your body and down to your loins, you begin shaking and writhing with an unearthly desire to taken by the terrible beast molesting your pliable rear. ";
		say "Slapping your shaking ass with a powerful whack, the brutish creature rubs his semi-erect purple member over your backside, bringing it to full stiffness. The thing is massive, and incredibly thick. You can see thick nubs surround the base of the cock-head, and three or four more rings run down the length of his terrifying purple fuck stick. The grinning brute drags his leaking destroyer down the length of your crack. His pre seems to burn a red-hot tingle of lust at every point it touches, or is it just your brain compensating for the sheer heat of his liquid desire?";
		WaitLineBreak;
		say "     The abyssal creature lines his throbbing purple cock-head up with your winking pucker, and without a care for whether or not you're ready, he thrusts forcefully inside your body. The nubs pull at your unprepared anal opening and your mouth gapes open as your ring stretches around his inhuman member. The beast laughs at your obvious discomfort as you cry out in both pain and ecstasy. 'I should take you back to the pit with me. Show your pitiful mortal body what it means to be fucked till you're raw!' You whimper once more as the demon slowly pulls his titanic phallus from your gaping tunnel, feeling every nub and vein as it tugs along your sensitive walls.";
		say "     Your eyes begin to tear up, and you bite your lip to keep from crying out as you feel his hot pre filling you up inside. Though grateful for the lubrication this adds, you feel as if the fire inside you is a sign of the demon's own building desire to wreck your already abused hole. The brute bends low over your form and growls into your ear, 'Let's see how long you last before breaking.' With another lustful roar, the unholy brute batters his way balls deep into your depths, and with ungodly fervor, begins to fuck your writhing form deep and hard.";
		WaitLineBreak;
		say "     Your mouth gapes open and you're too breathless to even whimper as you are used as a living fuck-doll by the monster bending over you. Your entire being has become focused on the pillar of demon-flesh that has made your asshole its home. It is as if some invading force is staking its claim on your innermost being, and will do so by any force necessary. Every moment of being taken by him seems to stretch out endlessly in its confusing mixture of pain and pleasure. After what feels like an hour of anal abuse, your colon is finally stretched wide enough to allow free movement of the invader. Your wrecked hole squelches with the hot demon pre that he has been leaking constantly into you - every powerful thrust churns your insides as he pounds forward faster and faster. The bumps on his cock provide constant stimulation to your insides, scraping along your sensitive walls in the most agonizingly pleasurable of ways.";
		say "     The worst thing about this demonic rape is that you can't help but actually let out grunts of pleasure with every powerful thrust - something that amuses the purple fiend to no end as he grins down at you. 'Get ready to feel what you were made for!' he bellows, throwing back his head for an evil laugh. Then the demon leers down at your impotent form and, with a grunt of pleasure and a vicious thrust, he buries himself deep. He roars as his balls push forth a torrent of hot demon seed inside you. The sensation of being filled by this monster is just too much and you begin to shudder with an intense full body orgasm as well, your abused anal sphincter twitching tightly around the pillar inside you. He begins to thrust and pump his hips once more, the flow of boiling demon lust not abating one bit as he drives his cock in and out of your destroyed asshole. He pumps your bowels so full of his fierce seed that it easily fills your colon and gushes into your stomach. There is so much cum it continues up your throat, spilling out in massive quantities from your panting mouth. Each thrust pushes a fresh gout of cum into your expanding belly and out of your cum-drooling mouth.";
		WaitLineBreak;
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand and your asshole still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
			trigger ending "DBrute Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";
		else:
			say "     Panting and grinning over you, he holds his cock in place inside your ass, creating a seal so none of his cum can escape your distended anus. You groan at the sensation of the hot cum being suffused throughout your limp body, absorbing the demonic corruption. When he finally pulls his softening cock from you, your distended stomach still lets loose a river of hot demon jizz from your ass. Laughing at your broken mortal form, he leaves you to wallow in the pool of steaming demon cum still pouring from your ass. As he disappears into thin air, you still find yourself coughing up globules of his seed. As you stand to gather your belongings and what little dignity you have left, you wonder if you should be concerned by how much you enjoyed being taken by that terrible brute.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Demon Brute";

to say DemonBruteCumBathScene:
	say "     The demon brute has bested you, and you fall to your knees in defeat. The infernal creature grins down at you and grabs you by your throat with his clawed hand. He squeezes just hard enough to show you that he could end you if he chose, and the tight constriction around your windpipe causes you to gasp for air as you look up pleadingly at the beast. Unconcerned with your suffering, the demon rips your gear and clothes off your body, throwing the items aside with little care and inspecting your naked form with a chuckle. Only when you start to see stars, and are almost ready to pass out, does he loosen his grip around your neck and aggressively shove you to the ground.";
	say "     As you lie there splayed on your back, you watch as the demon's cock springs to life with unearthly speed. Standing tall over your pitiful form, the brute laughs. 'You look a little scuffed up puny mortal. Perhaps a bath is in order!' With that he begins to stroke his massive member, and all you can do is watch helplessly as his cock twitches in his powerful grip. Precum pours from his tip and splashes down on your chest and stomach. It is hot and borders between scalding and pleasurable, like candle wax being dripped onto you.";
	WaitLineBreak;
	say "     As you lie beneath his pre-spurting purple demon rod, you are overcome with desire, perhaps as a result of his corrupted seed spilling onto you. Unable to hold back your lust, you begin to[if Player is male] stroke your own stiff cock[else if Player is female] finger your dripping cunt[else] rub your sensitive nipples[end if], using the infernal brute's hot precum as lubrication. He laughs maliciously at you, 'Weakling. So easily corrupted.' Your hands move on their own, despite feelings of shame at the lack of self-control growing inside you, and you continue to pleasure yourself. The demon brute begins to pump his monstrous cock faster, and his growls of pleasure become deeper as he approaches orgasm. 'Open wide!' he cries out.";
	if "Dominant" is listed in feats of Player:
		say "     You shut your eyes and mouth tightly, averting your face in a determined effort not to give this infernal monster the satisfaction of making you drink his foul cum. He reaches his peak and a veritable river of ejaculate spews forth from his twitching, swollen glans, spraying against the side of your head and hosing down your shuddering form. His cum is hotter than his pre, and the sensation caused by it drenching your body is actually quite pleasurable. Despite yourself, you [if Player is male]stroke your own cock faster, quickly reaching your own intense orgasm and spewing a relatively small quantity of seed when compared to the cum bath you're receiving, though it adds significantly to pool of jizz you're currently swimming in[else if Player is female]rub your gushing slit and clit faster, quickly reaching your own intense orgasm and spewing a relatively small quantity of femcum when compared to the cum bath you're receiving, though it adds significantly to pool of jizz you're currently swimming in[else]stroke and fondle your nipples faster, quickly reaching your own intense orgasm and shuddering with pleasure in the pool of demon jizz you are currently swimming in[end if].";
	else if Player is submissive:
		say "     Your eyes gawk wide at the swollen cock-head above you as you watch his urethra dilate to the size of an old quarter coin. The last thing you see as you open your mouth to eagerly accept his corrupted demon batter, is a torrent of semen as it spews forth with an incredible force into your face, turning your vision white. The demon jizz is hot and sticky, but the taste is practically ambrosia to your submissive mind, and you enthusiastically gulp down as much of his cum as you can. The sensation of being covered in hot cum and drinking his corrupted seed is too much for you and you reach an intense climax,[if Player is male] spraying a thick load of your own jizz to join the pool of semen you're practically swimming in[else if Player is female] gushing your liquid pleasure with a forceful intensity into the pool of semen you're practically swimming in[else] shaking with such intensity that you almost forget to come up for air as your limp form becomes submerged in the ever-growing pool of demon cum[end if].";
	else:
		say "     Your eyes gawk wide at the swollen cock-head above you as you watch his urethra dilate to the size of an old quarter coin. The last thing you see as before you shut your eyes tightly, is a torrent of semen as it spews forth with an incredible force at your face. You gasp in surprise, unintentionally receiving a mouthful demon cum into your mouth. The taste is salty and its heat intense, causing you to splutter and cough as you are hosed down. The jizz is hot and sticky on your prone form, and the sensation of being covered in his cum sends you over the edge as well. You [if Player is male]spray a thick load of your own liquid lust to join the pool of semen you're practically swimming in[else if Player is female]shudder and start squirting your own femcum into the pool of semen you're practically swimming in[else]shake from the intensity of the orgasm as your limp body becomes submerged in the ever-growing pool of demon cum[end if].";
	WaitLineBreak;
	say "     As you lie there panting and covered in steaming demon cum, the brute leers down at you. 'Remember that this is all you're good for.' He laughs maliciously before disappearing in a puff of smoke, back to whatever hole he crawled out of. Sticky and broken, you weakly get to your feet, attempt to wipe the excess globules of cum from your body, and continue on your journey.";

to say DemonBruteFaceFuck:
	say "     Barely able to raise your arms to defend yourself, you realize that you have been defeated. The demon brute approaches you, licking his lips as he does. 'I've been looking for another cumdump to empty myself into. You will do nicely.' Grabbing you by the shoulders, he proceeds to strip you of all your garb before forcing you to your knees in front of him. With one massive clawed hand, he forces your head to mash against his purple cock-head. 'Lick it, slave!' Hot pre has already begun to leak from his swollen glans as you run your tongue along his fiery slit. The demon's pre is hot in your mouth and the taste is salty and smoky, almost tasting charred. A grunt of lust escapes the towering fiend's mouth as he manipulates your head, rubbing your face forcefully against his musky crotch while you make a poor attempt at licking more of his rapidly stiffening prick.";
	say "     The demon growls in anticipation of your hot throat around his swollen cock, and his spaded tail whips back and forth to show his delight. By now his hot purple member is slick with your spit, and practically pouring steaming precum all over your naked body. Still holding you by your head, he grabs his twitching cock in his other hand and rubs the liquid heat from his tip over your lips before pushing his bulging dickhead into your open mouth. The demon brute's prick is really thick and difficult to take in, forcing you to stretch your lips wide around its circumference. His liquid production only increases as his pleasure does, quickly filling your mouth with sticky pre-ejaculate, and forcing you to gulp down huge mouthfuls.";
	WaitLineBreak;
	say "     Holding you steady he sneers, 'I am going to pump so full of my cum, you won't be able to taste anything else for weeks!' With that, the purple giant pushes his thick rod down your throat in one relentless shove. Though grateful for the slick loads of pre that have made his passage into your stomach easier, you still tremble at the forceful penetration, and try in vain to gasp for air. The beast lets out a sigh of relief and he holds your face against his crotch, feeling his cock resting in the deepest recesses of your throat and stomach. Then he begins to pull out almost to the tip, before hammering himself back in again and again, his balls slapping your chin with each powerful thrust of his hips.";
	say "     Despite his abusive treatment of you for his own pleasure, your [if Player is male]cock is stiff with excitement and you move your hands downwards to stroke yourself[else if Player is female]pussy drips with excitement and you move your hands downwards to finger yourself[else]body shakes with excitement and you move your hands to rub yourself[end if]. Suddenly the spaded tail whips around and snaps at your hands before you even can try to get yourself off. 'This is my party, meat!' He growls, forcing you to keep your hands to yourself. The infernal creature does not intend to stop taunting you however, as his tail moves to your rear and slowly begins to penetrate your sphincter. You groan around the demon flesh pistoning in and out of your maw as you feel his tail slip past your opening and thrust deep into your twitching anus.";
	WaitLineBreak;
	say "     The hell-fiend becomes unrelenting as he approaches his climax, thrusting his cock as hard into your throat as he can, while his tail pushes deep into your over-stimulated body, massaging every sensitive spot inside you. With one final powerful thrust, he buries his cock down your throat and unloads a massive load of hot demon cum directly into your stomach, causing your belly to rapidly swell and expand.";
	if Player is kinky:
		say "     As he holds himself there, you feel his tail shoot deeper inside your intestines before giving way to an entirely new sensation. The heat seems to be dispersing into your lower bowel. Though still bloated with cum and still feeling him pump hot hell-seed into you, you don't feel your belly expanding any more. It dawns on you that his tail-tip - somehow - has reached your stomach and created a channel into your intestines, causing the cum to flow towards your back end. Hot cum reaches your anal opening and pours out around the thick tail imbedded inside you.";
	say "     The sensation is just too much for your already-taxed body to handle, and you can only fail to hold back the powerful orgasm racking your over-stimulated form. As your body shakes with pleasure, the demon roars with laughter at your pathetic state, still injecting you with more and more of his corrupted seed. Only after the hellish creature finishes up inside you some while later does he whip his spaded tip from your abused anal opening";
	if Player is kinky:
		say ". A river of his hot cum continues to gush from your overfilled bowels, causing a number of orgasmic aftershocks to wrack your trembling pucker";
	say ".";
	WaitLineBreak;
	say "     With the demon's cock finally having stopped filling your bloated stomach, he pulls his softening purple dick from your gaping maw. He was right, all you can taste is his cum as you burp and cough up globs of his thick white load from your painfully stretched belly. The terrible brute laughs as he inspects your pathetic, bloated body. 'Not bad as a cum-dump, slave. I'll enjoy taking you again when I catch you next time!' With that he disappears into a cloud of smoke leaving you panting, coughing up hot hell-seed, and nursing your swollen gut. Despite the healing effects of the nanites, you feel that your body is not made to take such violent abuse from hellish creatures.";
	CreatureSexAftermath "Player" receives "OralCock" from "Demon Brute";
	CreatureSexAftermath "Player" receives "AssFuck" from "Demon Brute";

to say demon brute loses:
	if DBCaptureQuestVar is 0:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to vanish into a fine purple mist, and is blown away by the wind.";
		increase DBCaptureQuestVar by 1;
	else if DBCaptureQuestVar is 1:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. Not wanting to let this one get away too, you grab its muscle-bound arm with both hands - only to have the bruised demon proceed to turn into a fine purple mist right under your fingers. A deep chuckle can be heard as a sudden wind blows away the purple cloud.";
		increase DBCaptureQuestVar by 1;
	else if DBCaptureQuestVar is 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch one of these fuckers, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds:
			LineBreak;
			say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Might be useful for something, so you pick it up.";
			ItemGain demon tooth by 1;
	else if DBCaptureQuestVar is 4:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to turn into a fine purple mist - but instead of dispersing in the air as before, it swirls around as one tight mass. The cloud of mist wavers as if it's fighting against some pull, then is drawn towards the pentagram in an elongated stream. Whirling around in an ever-tightening spiral, the purple mist finally is absorbed by the now blackened demon tooth in the brazier. As the last bit of it vanishes, the fire and surrounding candles are blown out by a sudden wind, silence falling over the room only disturbed by quiet ticking sounds of the slowly cooling brazier.";
		now DBCaptureQuestVar is 5;
	else if demon brute is listed in companionList of Player:
		if a random chance of 2 in 7 succeeds:
			say "     With a rather loud thud, the demon brute collapses to the ground, defeated. Brutus lunges forward to grab it, but your demonic [if DBCaptureQuestVar is 5]slave[else]companion[end if] is moments too late - the last wisps of the purple cloud slipping through his clawed fingers. A deep chuckle can be heard as a sudden wind blows the mist away and the demon escapes.";
			if a random chance of 3 in 5 succeeds:
				say "     All that is left behind is one of the demon's fangs, knocked out during the fight. Seeing it, Brutus growls in frustration and crushes it to dust under his heel.";
		else:
			say "[Brutus_DBCapture]";
	else if DBCaptureQuestVar > 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch this one, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds:
			if DBCaptureQuestVar is 3:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. You already gave one to Nermine and she said that you won't need another, so you leave it where it is...";
			else if DBCaptureQuestVar is 5:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she doesn't have the supplies to capture another of these brutes, so you leave it where it is...";
			else if DBCaptureQuestVar is 99:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she only had the supplies for one try to capture one of these brutes, so you leave it where it is...";
	if bradfordBountyNum is 1:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

to say Brutus_DBCapture:
	say "     With a rather loud thud, the demon brute collapses to the ground, defeated. Immediately, Brutus lunges forward to grab it, your demonic [if DBCaptureQuestVar is 5]slave[else]companion[end if] diving his clawed fingers into the purple cloud it has become. With a growl, Brutus seems to grab onto something in that mist and pulls hard on seemingly nothing. This tug of war against the smoke lasts a few seconds, his eyes aflame and a rumbling growl in his chest until the demon brute is pulled back into existence.";
	if DBCaptureQuestVar is 5:
		say "     Brutus slams it to the ground and tears in with his claws. The demon growls threatening back, but ends up with bloody streaks across its chest before your enslaved pet pins it to the ground with his claws digging into its meaty shoulders";
	say "     Defeated and now captured, the demon is pinned under a panting and obviously aroused Brutus, leaving it open for your amusements. Your demonic companion turns to you, silently awaiting your [if DBCaptureQuestVar is 5]orders[else]instructions[end if], but obviously eager for this opportunity to sate its [if DBCaptureQuestVar is 5]carnal and violent lusts[else]carnal lust[end if].";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if demonbrutestatus < 2:
		choose a blank row in table of fucking options;
		now title entry is "Brutus fucks";
		now sortorder entry is 5;
		now description entry is "watch while Brutus fucks the other demon";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck it";
		now sortorder entry is 1;
		now description entry is "fuck the demon while Brutus holds it down";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now description entry is "make it suck you off";
		now sortorder entry is 6;
	[]
	if Player is male and demonbrutestatus < 2:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast";
		now sortorder entry is 2;
		now description entry is "fuck the demon while Brutus takes its mouth";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Double penetration";
		now sortorder entry is 3;
		now description entry is "have both of you to fuck the demon";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Tag team fuck";
		now sortorder entry is 4;
		now description entry is "take turns fucking the demon";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride it (vaginal)";
		now sortorder entry is 8;
		now description entry is "ride the captured demon's cock";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now description entry is "make it eat out your pussy";
		now sortorder entry is 7;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride it (anal)";
	now sortorder entry is 9;
	now description entry is "stuff your ass with the demon's cock";
	[]
	if demonbrutestatus > 0:
		choose a blank row in table of fucking options;
		now title entry is "Brutus receives vaginal";
		now sortorder entry is 10;
		now description entry is "watch while Brutus rides the other demon's cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Brutus receives anal";
	now sortorder entry is 11;
	now description entry is "watch while Brutus takes the other demon's cock up his ass";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Let it go[as][0][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber is 0:
			say "     Having proven yourself by beating the demon, you see little point in using it to sate your lusts when one of your own to use at your whim. You signal for Brutus to let it go. He grunts in disappointment and [if DBCaptureQuestVar is 5]gives it a final powerful punch, knocking it back a few feet[else]tosses the creature back a few feet[end if], growling that it can now slink back to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
			now sextablerun is 1;
		else if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let num be sortorder entry;
				now sextablerun is 1;
				if num is 1:
					say "[dbcapturesex_01]"; [fuck it]
				else if num is 2:
					say "[dbcapturesex_02]"; [spit roast]
				else if num is 3:
					say "[dbcapturesex_03]"; [DP]
				else if num is 4:
					say "[dbcapturesex_04]"; [tag team]
				else if num is 5:
					say "[dbcapturesex_05]"; [Brutus fucks]
				else if num is 6:
					say "[dbcapturesex_06]"; [bj]
				else if num is 7:
					say "[dbcapturesex_07]"; [cunn]
				else if num is 8:
					say "[dbcapturesex_08]"; [vaginal]
				else if num is 9:
					say "[dbcapturesex_09]"; [anal]
				else if num is 10:
					say "[dbcapturesex_10]"; [Brutus rides - vag]
				else if num is 11:
					say "[dbcapturesex_11]"; [Brutus rides - anal]
				wait for any key;
		else:
			say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";

to say dbcapturesex_01: [player fucks demon]
	say "     Deciding you want a go at the captured demon, you have Brutus hold it down. Pulling out your [cock size desc of Player] cock and stroking it to erection, you move to get your [Cock of Player] meat into position. The defeated demon snarls and tries slap at you with its tail, but your [if DBCaptureQuestVar is 5]demonic slave[else]demonic companion[end if] grabs at the willful appendage and yanks it up roughly[if DBCaptureQuestVar is 5] in a crushing grip[end if]. After all your frustration with the demons, you can't help but chuckle at how the tables have turned now that you have one of your own. Eager to take advantage of it, you thrust hard into your captured foe and start pounding its muscular ass.";
	say "     The demon's ass is hot and tight around your [Cock of Player] manhood, and the demon's attempts to resist only make it more so[if Cock Length of Player < 10]. The large creature's easily able to take your [cock size desc of Player] cock, but remains deliciously snug due to its struggles[else if Cock Length of Player < 20]. The large creature takes your [cock size desc of Player] cock with some difficulty, in part due to its struggles keeping it deliciously snug around you[else]. The large creature has some difficulty taking your [cock size desc of Player] cock, which is exacerbated by its struggles keeping it deliciously snug around you[end if]. You chuckle and slap its meaty rear end. It growls and makes threats, but they prove to be empty ones as Brutus [if DBCaptureQuestVar is 5]grinds its face to the floor and claws into the creature all the harder[else]keeps a tight grip on it[end if].";
	say "     You fuck that muscled ass hard and fast, knowing the big guy can take it (and has no choice but to do so). In the end, it is not long before you reach your peak and cum with a lustful cry. The demon beneath you groans and ends up cumming as well[if DBCaptureQuestVar is 5], much to Brutus's twisted delight[else]much to Brutus's amusement[end if]. Speaking of your demonic companion, [if DemonBruteStatus is 0]he grinds his throbbing erection against the pinned demon's face, splattering it with thick gobs of semen[else]he grinds his dripping pussy against the pinned demon's face, splattering it with a stream of female cum[end if]. After you've drained your [Cum Load Size of Player] load into the demon's ass, you pull your cock free and give it another slap on the rear. Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Player";

to say dbcapturesex_02: [spit roast demon with Brutus]
	say "     Deciding you want a go at the captured demon, but not wanting to deny Brutus his prize, you order Brutus to the front while you take the back. Pulling out your [cock size desc of Player] cock and stroking it to erection, you move to get your [Cock of Player] meat into position. The defeated demon snarls and tries slap at you with its tail, but your [if DBCaptureQuestVar is 5]demonic slave[else]demonic companion[end if] grabs your fallen foe's head and stuffs his bulging cock into its mouth. Forced to deal with that throbbing mouthful, it is left unguarded against your cock's intrusion into its muscular ass. After all your frustration with the demons, you can't help but chuckle at how the tables have turned now that you have one of your own.";
	say "     The demon's ass is hot and tight around your [Cock of Player] manhood, and the demon's attempts to resist only make it more so[if Cock Length of Player < 10]. The large creature's easily able to take your [cock size desc of Player] cock, but remains deliciously snug due to its struggles[else if Cock Length of Player < 20]. The large creature takes your [cock size desc of Player] cock with some difficulty, in part due to its struggles keeping it deliciously snug around you[else]. The large creature has some difficulty taking your [cock size desc of Player] cock, which is exacerbated by its struggles keeping it deliciously snug around you[end if]. You chuckle and slap its meaty rear end. It releases muffled growls around Brutus's cock, unable to spew its empty threats while the two of you spit-roast the creature[if DBCaptureQuestVar is 5]. Your demon slave takes vicious delight in pounding the brute's face as hard as it can while digging his claws deep into its scaly hide[else]. Your demon companion pounds the brute's face with delight, his lustful urges overpowering his need for restraint and knowing full well the beast can endure such rough treatment[end if].";
	say "     You fuck that muscled ass hard and fast, confident that the big guy can take it (and has no choice but to do so). In the end, it is not long before you reach your peak and cum with a lustful cry. The demon beneath you groans and gurgles as its throat is pumped full of demon seed. The captured brute's muffled moans grow louder as it ends up cumming as well[if DBCaptureQuestVar is 5], much to Brutus's twisted delight[else]much to Brutus's amusement[end if]. Speaking of your demonic companion, once he's fed his load to the demon between you, he [if DemonBruteStatus is 0]withdraws and slaps his thick slab of cock-meat across the cock-sucker's face with a dark chuckle[else]eases his spent shaft free, moaning softly the demon licks it clean on the way out[end if]. While Brutus is doing this, you've finished draining your [Cum Load Size of Player] load into the demon's ass, pulled your cock free and have given it another slap on the rear. Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Player";
	CreatureSexAftermath "Demon Brute" receives "OralCock" from "Brutus";

to say dbcapturesex_03: [DP demon with Brutus]
	say "     Not wanting to deny Brutus his prize, but wanting in on that action yourself, you order Brutus to take him cowboy style. It is a little more difficult for him to deal with the weakened demon at first, but once he drives his massive manhood into its muscled ass, the creature has a much harder time resisting. The sight of your demon's pulsating rod driving into that tight hole again and again captivates your attention for a while. You're sent back into activity when the defeated demon snarls a threat and [if DBCaptureQuestVar is 5][one of]gets a head-ringing tail-slap from Brutus in response[or]gets cuffed in the head for it[or]gets Brutus's claws digging into its throat[at random][else]earns itself an extra-deep thrust from Brutus in response[end if]. To add to its [']punishment['], you move into position behind it, pressing your cock alongside your [if DBCaptureQuestVar is 5]demonic slave's[else]demonic companion's[end if] and force your [cock size desc of Player] manhood in alongside his, forcing the already stuffed creature to take more.";
	say "     The demon's ass is hot and tight around your [Cock of Player] manhood and the pulsing and grinding of your pet's cock against your own only makes it better[if Cock Length of Player < 10]. When compared to Brutus's meaty log, your shaft isn't much, but it already adds more to a well-stuffed hole. The stuffed brute's attempts to taunt and threaten are broken up by pants and groans of discomfort and arousal[else if Cock Length of Player < 20]. Further adding your [Cock Length of Player] shaft alongside Brutus's meaty log further stretches an already well-stuffed hole. The thoroughly stuffed brute's attempts to taunt and threaten fail, only able to form the occasional word between its pants and groans of discomfort and arousal[else]. The addition of your cock, even bigger than Brutus's meaty log, further stretches an already well-stuffed hole to nearly its limits. The overstuffed brute can only groan incoherently, panting and drooling with a mix of discomfort and excessive arousal[end if][if DBCaptureQuestVar is 5]. Your demon slave takes vicious delight in the creature's difficulty and digs his claws into its hide. Picking up the pace, knowing full well the beast can endure such rough treatment, he pants and growls with violent excitement[else]. Your demon companion moans that the demon should let go of its anger and just enjoy it, adding that the creature's erection's proof of how much it's really enjoying it[end if].";
	say "     The two of you fuck that muscled ass hard and fast, grinning happily as he's further and further reduced into a state of uncontrolled arousal. In the end, it is not long before you both drive him over the edge, hot demon seed spurting from its shaft across Brutus's muscled abs and chest. The way the demon's ass clamps down and quivers around your poles, squeezing your cock all the harder against your [if DBCaptureQuestVar is 5]slave's[else]pet's[end if]sets the two of you off, blasting your loads into the demon's bowels. Your [Cum Load Size of Player] output mixes with the demon's heavy load, thoroughly filling the demon's ass with cream.";
	say "     And once you've both emptied your balls, you pull out to allow Brutus to [if DBCaptureQuestVar is 5]shove the demon off and onto its stomach, ass in the air. Grabbing your fallen and fucked foe's tail, your enslaved pet forces its large, spaded end into that leaking asshole like an improvised butt-plug, forcing your mingled semen to remain trapped inside it. He then chuckles that he hopes to get another go at the demon's bitch ass, but growls that it can slink away to its hole for now[else]pull the dazed demon into a forceful kiss while fingering its cum-drooling ass with two fingers. Again saying that it'd be better off if it let go of the hate and just allowed itself to be a good hell-bitch like that all the time, Brutus gives it a playful grope before releasing it[end if]. The demon tries to give a final threatening growl, but can't manage more than an aroused whimper before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Player";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Brutus";

to say dbcapturesex_04: [tag team the demon]
	if DBCaptureQuestVar is 5:
		say "     Not wanting to deny Brutus his prize, but wanting in on that action yourself, you order Brutus to pin him down and take turns with you. Brutus grins sinisterly and forces it onto all fours with its ass raised, then plows into his infernal brethren's ass. The sight of that big cock driving into your fallen foe's muscular ass is very arousing and soon you're playing with yourself as you enjoy the show. Your demonic slave, relishing the opportunity to fuck another of its kind, pounds his pulsing rod into his victim with excited growls for a few minutes before obeying your command to share and very slowly drags his bump-covered shaft from the demon's abused hole.";
		say "     You have a go at it after that, your [if Cock Length of Player < 10]much smaller cock slipping easily into that stretched hole. To help make up for the looseness of it, you pound away all the harder while slapping its ass. It tries to mock your undersized shaft, but Brutus [one of]roughly reminds it that he'll be fucking it again shortly[or]cock-slaps it with his impressive meat[or]grabs the demon's erection and mocks it for having gotten hard from getting buggered[or]grinds its face into the ground and promises to teach it some respect when it's his turn again[or]digs his claws into its throat, growling that he'll gladly tear it out if the demon bitch displeases his master[at random][else if Cock Length of Player < 20][cock size desc of Player] cock has no difficulty entering that stretched hole. Knowing it's been readied by your demonic pet and that the beast can take it, you pound away all the harder while slapping its ass. It snarls and spews some threats at this mistreatment, but Brutus [one of]roughly reminds it that he'll be fucking it again shortly[or]cock-slaps it with his impressive meat[or]grabs the demon's erection and mocks it for having gotten hard from getting buggered[or]grinds its face into the ground and promises to teach it some respect when it's his turn again[or]digs his claws into its throat, growling that he'll gladly tear it out if the demon bitch displeases his master[at random][else]even larger cock pushing its way into that pre-stretched hole. Having been prepared for you by your demonic pet and knowing the beast can take it, you pound away all the harder while slapping its ass. Between groans and panting, it tries to snarl and make threats, but Brutus [one of]roughly reminds it that you're both the ones fucking it senseless[or]cock-slaps it with his impressive meat[or]grabs the demon's erection and mocks it for having gotten hard from getting buggered[or]grinds its face into the ground and promises to teach it some respect when it's his turn again[or]digs his claws into its throat, growling that he'll gladly tear it out if the demon bitch displeases his master[at random][end if]. The creature's ass is delightfully hot and grips around your cock harder when your demon slave gets rough with it.";
		say "     As the demon's master, you wait longer before allowing your slave his next turn, but Brutus is all the more enthusiastic for it by the time you move aside[if Cock Length of Player < 10]. After your smaller shaft, taking your pet's knobbed pillar of meat again makes the demon release a moaning growl[else if Cock Length of Player < 20]. After your [cock size desc of Player] shaft, your pet's knobbed pillar of meat is no better, forcing a moaning growl from the demon[else]. While smaller than your [cock size desc of Player] shaft, your pet's knobbed pillar of meat is impressive in its own right and makes the demon release a moaning growl. With that hole further stretched out by you, the pace is even faster and harder still[end if]. Gripping that scaly ass with his clawed hands, Brutus pants and rumbles with lustful excitement as he enjoys his turn back in it.";
		say "     You both continue to swap, taking turns over and over again until you're both almost ready to cum. By that point, the demon beneath you has already cum once (much to Brutus's mocking delight) and is well on its way to another messy orgasm[if Cock Length of Player < 15]. You end up cumming first, spraying your [Cum Load Size of Player] load into the demon brute's ass in a series of solid thrusts. Withdrawing, you leave the creamy hole available for Brutus, who stuffs it tight with his manhood and adds his demonic seed to the mix[else]. Brutus ends up cumming first, spraying his tainted seed into the demon brute's ass in a series of solid thrusts. And once he pulls out, you're left to finish off with sloppy seconds in that creamy hole, adding your [Cum Load Size of Player] load to the mix[end if]. This (and a little playful stroking) gets the captured demon to cum again, further adding to the sticky mess you've all made. Dazed and panting after its second orgasm, it tries to give a threatening growl, but can manage little more than an aroused whimper. Brutus chuckles at this and pushes it aside with his heel before it dissolves into purple smoke and is whisked away.";
	else:
		say "     Not wanting to deny Brutus his prize, but wanting in on that action yourself, you order Brutus to pin him down and take turns with you. Brutus grins lustfully and manhandles it onto all fours with its ass raised before driving into his infernal brethren's ass. The sight of that big cock driving into your fallen foe's muscular ass is very arousing and soon you're playing with yourself as you enjoy the show. Your demonic companion, relishing the opportunity to fuck another of its kind, pounds his pulsing rod into his reluctant lover with excited growls for a few minutes before obeying your request to share and very slowly drags his bump-covered shaft from the demon's abused hole.";
		say "     You have a go at it after that, your [if Cock Length of Player < 10]much smaller cock slipping easily into that stretched hole. To help make up for the looseness of it, you pound away all the harder while slapping its ass. It tries to mock your undersized shaft, but Brutus [one of]reminds it that he'll be fucking it again shortly and that it should just enjoy the brief reprieve[or]stuffs his cock into its mouth while he waits his next turn[or]grabs the demon's erection and distracts it by strokes its throbbing meat[or]urges it to let go of its anger and enjoy the lustful release[or]grabs its throat and squeezes, growling that he'd have torn it out for such insolence before his master granted him purification[at random][else if Cock Length of Player < 20][cock size desc of Player] cock has no difficulty entering that stretched hole. Knowing it's been readied by your demonic pet and that the beast can take it, you pound away all the harder while slapping its ass. It snarls and spews some threats at this mistreatment, but Brutus [one of]reminds it that he'll be fucking it again shortly and so it'll be getting twice the fun[or]stuffs his cock into its mouth while he waits his next turn[or]grabs the demon's erection and distracts it by strokes its throbbing meat[or]urges it to let go of its anger and enjoy the lustful release[or]grabs its throat and squeezes, growling that he'd have torn it out for such insolence before his master granted him purification[at random][else]even larger cock pushing its way into that pre-stretched hole. Having been prepared for you by your demonic pet and knowing the beast can take it, you pound away all the harder while slapping its ass. Between groans and panting, it tries to snarl and make threats, but Brutus [one of]reminds it that he'll be fucking it again shortly and that he'll be easier on it[or]stuffs his cock into its mouth while he waits his next turn[or]grabs the demon's erection and distracts it by strokes its throbbing meat[or]urges it to let go of its anger and enjoy the lustful release[or]grabs its throat and squeezes, growling that he'd have torn it out for such insolence before his master granted him purification[at random][end if]. The creature's ass is delightfully hot and grips around your cock harder, clearly responding on some level to your demon companion's urgings.";
		say "     As the demon's master, you wait longer before allowing your thrall his next turn, but Brutus is all the more enthusiastic for it by the time you move aside[if Cock Length of Player < 10]. After your smaller shaft, taking your pet's knobbed pillar of meat again makes the demon release a moaning growl[else if Cock Length of Player < 20]. After your [cock size desc of Player] shaft, your pet's knobbed pillar of meat is no better, forcing a moaning growl from the demon[else]. While smaller than your [cock size desc of Player] shaft, your pet's knobbed pillar of meat is impressive in its own right and makes the demon release a moaning growl. With that hole further stretched out by you, the pace is much smoother and faster still[end if]. Caressing that scaly ass and muscled body with his clawed hands, Brutus pants and rumbles with lustful excitement as he enjoys his turn back in it.";
		say "     You both continue to swap, taking turns over and over again until you're both almost ready to cum. By that point, the demon beneath you has already cum once (much to Brutus's grinning delight) and is well on its way to another messy orgasm[if Cock Length of Player < 15]. You end up cumming first, spraying your [Cum Load Size of Player] load into the demon brute's ass in a series of solid thrusts. Withdrawing, you leave the creamy hole available for Brutus, who stuffs it tight with his manhood and adds his demonic seed to the mix[else]. Brutus ends up cumming first, spraying his tainted seed into the demon brute's ass in a series of solid thrusts. And once he pulls out, you're left to finish off with sloppy seconds in that creamy hole, adding your [Cum Load Size of Player] load to the mix[end if]. This (and a little playful stroking) gets the captured demon to cum again, further adding to the sticky mess you've all made. Dazed and panting after its second orgasm, it tries to give a threatening growl, but is pulled into a wild kiss by Brutus. Its overstuffed and gaping asshole is plugged by a pair of thick fingers until the kiss is finally broken. Your demonic pet grins and wipes the sticky mix of semen across the demon's lips, coaxing it to lick them clean before it is allowed to dissolve into purple smoke and whisk itself away.";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Player";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Brutus";

to say dbcapturesex_05: [Brutus fucks the demon]
	if DBCaptureQuestVar is 5:
		say "     Deciding he deserves some relief, you tell Brutus to fuck the captured demon. Brutus grins sinisterly and yanks it up roughly before plowing into its infernal brethren's ass. The sight of that big cock driving into your fallen foe's muscular ass is very arousing and soon you're playing with yourself as you enjoy the show. Your demonic slave, relishing the opportunity to be let loose, shows no mercy to his victim and pounds his pulsing rod into it. The buggered demon makes threats and snarls, but [one of]Brutus just laughs that he is enslaved and must do as his master commands[or]Brutus gives an insincere apology that he must follow your orders[or]Brutus just digs his claws in deeper and pounds it all the harder[or]Brutus laughs off the threats and continues fucking the demon[or]Brutus responds with threats of his own to do even worse should the demon show itself again[at random].";
		say "     Brutus snarls as he cums messily into the struggling demon. It groans and ends up cumming as well, much to your pet's twisted delight[if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. After draining his balls into the demon's ass, Brutus yanks his bump-ridden cock free with a laugh. The messy, sex-stinking demon is tossed aside with a growl that it can now slink away to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	else:
		say "     Deciding he deserves some relief, you tell Brutus to fuck the captured demon. Brutus grins lustfully and yanks it up roughly before sinking into its infernal brethren's ass. Your demonic thrall, relishing the opportunity to let loose and knowing the infernal creature can take it, he shows little restraint, but does reach around to stroke its cock in return. The buggered demon makes threats and snarls, but [one of]Brutus only tells him to relax and enjoy it[or]Brutus tells him to just let go of all that anger and hate[or]Brutus tells him to just accept that it feels good[or]Brutus gives its hard cock a squeeze and says he knows it's enjoying it[or]Brutus keeps a firm grip as he continues fucking its ass[or]Brutus just spanks his ass and tells him to take it like a good hell-bitch[or]Brutus reminds it that it was beaten soundly before and will be beaten again if it tries to make good on its threats[at random].";
		say "     Brutus snarls as he cums messily into the struggling demon. It groans and ends up cumming as well, painting a mess across the ground as the cleansed demon strokes it off[if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. After draining his balls into the demon's ass, Brutus slides his bump-ridden cock free and then wipes it on the other demon's ass. The messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Brutus";

to say dbcapturesex_06: [BJ / spit roast]
	say "     Turned on by the opportunity to get this untamed demon to suck your cock, you order Brutus to keep it pinned while you do just that. He chuckles at this and complies, forcing the creature onto all fours and holding its head tightly with one clawed hand. It gives a growl as you bring your [Cock of Player] penis towards its maw, but [if DBCaptureQuestVar is 5]a firm squeeze on[else]a few minutes of stroking[end if] its cock by Brutus convinces it to open up and start sucking. Gripping its head by the horns, you thrust into its mouth, enjoying the warmth of its wet maw.";
	if DBCaptureQuestVar is 5:
		if demonbrutestatus < 2 and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus presses his cock to the demon's pucker and, with a growl, drives his bump-covered cock into its back door. Ending up spit-roasted between the two of you, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he pounds into it all the harder.";
			say "     Going at it with such fervor, it is not long before Brutus reaches his peak. Digging his claws into your captured foe's ass, he hilts himself fully in it and growls loudly, releasing his infernal load. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Being filled at both ends is too much for the beast and it cums as well, leaving a sticky mess of demon seed on the ground. After you've both pulled free, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
		else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus jams a few fingers into the demon's pucker with a growl, driving the thick, clawed digits into its back door. Ending up stuffed at both ends, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he pounds and twists his fingers around its rectum all the harder.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Driving his fingers even deeper into your captured foe's ass, Brutus rubs at its prostate and sends it over the edge, cumming messily on the ground. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Your powerful slave chuckles, rubbing at the creature's prostate roughly while jerking every last drop out of the demonic brute. After you've pulled your cock from its mouth, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
		else:
			say "     Not wanting to be left out of the fun entirely, Brutus pumps at the demon's cock with one hand while harshly spanking its muscular ass hard with the other. It whimpers and rumbles at this mistreatment, but is also rock hard as well, so it can do little more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he swats its rump all the harder.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Pumping its throbbing shaft and kneading its balls all the harder, Brutus sends it over the edge, cumming messily on the ground. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Your powerful slave chuckles, squeezing the creature's sac roughly while jerking every last drop out of the demonic brute. After you've pulled your cock from its mouth, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
	else:
		if demonbrutestatus < 2 and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus presses his cock to the demon's pucker and, [if anallevel is 3]after some preparatory rimming[else]with a rumble[end if], eases his bump-covered cock into its back door. Ending up spit-roasted between the two of you, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic slave is quite pleased with this and reaches around to pump the demon's penis as a reward even as he pounds into it all the harder.";
			say "     Going at it with such fervor, it is not long before Brutus reaches his peak. Digging his claws into your captured foe's ass, he hilts himself fully in it and growls loudly, releasing his infernal load. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Being filled at both ends is too much for the beast and it cums as well, leaving a sticky mess of demon seed on the ground. After you've both pulled free, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
		else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus [if anallevel is 3]takes a few moments to rim your foe's crinkled hole[else]runs his tongue over his digits[end if] before pushing a few fingers into the demon's pucker with an excited growl. He drives the thick, clawed digits into its back door and rubs at the creature's prostate. Ending up stuffed at both ends, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic pet teases it for being such a horny bitch even as he wriggles and rubs his fingers into its rectum all the deeper.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Driving his fingers even deeper into your captured foe's ass, Brutus coaxes at its prostate and sends it over the edge, cumming messily on the ground. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Your powerful slave chuckles, rubbing at the creature's prostate steadily while jerking every last drop out of the demonic brute. After you've pulled your cock from its mouth, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
		else:
			say "     Not wanting to be left out of the fun entirely, Brutus pumps at the demon's cock with one hand while playfully spanking its muscular ass firmly with the other. It whimpers and rumbles at this treatment, but is also rock hard as well, so it can do little more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks and sucks at your cock, working to get you off. Your demonic pet teases it for being such a horny bitch even as he rubs its dripping glans, spreading around the demon's precum.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Pumping its throbbing shaft and kneading its balls all the faster, Brutus sends it over the edge, cumming messily on the ground. Excited by this, it's only a few last thrusts before you're emptying your balls into it, filling its belly with your [Cum Load Size of Player] load. Your powerful slave chuckles, caressing and licking the creature's sac while jerking every last drop out of the demonic brute. After you've pulled your cock from its mouth, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
	CreatureSexAftermath "Demon Brute" receives "OralCock" from "Player";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Brutus";

to say dbcapturesex_07: [cunnilingus /spitroast]
	say "     Turned on by the opportunity to get this untamed demon to eat your pussy, you order Brutus to keep it pinned while you do just that. He chuckles at this and complies, forcing the creature onto all fours and holding its head tightly with one clawed hand. Being obstinate, it gives a growl as you bring your [cunt size desc of Player] cunny towards its maw, but [if DBCaptureQuestVar is 5]a firm squeeze on[else]a few strokes of[end if] its cock by Brutus convinces it to start licking. Gripping its head by the horns, you grind your juicy folds against its lips, driving its forked into your dripping vagina.";
	if DBCaptureQuestVar is 5:
		if demonbrutestatus < 2 and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus presses his cock to the demon's pucker and, with a growl, drives his bump-covered cock into its back door. Ending up speared from behind, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he pounds into it all the harder.";
			say "     Going at it with such fervor, it is not long before Brutus reaches his peak. Digging his claws into your captured foe's ass, he hilts himself fully in it and growls loudly, releasing his infernal load. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Being filled from behind while the scent of a climaxing female fills its nose is too much for the beast and it cums as well, leaving a sticky mess of demon seed on the ground. After you've both stepped back, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
		else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus jams a few fingers into the demon's pucker with a growl, driving the thick, clawed digits into its back door. Ending up stuffed from behind, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he pounds and twists his fingers around its rectum all the harder.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Driving his fingers even deeper into your captured foe's ass, Brutus rubs at its prostate and sends it over the edge, cumming messily on the ground. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Your powerful slave chuckles, rubbing at the creature's prostate roughly while jerking every last drop out of the demonic brute. After you've both stepped back, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
		else:
			say "     Not wanting to be left out of the fun entirely, Brutus pumps at the demon's cock with one hand while harshly spanking its muscular ass hard with the other. It whimpers and rumbles at this mistreatment, but is also rock hard as well, so it can do little more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic slave mocks it for being such a horny bitch even as he swats its rump all the harder.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Pumping its throbbing shaft and kneading its balls all the harder, Brutus sends it over the edge, cumming messily on the ground. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Your powerful slave chuckles, squeezing the creature's sac roughly while jerking every last drop out of the demonic brute. After you've both stepped back, the demon tries to give a threatening growl, but is kicked aside by your slave and made to dissolve into purple mist and depart.";
	else:
		if demonbrutestatus < 2 and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus presses his cock to the demon's pucker and, [if anallevel is 3]after some preparatory rimming[else]with a rumble[end if], eases his bump-covered cock into its back door. Ending up speared from behind, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic slave is quite pleased with this and reaches around to pump the demon's penis as a reward even as he pounds into it all the harder.";
			say "     Going at it with such fervor, it is not long before Brutus reaches his peak. Digging his claws into your captured foe's ass, he hilts himself fully in it and growls loudly, releasing his infernal load. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Being filled from behind while the scent of a climaxing female fills its nose is too much for the beast and it cums as well, leaving a sticky mess of demon seed on the ground. After you've both stepped back, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
		else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Not wanting to be left out of the fun, Brutus [if anallevel is 3]takes a few moments to rim your foe's crinkled hole[else]runs his tongue over his digits[end if] before pushing a few fingers into the demon's pucker with an excited growl. He drives the thick, clawed digits into its back door and rubs at the creature's prostate. Ending up stuffed from behind, the creature's unable to do much more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic pet teases it for being such a horny bitch even as he wriggles and rubs his fingers into its rectum all the deeper.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Driving his fingers even deeper into your captured foe's ass, Brutus coaxes at its prostate and sends it over the edge, cumming messily on the ground. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Your powerful slave chuckles, rubbing at the creature's prostate steadily while jerking every last drop out of the demonic brute. After you've both stepped back, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
		else:
			say "     Not wanting to be left out of the fun entirely, Brutus pumps at the demon's cock with one hand while playfully spanking its muscular ass firmly with the other. It whimpers and rumbles at this treatment, but is also rock hard as well, so it can do little more than moan and take it. Perhaps it's only trying to get it over with quickly, but it licks at and laps into your cunny with increased zeal, working to get you off. Your demonic pet teases it for being such a horny bitch even as he rubs its dripping glans, spreading around the demon's precum.";
			say "     With you both going at it with such fervor, it is not long before the demon reaches its peak. Pumping its throbbing shaft and kneading its balls all the faster, Brutus sends it over the edge, cumming messily on the ground. Excited by this, it's not much longer before your cunt's squeezing down around that probing tongue and your female cum's soaking the demon's face. Your powerful slave chuckles, caressing and licking the creature's sac while jerking every last drop out of the demonic brute. After you've both stepped back, the demon tries to give a threatening growl, but is pressed face first into its splattered semen and made to dissolve into purple mist and depart.";
	CreatureSexAftermath "Demon Brute" receives "OralPussy" from "Player";
	CreatureSexAftermath "Demon Brute" receives "AssFuck" from "Brutus";

to say dbcapturesex_08: [vaginal ride]
	say "     Wanting to enjoy the demon's cock, you order Brutus to keep it pinned while you do just that. He chuckles at this and complies, starting by giving his fallen foe a knee in the gut before pushing it over onto its back. Pinning it down, [if DemonBruteStatus is 0]he grinds his cock into[else]he grinds his pussy down onto[end if] the creature's face even as you move into position. You slide your wet cunny across that pulsing rod, stiffening it to full erection. As you lower yourself down onto that pillar of infernal meat, the demon tries to taunt you that [one of]it'll pound you until you're broken[or]you could have just bent over and taken it if you'd wanted it that badly[or]you can't resist its massive cock[or]you're nothing but another horny slut for it to breed[at random], but Brutus grabs it by the throat, [if DBCaptureQuestVar is 5]crushing[else]stifling[end if] its words into silence. This proves again that you two have beaten it and will do as you please with it. And what you want right now is that knobby rod stuffed inside you, and you [if Cunt Depth of Player < 10]work your [cunt size desc of Player] cunt slowly down onto the massive thing[else if Cunt Depth of Player < 20]lower your enlarged cunt down onto the very filling thing[else]slide your spacious cunt down over it with no trouble[end if].";
	say "     You take your time at first, allowing yourself to adjust to its impressive size as well as drawing out your own pleasure. Your increasingly lustful opponent struggles, wanting to pin you down and take you violently, but Brutus is there to keep the other demon in its place[if DBCaptureQuestVar is 5], clawing and slashing at it further as[else], grappling with it until[end if] he beats it back to the ground. The violent struggle certainly makes the demon's cock throb and buck inside you, causing you to moan in pleasure. You chuckle and knead its hefty ballsack even as it growls and makes threats before Brutus [if DemonBruteStatus < 2]stuffs its maw with infernal meat[else]cuts it off with his dripping loins in its face[end if].";
	say "     In time, you end up riding that pulsing pole hard and fast[if Cunt Depth of Player < 20] once you've adjusted to its huge size[end if]. And once you're going at it with reckless, lustful abandon, it is not long before the demon beneath you groans and cums hard, blasting his demonic load into your womb, only adding to the heat of your lust. You cry out in orgasm and clamp down tightly around that spurting rod, milking it for all it'll give until your uterus is overflowing. From the wet, messy pool of fluid at the junction between Brutus's crotch and the demon's mouth, you can tell he's come as well. Not even waiting to let it finish once you're filled up, you pull off the demon's cock and grind your foot down onto its balls as it finishes unloading onto its scaly chest. Done now, Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Demom Brute";

to say dbcapturesex_09: [anal ride]
	say "     Wanting to enjoy the demon's cock, you order Brutus to keep it pinned while you do just that. He chuckles at this and complies, starting by giving his fallen foe a knee in the gut before pushing it over onto its back. Pinning it down, [if DemonBruteStatus < 2]he grinds his cock into[else]he grinds his pussy down onto[end if] the creature's face even as you move into position. You slide your ass cheeks across that pulsing rod, stiffening it to full erection. As you lower yourself down onto that pillar of infernal meat, the demon tries to taunt you that [one of]it'll pound you until you're broken[or]you could have just bent over and taken it if you'd wanted it that badly[or]you can't resist its massive cock[or]you're nothing but another [if Player is female]horny slut[else]man-whore[end if] for it to rape[at random], but Brutus grabs it by the throat, crushing its words into silence. This proves again that you two have beaten it and will do as you please with it. Brutus presses his crotch back over its mouth to silence it and remind it who was the victor here. And what you want right now is that knobby rod stuffed inside you, and you [if Player is twistcapped or scalevalue of Player is 5]slide your spacious ass down over it with little trouble past some pleasant stretching[else if scalevalue of Player is 4]lower your enlarged ass down onto the very filling thing with only some passing discomfort[else]work your tight asshole down over the massive thing with considerable effort and slowly fading discomfort[end if].";
	say "     You take your time at first, allowing yourself to adjust to its impressive size as well as drawing out your own pleasure. Your increasingly lustful opponent struggles, wanting to pin you down and take you violently, but Brutus is there to keep the other demon in its place[if DBCaptureQuestVar is 5], clawing and slashing at it further as[else], grappling with it until[end if] he beats it back to the ground. The violent struggle certainly makes the demon's cock throb and buck inside you, causing you to moan in pleasure. You chuckle and knead its hefty ballsack even as it growls and makes threats before Brutus [if DemonBruteStatus < 2]stuffs its maw with infernal meat[else]cuts it off with his dripping loins in its face[end if].";
	say "     In time, you end up riding that pulsing pole hard and fast[if Cunt Depth of Player < 20] once you've adjusted to its huge size[end if]. And once you're going at it with reckless, lustful abandon, it is not long before the demon beneath you groans and cums hard, blasting his demonic load into your rectum, only adding to the heat of your lust[if Player is not neuter]. You cry out in orgasm and clamp down tightly around that spurting rod, milking it for all it'll give until your bowels are overflowing[end if]. From the wet, messy pool of fluid at the junction between Brutus's crotch and the demon's mouth, you can tell he's come as well. Not even waiting to let it finish once you're filled up, you pull off the demon's cock and grind your foot down onto its balls as it finishes unloading onto its scaly chest. Done now, Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Demon Brute";

to say dbcapturesex_10: [Brutus rides - vaginal]
	if DBCaptureQuestVar is 5:
		say "     Wanting to see Brutus get fucked by another demon, you tell him to ride the demon's cock. [if DemonBruteStatus is 1]He growls at this, but obeys[else]He grins lustfully at this and obeys[end if], kneeing the demon in the gut before pushing it over onto its back. Pinning it down, he grinds his juicy cunt over its pulsing rod, stiffening it to full erection. As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slave, but he grabs it by the throat, crushing its words into silence, proving that he is still stronger than it and can take what he wants. And what he wants, now that he's excited from roughing up his fallen foe, is that huge cock stuffed inside him. He lowers herself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
		say "     Brutus rides the demonic cock slowly at first, more to torment his increasingly lustful opponent than for his own satisfaction. The fallen demon struggles, not to break free, but to pin your companion down and take him violently. Brutus is able to keep it pinned though, clawing and slashing at it further as he beats it back to the ground. Aroused by the bloodlust, his pace soon quickens until he's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm[if DemonBruteStatus is 1]. He paints the demon's scaly hide with his seed even as it fills him up with its infernal load[else]. Your demonic companion's cunt clutches tightly around his foe's shaft, milking it for its infernal load[end if][if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from his snatch. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	else:
		say "     Wanting to see Brutus get fucked by another demon, you tell him to ride the demon's cock. [if DemonBruteStatus is 1]He seems momentarily disappointed, his cock twitching, but obeys[else]He grins lustfully at this and obeys eagerly[end if], wrestling the demon onto its back. Pinning it down, he grinds his juicy cunt over its pulsing rod, stiffening it to full erection. As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slut, but he slaps his spaded tail across its ballsack to cut its taunts short, proving that he's still stronger than it and will take what he wants. And what he wants is clearly that huge cock stuffed inside him. He lowers himself down onto it with a lustful grunt.";
		say "     Brutus rides the demonic cock slowly at first, seeking to make the most of the opportunity. The fallen demon struggles, not to break free, but to pin your companion down and take him violently. Brutus is able to keep it pinned though, holding the weakened demon down with his great strength and the leverage of his position over it. Not able to hold himself back for long, his pace soon quickens until he's bouncing up and down on the groaning demon's rod and they're both pushed to orgasm[if DemonBruteStatus is 1]. He paints the demon's scaly hide with his seed even as it fills him up with its infernal load[else]. Your demonic companion's cunt clutches tightly around his foe's shaft, milking it for its infernal load[end if][if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and offers for it to lick its own load from his snatch, which it does despite its obvious anger. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Brutus" receives "PussyFuck" from "Demon Brute";

to say dbcapturesex_11: [Brutus rides - anal]
	if DBCaptureQuestVar is 5: [evil]
		if DemonBruteStatus is 0:
			say "     Wanting to see Brutus get fucked by another demon, you tell him to take the demon's cock up his ass. He growls at this, but obeys, kneeing the demon in the gut before pushing it over onto its back. Pinning it down, he grinds his muscular ass over its pulsing rod, stiffening it to full erection. As Brutus lowers himself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slave, but he grabs it by the throat, crushing its words into silence, proving that he is still stronger than it and can take what he wants. And what he wants, now that he's overexcited from roughing up his fallen foe, is that huge cock stuffed inside him. He lowers himself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
			say "     Brutus rides the demonic cock slowly at first, taking his time adjusting to the massive intruder. The fallen demon struggles, not to break free, but to pin him down and take him violently. Brutus is able to keep it pinned though, clawing and slashing at it further as he beats it back to the ground. Aroused by the bloodlust, his pace soon quickens until he's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm. He paints the demon's scaly hide with his seed even as it fills her up with its infernal load[if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from his asshole. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
		else:
			say "     Wanting to see Brutus get fucked by another demon, you tell him to take the demon's cock up his ass. He growls at this, his [if DemonBruteStatus is 1]cock twitching[else]cunt dripping[end if], but obeys. He knees the demon in the gut before pushing it over onto its back. Pinning it down, he grinds his muscular ass over its pulsing rod, stiffening it to full erection. As Brutus lowers himself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slave, but he grabs it by the throat, crushing its words into silence, proving that he is still stronger than it and can take what he wants. And what he wants, now that he's overexcited from roughing up his fallen foe, is that huge cock stuffed inside his ass. He lowers herself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
			say "     Brutus rides the demonic cock slowly at first, taking his time adjusting to the massive intruder. The fallen demon struggles, not to break free, but to pin your companion down and take him violently. Brutus is able to keep it pinned though, clawing and slashing at it further as he beats it back to the ground. Aroused by the bloodlust, his pace soon quickens until he's bouncing up and down on the groaning demon's rod and they're both pushed to orgasm[if DemonBruteStatus is 1]. He paints the demon's scaly hide with his seed even as it fills him up with its infernal load[else]. Your demonic companion's anus clutches tightly around his foe's shaft, milking it for its infernal load[end if][if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from his asshole. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	else:
		if DemonBruteStatus is 0:
			say "     Wanting to see Brutus get fucked by another demon, you tell him to take the demon's cock up his ass. He seems momentarily disappointed, his cock twitching, but obeys, wrestling the demon onto its back. Pinning it down, he grinds his muscled ass over his pulsing rod, stiffening it to full erection. As Brutus lowers himself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slut, but he slaps his spaded tail across its ballsack to cut its taunts short, proving that he's still stronger than it and will take what he wants. And what he wants is clearly that huge cock stuffed inside his ass. He lowers herself down onto it with a snarl, giving a deep lust-filled grunt as his ass is pried open by it.";
			say "     Brutus rides the demonic cock slowly at first, taking his time adjusting to the massive intruder before making the most of the opportunity. The fallen demon struggles, not to break free, but to pin him down and take him violently. Brutus is able to keep it pinned though, holding the weakened demon down with his great strength and the leverage of his position over it. Not able to hold himself back for long, his pace soon quickens until he's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm. He paints the demon's scaly hide with his seed even as it fills his bowels with its infernal load[if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and offers for it to lick its own load from his asshole, which it does despite its obvious anger. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
		else:
			say "     Wanting to see Brutus get fucked by another demon, you tell him to ride the demon's cock. He seems momentarily disappointed[if DemonBruteStatus is 1], his cock twitching, but obeys[else] that it will not be his cunt getting filled, but obeys[end if], wrestling the demon onto its back. Pinning it down, he grinds his muscled ass over his pulsing rod, stiffening it to full erection. As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that she's become nothing but a slut, but she slaps her spaded tail across its ballsack to cut its taunts short, proving that she's still stronger than it and will take what she wants. And what she wants is clearly that huge cock stuffed inside her ass. She lowers herself down onto it with a snarl, giving a deep lust-filled grunt as his ass is pried open by it.";
			say "     Brutus rides the demonic cock slowly at first, taking his time adjusting to the massive intruder before making the most of the opportunity. The fallen demon struggles, not to break free, but to pin your companion down and take him violently. Brutus is able to keep it pinned though, holding the weakened demon down with his great strength and the leverage of his position over it. Not able to hold himself back for long, his pace soon quickens until he's bouncing up and down on the groaning demon's rod and they're both pushed to orgasm[if DemonBruteStatus is 1]. He paints the demon's scaly hide with his seed even as it fills his bowels with its infernal load[else]. Your demonic companion's cunt clutches tightly around his foe's shaft, milking it for its infernal load[end if][if Player is not neuter]. The sight of this sends you into orgasm as well[end if]. Once the demon's balls are drained, Brutus pulls off of its rod and offers for it to lick its own load from his asshole, which it does despite its obvious anger. That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now. The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	CreatureSexAftermath "Brutus" receives "AssFuck" from "Demon Brute";

Table of Game Objects (continued)
name	desc	weight	object
"demon tooth"	"A pretty long, curved fang with a sharp tip. You knocked it out of a demon brute's mouth. Maybe you could find someone who has knowledge of the supernatural and show it to them - there might be something interesting to be done with it."	1	demon tooth

demon tooth is a grab object. demon tooth is not temporary.
Usedesc of demon tooth is "And just what do you want to do with it? Maybe find someone who understands the supernatural and give it to them...";

instead of trading the demon tooth when the current action involves the Nermine:
	say "[Nermine_DemonToothTrade]";

to say Nermine_DemonToothTrade:
	if DBCaptureQuestVar is 2:
		ItemLoss demon tooth by 1;
		say "     Nermine takes a look at the fang, then says 'What this jackaless is being shown here is a tooth of a demon soldier. How was it aquired?'";
		say "     You tell her about your previous clashes with multiple demon brutes and how they always evaded you in the end. Nodding, the jackalwoman says 'Nermine's guest is having a desire for revenge then? Is needing a spell to capture this old enemy?' she holds up the fang, looking at it, then you, with a calculating look. 'This humble jackal can help her dear customer in doing this - but she has to insist the ritual be done somewhere else. She does not want hellish attention here if there should be... complications.' Agreeing to the storekeeper's conditions, you wait while she vanishes in a back room for a while, then comes back out with a small box holding candles, herbs, a small brazier and a scroll.";
		say "     'These items are almost all that is required - but what remains is to gather some essence of your enemy. It is needful to paint the symbol, as detailed in the scroll...' From her description, you'd say about three bottles of demon seed should suffice. Finally Nermine gives you the tooth back and stores her box behind the counter. 'Please do keep it for now. Give it to Nermine when the demon essence is gathered and a final choice made about the ritual.'";
		ItemGain demon tooth by 1;
		now DBCaptureQuestVar is 3;
	else if DBCaptureQuestVar is 3:
		if carried of demon seed > 2:
			say "     Taking the tooth from you again, Nermine asks, 'Is Nermine's visitor having the demon's essence?'";
			say "     [bold type]Aware of the multiple bottles of demonic cum in your pack, you answer...[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				say "     The jackalwoman nods, then gets out the small box with stuff again and hands it to you. 'This is everything needed. Please do take care to follow the instructions closely. This the last supply of these ingredients Nermine has - they are hard to procure, so there will be only one try for the dear customer to succeed.' With that, Nermine starts to shoo you out of her store. 'Go now, far - Nermine does not want her bones eaten if the attempt fails. When done successfully, do come back and bring the tooth.'";
				WaitLineBreak;
				say "     Carrying your box of summoning supplies out of the mall, you make your way along the streets for several blocks until you find a suitable abandoned building. Unrolling the scroll Nermine gave you, you find it's a step-by step instruction manual for demon summoning. After (1) setting up a pentagram painted in demon seed and double-checking that it's closed everywhere, you (2) set up black candles on the points and light them. After that, it's time to (3) put the brazier in the middle and burn the herbs in it. With their spicy odors filling the room, you read further down the list. Hmmm.... (4) is smearing your own blood on the tooth and throwing it into the brazier.";
				ItemLoss demon seed by 3;
				say "     [bold type]Something about using your blood in a demon summoning ritual just makes you nervous. Do you want to do this anyways?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					say "     Having come this far, you poke your thumb with the tooth and spread some blood over it, then lug it into the burning brazier and step back. The fire in the brazier and the candles flare up brightly and a demon brute materializes in the pentagram with an annoyed growl.";
					ItemLoss demon tooth by 1;
					now DBCaptureQuestVar is 4;
					now inasituation is true;
					challenge "Demon Brute";
					now inasituation is false;
					if fightoutcome >= 20 and fightoutcome <= 29: [lost]
						say "[DemonBruteVictoryFuck]";
						now BodyName of Player is "Captured"; [NOTE: I guess, this could be removed without issues when the GameEndings table is finished (@Stadler#3007)]
						now FaceName of Player is "Captured";
						now SkinName of Player is "Captured";
						now TailName of Player is "Captured";
						now CockName of Player is "Captured";
						now humanity of Player is 0;
						WaitLineBreak;
						end the story saying "An enraged demon brute dragged you off to hell.";
					else if fightoutcome >= 30: [fled]
						say "     Seems like this was a bit too much for you to take on. Running out of the building, closely followed by the enraged demon, you flee for your life and only barely make an escape. Well, there goes your one and only try for this ritual. But then, maybe that's for the best...";
						now DBCaptureQuestVar is 99; [ritual failed]
					else if fightoutcome >= 10 and fightoutcome <= 19: [won]
						say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to turn into a fine purple mist - but instead of dispersing in the air as before, it swirls around as one tight mass. The cloud of mist wavers as if it's fighting against some pull, then is drawn towards the pentagram in an elongated stream. Whirling around in an ever-tightening spiral, the purple mist finally is absorbed by the now blackened demon tooth in the brazier. As the last bit of it vanishes, the fire and surrounding candles are blown out by a sudden wind, silence falling over the room only disturbed by quiet ticking sounds of the slowly cooling brazier.";
						WaitLineBreak;
						say "     Looks like it worked. You carefully fish out the tooth from amongst the ashes and put it in your pocket, then make your way back to Nermine's shop. The jackalwoman seems just a bit surprised when you hand her the demon tooth. 'Congratulations. Nermine is glad you were not eaten. Rare to see business with demons work out.' She looks closely at the tooth, then continues 'One can feel it struggling to get out, your captive. Might even break free over time - let me put a stop to that.' Opening a box in one of the many shelves, the jackalwoman grabs a rough chunk of clear crystal, then touches it with the sharp end of the tooth and murmurs something. A swirl of dark purple flows from the contact point, filling the center of the crystal with a wavering cloud. Setting the changed crystal back into its box, Nermine says 'There, this is the demon power your captive no longer has - and payment for Nermine. He is controllable now.'";
						say "     With skilled fingers, Nermine clamps the tooth into a small metal socket with a loop on the back and pulls a leather string through that. She hands you your new demontooth amulet and leans close to whisper some magical words you can use to summon the captured demon from within.";
						now DBCaptureQuestVar is 5; [captured and controlled]
						now demon brute is tamed;
						add "Tamed" to Traits of demon brute;
						LineBreak;
						say "     (Brutus the demon brute is now a possible ally! You can make him your active ally by typing [bold type][link]ally Brutus[end link][roman type] or [bold type][link]ally demon brute[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Brutus[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
				else:
					say "     Getting cold feet at almost he last second, you blow out the candles and douse the brazier. Well, there goes your one and only try for this ritual. With the herbs already up in smoke, you won't have any for a second try. But then, maybe that's for the best...";
					now DBCaptureQuestVar is 99; [failed]
			else:
				say "     As you shake your head, the jackalwoman says 'Nermine cannot help you unless you bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
		else:
			say "     Taking the tooth from you again, Nermine asks 'You having the demon's essence?'";
			say "     As you shake your head, the jackalwoman says 'Nermine cannot help her visitor unless they bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
	else if DBCaptureQuestVar is 5:
		say "     The jackalwoman looks at the tooth, then says 'The visitor is interested in catching another one? Sadly, as Nermine told before, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";
	else if DBCaptureQuestVar is 99:
		say "     The jackalwoman looks at the tooth, then says 'Sadly, as Nermine told you before, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";

to say ChurchDemonCleanse:
	say "     The priestess sighs, then answers 'With how deep in their innermost being it generally is anchored, that's usually very difficult. But tell me more...' You explain about the demon brute, how you captured him and bound him with the ritual, and Nermine drawing off his demonic powers. There is a pause as the priestess thinks about this, then she says 'With the beast weakened and you having bound it to yourself, I see a possibility. How about holy water? That is supposedly able to drive out evil in the Christian faith, and with your demon fitting the bill pretty well, it should work on him.' She hesitates again for a second, then continues 'We do have some here, the former Christian priest of this place blessed all the water bottles he had before he left and didn't return. But that's our emergency fresh water supply, with it in closed bottles and clean. While we're more than willing to help you with your plan, child, I sadly must ask that you [bold type]give us other clean water in exchange[roman type]. And with your companion so large, you will need at least [bold type]eight bottles[roman type] of holy water.'";
	if carried of water bottle > 7:
		say "     [bold type]Aware that you currently do have enough fresh water to make the exchange, do you trade them in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     Telling her you have enough water and would like to start as soon as possible, the priestess answers 'Of course. Just a moment, brother Aaron will bring the holy water to you soon.' You hear the other door of the confessional open and steps move away. Several minutes later, there is a knock on your door and as you open it and step outside, an anthro red fox in Bermuda-shorts and with a tight green top awaits you, holding a crate full of large water bottles. 'I'm Aaron,' he says with a friendly smile, setting down the crate to shake your hand. 'And here's your stuff. Hope it works out for you.'";
			say "     He accepts the other bottles from you one after another and puts them in an empty box standing ready for them, then continues 'You know, if it's holy you want - holy ground can't be bad either, no? Here in the back of the church is a mid-size shelter - homeless, you know - and there's a large shower room. Same building, so it should be blessed too. You can use that, if you want.' Thanking the fox, you let him lead you through the back rooms into the shower room, grabbing a washcloth along the way.";
			LineBreak;
			say "     Then it's time to start. Grasping the demontooth amulet in one hand, you call out the magic words to summon your captive, who materializes in a cloud of purple smoke. Growling at you, as usual, he nevertheless seems a bit distracted, the surroundings seemingly making him itchy. Ordering the large demon to lie down and keep still, you take the first bottle of holy water in hand, pouring some on the washcloth and dab it against his chest. In the instant of contact with the demon's hot skin, the water boils into steam in a violent reaction. The demon chuckles darkly as you pull back your hand. Thankfully there wasn't too much on the washcloth so you didn't burn yourself.";
			say "     Looks like this requires a bit of a different approach. Taking the plastic water bottle in hand, you gain a few steps distance, then use it to splash the demon. The resulting explosion of steam is about what you'd have expected when aiming a water cannon at molten lava. The bottle is empty pretty soon, and you take another, and another. With all the steam boiling off from the demon, it's getting pretty warm in here and sometimes you can barely see him through the clouds, but it's endurable. You just hope this works and you're not just wasting your time - though you think you noticed some difference, a lessening of the amount of steam, after the sixth bottle. Armed with your next to last one, you step a bit closer, splashing parts of the demon you missed before. Then it's the last bottle, which you upend all over his head and chest, getting only a last little sizzling sound before that too stops.";
			WaitLineBreak;
			say "     Looking down on the thoroughly drenched, unconscious demon, you do notice some differences in him. He's a bit lighter purple in the shade of his skin and you could swear that his horns and claws a somewhat smaller and less sharp. Then he sits up, opening his eyes and focuses on you with their now azure blue slitted irises. A curious look comes to his face as he starts to rub his skin, then runs a claw over his arm, leaving a bleeding but shallow scratch. 'That hurts. But why don't I hurt? Inside. I always hurt inside... you made it stop.' Hesitantly, as if he has trouble remembering the expression, he smiles - which still is rather frightening, in light of his many, many sharp teeth.";
			say "     Hey, looks like it worked. Asking the demon what he'd like to do to you if he were free, you get a puzzled expression and a shrug as an answer. Definitely a step forward from threats of dismemberment. With this hopefully leading to a bit nicer a relationship, having a name to talk to him seems appropriate too, so you ask him about it. As it turns out, your captive demon has the unpronounceable name Ba'haz-eu'nizaal't'chha. You decide to just call him [bold type]'Brutus'[roman type], a name he accepts without complaint.";
			say "     For now, you banish the demon brute back into your amulet with a magical command. Turning towards the door, you see Aaron standing there, smiling as he gives you a thumbs up. Thanking the fox, you follow him as he leads you back out to the main room of the chapel.";
			now DBCaptureQuestVar is 6;
			ItemLoss water bottle by 8;
			now the icon of demon brute is Figure of BrutusGood_icon;
		else:
			say "     You thank the priestess for her aid, but tell her that you can't afford trading in so much water right now.";
	else:
		say "     Since you don't have enough water, you can do nothing but to thank the priestess and maybe come back later once you've collected some more.";

Section 2 - Amulet, Pet & Sex


Table of GameCharacterIDs (continued)
object	name
Brutus	"Brutus"

Brutus is a man.
ScaleValue of Brutus is 4. [human sized]
Body Weight of Brutus is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Brutus is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Brutus is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Brutus is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Brutus is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Brutus is 7. [length in inches]
Breast Size of Brutus is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Brutus is 2. [count of nipples]
Asshole Depth of Brutus is 12. [inches deep for anal fucking]
Asshole Tightness of Brutus is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Brutus is 1. [number of cocks]
Cock Girth of Brutus is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Brutus is 18. [length in inches]
Ball Count of Brutus is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Brutus is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Brutus is 0. [number of cunts]
Cunt Depth of Brutus is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Brutus is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Brutus is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Brutus is false.
PlayerRomanced of Brutus is false.
PlayerFriended of Brutus is false.
PlayerControlled of Brutus is false.
PlayerFucked of Brutus is false.
OralVirgin of Brutus is false.
Virgin of Brutus is true.
AnalVirgin of Brutus is false.
PenileVirgin of Brutus is false.
SexuallyExperienced of Brutus is true.
TwistedCapacity of Brutus is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Brutus is false. [steriles can't knock people up]
MainInfection of Brutus is "Demon Brute".
Description of Brutus is "[DemonBrutePetDesc]".
Conversation of Brutus is { "..." }.


Table of GameCharacterIDs (continued)
object	name
demon brute	"demon brute"

demon brute is a pet.
NPCObject of demon brute is Brutus.
understand "Brutus" as demon brute.
IDList of demon brute is { "Brutus", "brutus", "demon", "brute", "demon brute" }.
printed name of demon brute is "Brutus".
ScaleValue of demon brute is 4. [larger than human]
Cock Count of demon brute is 1.
Cock Length of demon brute is 18.
Ball Size of demon brute is 5. [ostrich sized balls]
Ball Count of demon brute is 2.
Cunt Count of demon brute is 0.
Cunt Depth of demon brute is 0.
Cunt Tightness of demon brute is 0.
Nipple Count of demon brute is 2.
Breast Size of demon brute is 0.
[Basic Interaction states as of game start]
PlayerMet of demon brute is false.
PlayerRomanced of demon brute is false.
PlayerFriended of demon brute is false.
PlayerControlled of demon brute is false.
PlayerFucked of demon brute is false.
OralVirgin of demon brute is false.
Virgin of demon brute is true.
AnalVirgin of demon brute is false.
PenileVirgin of demon brute is false.
SexuallyExperienced of demon brute is true.
MainInfection of demon brute is "Demon Brute".
Description of demon brute is "[DemonBrutePetDesc]".
The icon of demon brute is Figure of DemonBrute_icon.
Weapon Damage of demon brute is 20.
The level of demon brute is 1.
Dexterity of demon brute is 10.
Summondesc of demon brute is "[SummonBrutus]".
Dismissdesc of demon brute is "[DismissBrutus]".
Assault of demon brute is "[one of]The demon brute charges into combat, swinging wildly at your enemy in uncontrolled bloodlust![or]A loud roar of your demon brute frightens and distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, your demon brute slashes your enemy with his claws![at random]".
Fuckscene of demon brute is "[sexwithdemonbrutepet]".

to say SummonBrutus:
	say "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your [if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7]demon companion[else]captive demon brute[end if]. You tell him 'I want you to help me when I get into fights, OK?' In a [if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7]deep[else]growling[end if] voice, the demon answers 'Yes... master.'";

to say DismissBrutus:
	say "     You raise your demontooth amulet and command Brutus to return to it. The large purple demon looks at you, then turns into a swirling cloud of smoke and vanishes into the magic item.";
	now Brutus is nowhere;

to say DemonBrutePetDesc:
	if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7: [cleansed]
		if DemonBruteStatus is 0:
			project Figure of BrutusGood_icon;
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between the enlarged and well-toned thighs of Brutus hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";
		else if DemonBruteStatus is 1:
			project Figure of BrutusGood_icon;
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between the enlarged and well-toned thighs of Brutus hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";
		else if DemonBruteStatus is 2:
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between his legs, you see a female's pussy, looking quite inviting. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [original 'evil']
		if DemonBruteStatus is 0:
			project Figure of BrutusEvil_icon;
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		else if DemonBruteStatus is 1:
			project Figure of BrutusEvil_icon;
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		else if DemonBruteStatus is 2:
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs, you see a female's pussy, looking quite inviting. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	if demon brute is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

instead of sniffing demon brute:
	say "Smells like fire, ash and brimstone.";

instead of sniffing Brutus:
	say "Smells like fire, ash and brimstone.";

instead of conversing demon brute:
	if DBCaptureQuestVar < 5:
		say "     You don't have a demon brute to talk to right now...";
	else:
		say "[demon brute summoning]";
		say "[demon brute talk]";

instead of conversing Brutus:
	say "[demon brute talk]";

to say sexwithdemonbrutepet:
	if DBCaptureQuestVar is 6:
		say "     Having gone through the trouble of freeing this demon from his inner torment, maybe you should talk to him first before ordering him to have sex with you. With a clear mind, he'll be able to talk instead of just growling and threatening like he did before.";
	else:
		say "[demon brute summoning]";
		say "[DemonBruteSexMenu]";

instead of fucking Brutus:
	if DBCaptureQuestVar is 6:
		say "     Having gone through the trouble of freeing this demon from his inner torment, maybe you should talk to him first before ordering him to have sex with you. With a clear mind, he'll be able to talk instead of just growling and threatening like he did before.";
	else:
		say "[DemonBruteSexMenu]";

to say demon brute summoning:
	if demon brute is listed in companionList of Player: [already summoned]
		if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7: [cleansed version]
			say "You call your demon companion to you. As he hulking beast comes to stand before you, he says with a deep voice 'Yes... master?'";
		else: [standard evil version]
			say "Holding your demontooth amulet tightly in your fist, you call over your controlled demon. As he hulking beast comes to stand before you, he says with a growling voice 'Yes... master?'";
	else:
		if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7: [cleansed version]
			say "Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has purple skin, a frightening face with slits for nostrils, azure blue slitted irises, and sharp, intimidating teeth. [if DemonBruteStatus is 0]Between the enlarged and well-toned thighs of Brutus hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. [else if DemonBruteStatus is 1]Between the enlarged and well-toned thighs of Brutus hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. [else if DemonBruteStatus is 2]Between his legs, you see a female's pussy, looking quite inviting. [end if]He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time. He wears nothing, unashamedly standing before you in his nakedness. With a deep voice, you hear the demon say, 'Yes... master?'";
		else: [standard evil version]
			say "Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. He is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. [if DemonBruteStatus is 0]Between the enlarged and well-toned thighs of the demon hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. [else if DemonBruteStatus is 1]Between the enlarged and well-toned thighs of the demon hangs a thick, veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. [else if DemonBruteStatus is 2]Between his legs, you see a female's pussy, looking quite inviting. [end if]He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression. With a growling voice, you hear the demon say, 'Yes... master?'";
	WaitLineBreak;

to say demon brute talk:
	if DBCaptureQuestVar is 6: [cleansed Brutus]
		LineBreak;
		project the figure of Brutus_good_face_icon;
		say "     Curious what your captured demon will say, now that he's newly cleansed from evil, you ask Brutus how he feels - about himself, you and serving you. His bright azure-blue eyes fixate on you in an intense gaze and he says 'I feel good. There is no pain - there always, always was pain before. Around me all the time, and after a while it stayed inside me, for eternity.' He points to you, or rather the amulet around your neck. 'You are my master, because of that, but more so because you stopped the hurting, the burning. My old master gave me pain, had me give pain to others. You took it away. I like you better.' He falls to one knee, bending his horned head. 'I will follow your commands, always. Say do and I will, say kill and I kill. For you, Master.'";
		say "     Well, that was certainly an intense answer. And after all the time Brutus spent in hell, he deserves some good treatment now - even though he is still your slave.";
		now DBCaptureQuestVar is 7;
	else if DBCaptureQuestVar is 7: [cleansed Brutus, had a talk with him]
		project the figure of Brutus_good_face_icon;
		if Libido of David > 49 and Libido of David < 86: [relationship range]
			say "     [DBRelationshipTalkMenu]";
		else:
			LineBreak;
			say "     So what do you want to do now? You could chat with him a bit [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], or just banish him back into the amulet [link](3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to chat with him, [link]2[end link] to have sex [link]3[end link] to banish him again.";
			if calcnumber is 1: [chat]
				say "     Talking with the demon brute about this and that, the conversation eventually drifts to... hell, that being the only thing he's actually knowledgeable about. Stories about an infinite realm of pain and suffering make you shudder, especially as Brutus tells you that demons aren't native to that place either. They're made, corrupted by endless times of despair with the only distraction from their pain the torment of newcomers, just like they lived through themselves.";
				say "     He can't remember who - or what - he was before, only that he earned a place in the Infernal Legion through violence, betrayal and malice, then was sent here. He concludes '...after that, you made me your slave. And then you took away the burning, the pain inside me.' The big brute turns his head to you, brows wrinkling over his azure blue eyes, as he is seemingly still trying to figure out why anyone would do something like that. Help another.";
				if demon brute is not listed in companionList of Player:
					say "     With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
			else if calcnumber is 2: [sex]
				say "[DemonBruteSexMenu]";
		[	else if calcnumber is 3: [make him work - there could be some situations where a strong pet is useful]
				say "     You say 'I got a task for you, my pet...'";
				say "[DemonBruteWorkMenu]";]
			else: [banish]
				say "     You say 'I changed my mind. Go back into the amulet and rest, demon.' and dangle the amulet in front of his face and murmur the magic words Nermine told you. With a shrug, the demon brute turns into purple mist and is absorbed by the amulet.";
				if demon brute is listed in companionList of Player:
					remove demon brute from companionList of Player;
	else: [original, evil Brutus]
		project the figure of Brutus_evil_face_icon;
		say "     So what do you want to do now? [if resolution of Demonic Redemption > 0]You could try to talk to him[else]You could mock him a bit[end if] [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], or just banish him back into the amulet [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to mock him, [link]2[end link] to have sex, or [link]3[end link] to banish him again.";
		if calcnumber is 1: [mock or try to talk]
			if resolution of Demonic Redemption > 0 and resolution of Demonic Redemption < 99: [Triggered Evil Demon Brute Path]
				say "     You step up to the creature and run your hand over his bulging muscles, squeezing them, then pull up his arm and look at the long claws at the end of his fingers. Lifting your face to look at his, you catch a glimpse of his pain in his crimson eyes. You try to say something, but no words come out of your mouth, and he shows no emotion. Surprised by the sudden discomfort, you let go of him, a deafening silence between the both of you. This wasn't so hard to do when you just wanted to flex your power over him...";
				if demon brute is not listed in companionList of Player:
					say "     With a sigh, you murmur the magic words Nermine told you, banishing him back inside the amulet.";
			else:
				say "     You step up to the creature and run your hand over his bulging muscles, squeezing them, then pull up his arm and look at the long claws at the end of his fingers. 'So strong, such sharp claws - and nevertheless so helpless you are, little demon.' You pat the cheek of his snarling face and dangle your amulet in front of him. 'Not so powerful now, hm? Controlled by this little trinket. You're mine now.'";
				if demon brute is not listed in companionList of Player:
					say "     To show him your power again, you murmur the magic words Nermine told you, banishing him back inside the amulet.";
		else if calcnumber is 2: [sex]
			say "[DemonBruteSexMenu]";
	[	else if calcnumber is 3: [make him work - there could be some situations where a strong pet is useful]
			say "     You say 'I got a task for you, my pet...'";
			say "[DemonBruteWorkMenu]";]
		else: [banish]
			say "     You say 'I changed my mind. Back to your cage, little demon.' and dangle the amulet in front of his face and murmur the magic words Nermine told you. With a snarl, the demon brute turns into purple mist and is absorbed by the amulet.";
			if demon brute is listed in companionList of Player:
				remove demon brute from companionList of Player;

to say DBRelationshipTalkMenu:
	now sextablerun is 0;
	LineBreak;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk to your demon companion";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him you want to have sex";
	now sortorder entry is 2;
	now description entry is "Use your demon companion for your pleasure";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about David";
	now sortorder entry is 3;
	now description entry is "Bring up Brutus's human friend";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Just chat a bit":
					say "[DBTalk1]";
				else if (nam is "Tell him you want to have sex"):
					say "[DemonBruteSexMenu]";
				else if (nam is "Talk about David"):
					say "[DBTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			if demon brute is listed in companionList of Player:
				say "     You step back from the purple demon, shaking your head slightly as he gives a questioning look.";
			else:
				say "     You murmur the magic words Nermine told you. With a shrug, the demon brute turns into purple mist and is absorbed by the amulet.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DBTalk1:
	say "     Talking with the demon brute about this and that, the conversation eventually drifts to... hell, that being the only thing he's actually knowledgeable about. Stories about an infinite realm of pain and suffering make you shudder, especially as Brutus tells you that demons aren't native to that place either. They're made, corrupted by endless times of despair with the only distraction from their pain the torment of newcomers, just like they lived through themselves.";
	say "     He can't remember who - or what - he was before, only that he earned a place in the Infernal Legion through violence, betrayal and malice, then was sent here. He concludes '...after that, you made me your slave. And then you took away the burning, the pain inside me.' The big brute turns his head to you, brows wrinkling over his azure blue eyes, as he is seemingly still trying to figure out why anyone would do something like that. Help another.";
	if demon brute is not listed in companionList of Player:
		say "     With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";

to say DBTalk2:
	if Libido of David is 50:
		say "     Taking Brutus aside so you can talk privately, you ask him what is up between him and David. He lowers his head dejectedly and replies 'Master, I feel an urge near him - to throw him down and... do what I used to do. I haven't felt like that since you helped me, but now I bring shame to you.' That last sentence is spoken with an underlying tone of despair. 'And he fears me - I can smell it on him. That... excited me before, but now I hate it. He fears me a lot. Why? I didn't hurt him.' Trying to explain why David is justifiably afraid of demons, you tell Brutus the story about your first meeting with the young soldier.";
		say "     Brutus's azure blue eyes widen as you tell him about the fight. 'He was marked by that demon?' he asks, raising a clawed finger and miming it slashing. Remembering the bloody streaks on David's chest from when his clothes were ripped off, you nod. An alert and excited tone enters Brutus's voice as he says, 'I must see his scars, please Master. There could be a danger for him, a possibility that his attacker has put the seal of enslavement on his body.' Looking down again, he continues silently '...and that's the possibility that I'm not shaming my Master after all.'";
		LineBreak;
		say "     He certainly sounds determined about checking up on David. Maybe you should talk to the young soldier, though getting him to agree to strip before the demon likely won't be too easy...";
		now Libido of David is 51;
	else if Libido of David is 51:
		say "     Taking Brutus aside so you can talk privately, you ask him to repeat what he said about David. The demon looks down with a shamed expression, saying 'I feel like I have to... rape him. But at the same time, I don't want to and hate him smelling of fear of me.' His eyes blaze as he continues with a bit of urgency 'With another demon having hurt him, there is the possibility that he's bearing the seal of enslavement. If he has it, he's prepared to become bound to a demon, any demon that finishes the spell by taking him. Taking him hard, making him bleed. He is not safe, if that is so. I have to see his scars, please.' The next bit he murmurs dejectedly 'It might be pulling me to him too, making me feel... bad things. Making me be a disappointment for my Master.'";
		LineBreak;
		say "     He certainly sounds determined about checking up on David. Maybe you should talk to the young soldier, though getting him to agree to strip before the demon likely won't be too easy...";
	else if Libido of David is 52:
		say "     Taking Brutus aside so you can talk privately, you ask him about David and what he did to him. Why he just did it, even if it could hurt - did hurt - him. The demon replies 'I'm sorry master, I should have asked. It is just - I saw him tremble in fear, from my presence, felt the seal drawing me to... do things. That made me remember all those hurt by me, again and again. I just had to stop him from getting hurt.' He flexes his healed hand a bit. 'Now there is no more evil around him. Nothing calling to me. I can look at his body without... bad thoughts. Serve you better.'";
	else if Libido of David is 53:
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David. The demon replies 'He is my friend', his lips drawing upward to show one of his happy tooth-filled smiles. He gets a glum expression on his face for a second as he adds 'My first friend, ever', then shakes his head, throwing off of the unhappy mood. 'I'm very happy to know David - he's nice, friendly and doesn't fear me.' The demon waves his hand in the air as he says 'He looks nice, maybe a bit small - I could just pick him up. But sometimes that can be good too, when you...' A somewhat vacant look comes into his eyes as he imagines something, his large hands moving into position in front of him as if they were holding someone.";
		say "     One look at his [if DemonBruteStatus is 0 or DemonBruteStatus is 1]quickly hardening cock[else]soon dripping wet pussy[end if] and the reflexive tensing of his hip muscles makes obvious to you where Brutus's mind just went. Clearing your throat, you bring the demon back to reality. He drops his hands to his sides, saying 'Err... sorry, master. As I was saying, David is a nice friend. Really nice.'";
	else if Libido of David > 53 and Libido of David < 58:
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon smiles and replies 'I like him - a lot. Talking to someone who doesn't fear me, having him as a friend, his smell, holding him, and... fucking him. Having sex with someone you like and who likes you back is so much better than... anything I did before.' His massive cock starts to swell a bit as Brutus thinks back to his time with David, eyes unfocused for a moment before he pushes the memory aside again. Then suddenly, the demon sinks to his knee before you and bows his head, 'For this I am in your debt, Master - doubly so. You freed me from the evil, and now you allowed me to remember... caring for someone. I know you led this happen, made this happen, and for that you have my eternal thanks.'";
		if Libido of David is 54 or Libido of David is 56:
			increase Libido of David by 1;
	else if Libido of David is 58:
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon smiles and replies 'I like him - a lot. Talking to someone who doesn't fear me, having him as a friend, his smell, holding him, and... fucking him. Having sex with someone you like and who likes you back is so much better than... anything I did before.' His massive cock starts to swell a bit as Brutus thinks back to his time with David, eyes unfocused for a moment before he pushes the memory aside again. Then suddenly, the demon sinks to his knee before you and bows his head, 'Master, can I ask for a boon? I - I want to spend more time with David. If you allow it, of course.'";
	else if Libido of David is 59:
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon hesitates a moment, then says, 'I really like him - a lot. David is in my thoughts all the time, his smell, holding him...' Well, that seems nice and innocent enough, for a reclaimed demon, although you can't help but feel that there's something more that he's not telling you. You can't say what exactly it was that gave you the impression - maybe a slight undertone in his voice, or the fact that his breath seems to come in somewhat forced huffs. Looking closer at the purple giant, you do notice that he's holding one hand behind his body, out of sight, and the muscles of that arm are tense and trembling, as if he's making a tight fist.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into opening up[line break]";
		say "     [link](2)[as]2[end link] - Just command Brutus to tell you everything.[line break]";
		say "     [link](3)[as]3[end link] - Let the matter rest.[line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into opening up, [link]2[end link] to order him to talk or [link]3[end link] to let the matter rest.";
		if calcnumber is 1: [talk]
			let bonus be (( Charisma of Player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			increase diceroll by bonus;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Charisma-Check)";
			if diceroll > 14:
				say "     With some carefully chosen words, you get Brutus to open up fully. A desperate look fills his eyes as he gives a shuddering breath, then says 'I care for him, more than I ever have for anyone. More than... for my life. But at the same time, I feel I should just grab him, hold him down and fuck him. Hard. Rough. Again, and again - all the time! Fill him with my seed! Never let him go. Never!' He huffs and growls as the words burst forth, clenching his fists hard to bring himself under control again. You can see droplets of purple blood drip down from his hands, showing that he is pushing hard enough to let his claws pierce their palms. Staring at his feet, Brutus then adds, 'I did not want either of you to know, think less of me. I will not act like a beast again. It is... under control.'";
				say "     He isn't able to lie right now, not consciously, but... the slow drip of blood from both his clenched fists tells you that Brutus is deceiving himself. He seems to be barely holding on to his composure, and is hurting himself to manage even that. This might escalate badly, so you have little choice but to expressly forbid him from acting on those impulses. As you do so, the amulet glows briefly in purple light and gets noticeably warm for a second. You can feel a tingle run down your spine as the controlling magic snaps tight around Brutus's mind, straining to enforce your ruling. Something tells you the constant resistance of his deep-seated urges will put greater wear on it than all the random outbursts and flare-ups to escape by the original, evil Brutus.";
				LineBreak;
				say "     Well, Brutus should be under control now, but he'll still be tearing himself up inside. Just suppressing issues is seldom the answer. You should better find a specialist to consult. Someone with a deeper understanding of demons - or maybe interspecies sex - to resolve this in a more healthy way for Brutus...";
				now Libido of David is 60; [Brutus controlled]
				if BrutusEscalationTimer > 0:
					now BrutusEscalationTimer is 0;
			else:
				say "     You try to get Brutus to open up, but he just evades your questions. There is a clear undertone of something being hidden from you, but for now, you're not getting any further. You'll have to try again later, or straight out command him to tell you.";
		else if calcnumber is 2: [command]
			say "     Not in the mood to draw things out of Brutus slowly, you just grasp your amulet and order him to tell you the truth - all of it. Through clenched teeth, the demon replies, 'I care for him, more than I ever have for anyone. More than... for my life. But at the same time, I feel I should just grab him, hold him down and fuck him. Hard. Rough. Again, and again - all the time! Fill him with my seed! Never let him go. Never!' He huffs and growls as the words burst forth, clenching his fists hard to bring himself under control again. You can see droplets of purple blood drip down from his hands, showing that he is pushing hard enough to let his claws pierce their palms. Staring at his feet, Brutus then adds, 'I did not want either of you to know, think less of me. It is... under control.'";
			say "     He isn't able to lie right now, not consciously, but... the slow drip of blood from both his clenched fists tells you that Brutus is deceiving himself. He seems to be barely holding on to his composure, and is hurting himself to manage even that. This might escalate badly, so you have little choice but to expressly forbid him from acting on those impulses. As you do so, the amulet glows briefly in purple light and gets noticeably warm for a second. You can feel a tingle run down your spine as the controlling magic snaps tight around Brutus's mind, straining to enforce your ruling. Something tells you the constant resistance of his deep-seated urges will put greater wear on it than all the random outbursts and flare-ups to escape by the original, evil Brutus.";
			LineBreak;
			say "     Well, Brutus should be under control now, but he'll still be tearing himself up inside. Just suppressing issues is seldom the answer. You should better find a specialist to consult. Someone with a deeper understanding of demons - or maybe interspecies sex - to resolve this in a more healthy way for Brutus...";
			now Libido of David is 60; [Brutus controlled]
			if BrutusEscalationTimer > 0:
				now BrutusEscalationTimer is 0;
		else:
			say "     It shouldn't be that important, you think to yourself, and leave things as they are.";
	else if Libido of David is 60: [controlled, David doesn't know]
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon groans and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Thank you for ensuring that - he isn't hurt.' There is a slight crunch as the claws on his feet dig into the ground and leave several short furrows in it before Brutus stops himself. Realizing that things are just bubbling away under the surface of his mind, you ask him to tell you how bad it is - and the demon allows himself a howl in frustration. 'It just gets stronger. Always stronger. I feel I should just grab him, hold him down and fuck him. Hard. Rough. Again, and again - all the time! Fill him with my seed! Never let him go. Never!' He huffs and growls as the words burst forth, clenching his fists hard to bring himself under control again. You can see droplets of purple blood drip down from his hands, showing that he is pushing hard enough to let his claws pierce their palms.";
		say "     Staring at his feet, Brutus adds after a moment, 'Please, master - do not let me loose, ever. And keep this from David, please. I will endure, as long as I can be with him. It would... break me, if he saw this side of me and... left.' It is hard to watch the desperation in his being shine out, now that he doesn't hide it. Almost unbelievable, what one can endure out of love. Just suppressing these issues is clearly not the answer. You should better find a specialist to consult. Someone with a deeper understanding of demons - or maybe interspecies sex - to resolve this in a more healthy way for Brutus...";
	else if Libido of David is 61: [controlled, David knows]
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon groans and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Thank you for ensuring that - he isn't hurt.' There is a slight crunch as the claws on his feet dig into the ground and leave several short furrows in it before Brutus stops himself. Realizing that things are just bubbling away under the surface of his mind, you ask him to tell you how bad it is - and the demon allows himself a howl in frustration. 'It just gets stronger. Always stronger. I feel I should just grab him, hold him down and fuck him. Hard. Rough. Again, and again - all the time! Fill him with my seed! Never let him go. Never!' He huffs and growls as the words burst forth, clenching his fists hard to bring himself under control again. You can see droplets of purple blood drip down from his hands, showing that he is pushing hard enough to let his claws pierce their palms.";
		say "     Staring at his feet, Brutus adds after a moment, 'Please, master - do not let me loose, ever. I will endure, as long as I can be with him. Unbelievable that he wants to be close, even though he has seen the beast inside. It would... break me, if I did something to him.' It is hard to watch the desperation in his being shine out, now that he doesn't hide it. Almost unbelievable, what one can endure out of love. Just suppressing these issues is clearly not the answer. You should better find a specialist to consult. Someone with a deeper understanding of demons - or maybe interspecies sex - to resolve this in a more healthy way for Brutus...";
	else if Libido of David is 62: [Talked with Nermine about sharing Brutus with David - refused]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Your purple demon groans in lust and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Please, let us find a way to make sure I can be with him forever.' His eyes search out the amulet hanging around your neck and Brutus indicates to it with a large clawed hand, 'Nermine is right, if he was my master too, the desire to dominate him would surely vanish. Understand, if one of my kind has accepted a lord - there is no doubt, no struggle - you obey and live out his will. And... David has my heart, so that is what I want to do.' The tall demon's eyes focus on you with blazing intensity, then he kneels, lowering his head in submission as he says, 'I know it is a lot to ask, to share control, share your power - but please, [if Player is purefemale]mistress[else]master[end if]... I feel incomplete, without him. I want to be his. Let me fuck Nermine's pet, let us do the ritual. This, I beg you to allow.'";
		say "     Having made his case, Brutus stands back up and takes his position by your side again, falling back into his task of serving as a bodyguard. Being your demonic companion, bound by magic and sworn to service out of thanks for freeing him from evil, he doesn't expect a discussion or anything - he simply gets back on duty and leaves you to ponder the words on your own. Maybe you should indeed visit Nermine again and let him pay her price. A happy ending for the unlikely lovers would be a nice thing to see...";
	else if Libido of David is 63: [Ritual by Nermine is ready (sharing Brutus with David)]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Although maybe it is mixed a bit right now with lust for someone else right now, as his next words are, 'Thank you for letting me have the elf, [if Player is purefemale]mistress[else]master[end if]. His kind is desirable for us demons. To fuck one of the ancient enemy...' The purple demon gives an aroused grumble from his broad chest and a glistening drop of pre-cum forms at his cock-slit. 'But even though my lust for that elven boy and with his hole wrapped around my cock, the goal of being with David was always in the forefront of my mind. I can't wait to be with him, to be his, fully and forever. Please let us do the ritual in the bunker. Soon.";
	else if Libido of David is 64: [Talked with Lilith about sharing Brutus with David - refused]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Your purple demon groans in lust and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Please, let us find a way to make sure I can be with him forever.' Raising a large hand and flexing his clawed finger, he continues, 'I - I was almost ready to pay the price of that bitch Lilith - any price, really - to be with David. Thank you for being there with me. It would not... be right... to damn someone as her pet for my own desires. There must be another way, or...' Brutus's brows draw together and a look of intense thought crosses his face. 'Hmm, Lilith thinks I'm just a beast, something to ravage her captive into submission, damn him with my touch. But I'm not that, not anymore. I learned about pleasure, together with David, so... maybe we should go back.'";
	else if Libido of David is 65: [Talked with Lilith about sharing Brutus with David - freed Liam]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Your purple demon groans in lust and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Please, let us find a way to make sure I can be with him forever.' Raising a large hand and flexing his clawed finger, he continues, 'I - I was almost ready to pay the price of that bitch Lilith - any price, really - to be with David. Thank you for being there with me. I needed that reminder. Now... at least Liam is free, that's what counts. And we will find another way, hopefully.'";
	else if Libido of David is 66: [Ritual by Lilith is ready (sharing Brutus with David)]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Although maybe it is mixed a bit right now with lust for someone else right now, as his next words are, 'Thank you for trusting me with Liam. And in making things pleasurable for the both of us, Lilith got what she asked for, but... not what she wanted. Hah... he was such a hot fuck!' The purple demon gives an aroused grumble from his broad chest and a glistening drop of pre-cum forms at his cock-slit. 'But even through my lust for him, with his hole wrapped around my cock, the goal of being with David was always in the forefront of my mind. I can't wait to be with him, to be his, fully and forever. Please let us do the ritual in the bunker. Soon.";
	else if Libido of David is 67: [refused both Lilith and Nermine]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. Your purple demon groans in lust and a pleading expression fills his eyes. Then he says, 'I care for him, more than I ever have for anyone. More than... for my life. Please, let us find a way to make sure I can be with him forever.' His eyes search out the amulet hanging around your neck and Brutus indicates to it with a large clawed hand, 'Nermine is right, if he was my master too, the desire to dominate him would surely vanish. Understand, if one of my kind has accepted a lord, a master - there is no doubt, no struggle - you obey and live out his will. And... David has my heart, so that is what I want to do.' Brutus shrugs as he adds, 'Lilith's deal will mean roughly the same, I expect. Though with her, I'd have to fuck a helpless man, not a willing pet, like with Nermine. It angers me that she thinks I'm just a beast to ravage her captive into submission. Damn him with my touch. But I'm not that, not anymore. I learned about pleasure, together with David. So... hm, maybe maybe we should go back there after all, show her where she's wrong.'";
	else if Libido of David is 68: [David and Brutus are tied together now - happy couple]
		say "     As you bring your soldier friend up, Brutus's large shaft grows and throbs, showing his uncontrolled desire for the human he cares so much about. You can hear the excitement tremble in his voice as he says, 'Being with David is just amazing. I love him, more than I can say - and now I know I can be there for him, always. He's so small and human, but so incredibly sexy. And now that he's my master too, I always know where he is. I'll protect him, no matter what.' The string of pre-cum oozing from his cock-slit tells you that there are quite a few other things he'll do with David when they next have some alone time...";
	else if Libido of David is 82: [fucked David dominantly, slipping into that character]
		say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David now. The demon immediately says, 'I really like him - a lot. David is in my thoughts all the time, his smell, holding him, fucking him hard and breeding him.' There is a slight pause before he adds, 'I... had feared he might be frightened by the urges that grew inside me since getting to know him, but when I finally couldn't hold back, he liked it! Whimpering like a proper little slut. Taking it as hard as I want. He loves being mine. And David is precious to me, he is MINE! I just want to keep him and fill him with my seed every chance I get.' Instantly springing a massive erection, the demon grunts in lust, almost ready to just stalk off and make use of his human boytoy right now.";
		LineBreak;
		say "     You can't help but feel a little bit of concern about the way your demonic companion has started acting and talking lately. It's... uncharacteristic for the purple giant, with him having been pretty gentle, if very direct, since you cleansed him from evil. He might be having some sort of relapse? Thinking about it a moment, you decide that...";
		LineBreak;
		say "     [link](1)[as]1[end link] - It's surely nothing. Let them have their kinky fun. David wasn't really hurt, just roughly fucked - and he did enjoy it, after all.[line break]";
		say "     [link](2)[as]2[end link] - This demands intervention. Surely Brutus will see that he's acting a lot like he did before, and that he's drawing David into it as well now somehow.[line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to let them have their fun or [link]2[end link] to do an intervention.";
		if calcnumber is 1: [do nothing]
			LineBreak;
			say "     Shrugging, you tell the demon to have fun, but take care not to hurt David. 'Never that,' Brutus replies, 'I truly care for David, more than anything else. He's mine and will be safe with me. Always.' A bit of inner fire seems to flare up in Brutus's eyes as he says the last word. You get the feeling that a decision has been made that no one and nothing can change now.";
			now Libido of David is 83;
		else if calcnumber is 2:
			say "     Commanding Brutus to stop and calm himself, the demon freezes in his tracks and looks at you blankly for a moment, then just curious as his arousal fades away and he waits for your further orders. You tell him to really think about what he did to David. How similar his behavior is starting to become to his previous self. That he did hurt his friend with the rough sex, no matter how much pleasure he also gave him. And finally, to realize that David seems to have been influenced by him somehow, pushed into a depth of submissiveness he never showed before.";
			say "     Brows drawing together in thought, Brutus trembles and twitches with each new sentence you speak, as if struck in his very core. Finally, he gives an anguished howl and bellows, 'What have I done?! You're right, master! The beast is still inside me, pushing me to... corrupt his love, our love!' His hands clench as the purple giant seems to fight with himself, snarling in anger, and drops of purple blood start dripping from his fists as he digs his claws into their palms. Then he slams the ground in frustration, making it shake beneath your feet, and... stops suddenly. 'No. I can't hold them back. Not forever,' he groans, looking at the deep gashes in his palms, then to you, a pleading expression in his eyes. 'Master... please lock the beast inside me away. I - I tried to be strong, as not to shame you or frighten David, but I could not... the urges are just too strong. And even worse, it affected him. I can't bear the thought of changing David, making him... less. So please. Please!'";
			WaitLineBreak;
			say "     You have little choice but do as asked, expressly forbidding him from acting on those impulses. As you do so, the amulet glows briefly in purple light and gets noticeably warm for a second. You can feel a tingle run down your spine as the controlling magic snaps tight around Brutus's mind, straining to enforce your ruling. Something tells you the constant resistance of his deep-seated urges will put greater wear on it than all the random outbursts and flare-ups to escape by the original, evil Brutus.";
			say "     Well, Brutus should be under control now, but he'll still be tearing himself up inside. Just suppressing issues is seldom the answer. You should better find a specialist to consult. Someone with a deeper understanding of demons - or maybe interspecies sex - to resolve this in a more healthy way for Brutus...";
			now Libido of David is 60;
			if BrutusEscalationTimer > 0:
				now BrutusEscalationTimer is 0;
	else if Libido of David is 83: [wants to tell about the ritual he plans]
		say "     Brutus looks at you with an intense expression, then says, '[if Player is purefemale]Mistress[else]Master[end if]... as you know, I care a lot for David. I am yours and serve as your companion, but at the same time, I often think of him, worry that someone or something might take him from me.' The large demon's fist clenches as he seems to envision David being dragged off and his lips draw back in a slight snarl. 'I just want him safe. So please, will you allow me to perform a ritual that binds the amulet to him, as well as you? That will allow me to... know where he is. Always. Protect him no matter what.' He lowers his head a bit, showing submission, but the bright glow in his eyes never diminishes as he adds, 'It is your choice, as my [if Player is purefemale]mistress[else]master[end if]. But I think I could serve you... better, if you allowed this. Letting me be more focused. The jackal merchant in the mall you visited earlier to help capture me should have everything that is needed.' Brutus then proceeds to give you a short list of herbs and ingredients that he needs.";
		LineBreak;
		say "     It is clear that he has genuine feelings about David and does feel very attached to the young soldier. Still, the purple giant's careful choice of words to you just now makes you think that... there might be more to this. You should think carefully if you really do want to fulfill his request.";
		now Libido of David is 84;
	else if Libido of David is 84: [player knows about the ritual, hasn't gotten supplies yet]
		say "     Brutus looks at you with an intense expression, then says, '[if Player is purefemale]Mistress[else]Master[end if]... please grant me my boon - let us go to the jackal merchant in the mall and obtain the needed supplies to make sure David is safe, always. Allow me to protect him, no matter what.' He lowers his head a bit, showing submission, but the bright glow in his eyes never diminishes as he adds, 'It is your choice, as my [if Player is purefemale]mistress[else]master[end if]. But I think I could serve you... better, if you allowed this. Letting me be more focused.'";
		LineBreak;
		say "     It is clear that he has genuine feelings about David and does feel very attached to the young soldier. Still, the purple giant's careful choice of words to you just now makes you think that... there might be more to this. You should think carefully if you really do want to fulfill his request.";
	else if Libido of David is 85: [ritual supplies ready]
		if Player is not in bunker:
			say "     Brutus nods deeply to you and gives a lusty grunt from the depth of his throat, then says, 'Thank you for getting the ritual ingredients, [if Player is purefemale]mistress[else]master[end if]. I look forward to linking the amulet to David. He'll be... safer that way.' You can see his mighty shaft throb and grow as Brutus's thinks about his human friend. A big droplet of pre-cum forms at the slit of the large cockhead, and you can't help but watch as it gets heavier and heavier, then drips to the ground slowly. The purple giant continues, 'Let us return to the bunker soon, please. I long to be together with David always, as we will be.'";
		else if Player is in Bunker and David is not in bunker:
			say "     Brutus nods deeply to you and gives a lusty grunt from the depth of his throat, then says, 'Thank you for getting the ritual ingredients, [if Player is purefemale]mistress[else]master[end if]. I look forward to linking the amulet to David. He'll be... safer that way.' You can see his mighty shaft throb and grow as Brutus's thinks about his human friend. A big droplet of pre-cum forms at the slit of the large cockhead, and you can't help but watch as it gets heavier and heavier, then drips to the ground slowly. The purple giant lets his gaze wander over the rows of beds down here, then he continues, 'Please invite David down here again. This is the ideal place to perform the ceremony.'";
		else:
			say "     Brutus nods deeply to you and gives a lusty grunt from the depth of his throat, then says, 'Thank you for getting the ritual ingredients, [if Player is purefemale]mistress[else]master[end if]. I look forward to linking the amulet to David. He'll be... safer that way.' You can see his mighty shaft throb and grow as Brutus's thinks about his human friend. A big droplet of pre-cum forms at the slit of the large cockhead, and you can't help but watch as it gets heavier and heavier, then drips to the ground slowly. [bold type]The purple giant lets his gaze wander over the rows of beds down here, focusing on the one on which David sits and reads a book at the moment. He continues, 'Will you give me the amulet now and let me do the linking ritual?'[roman type][line break]";
			if Player consents:
				LineBreak;
				say "     Well, you've let him get the supplies, so why not allow Brutus to do his ritual right now. Slipping the amulet over your head, you hand it to the large purple demon, who bows his head and says, 'Thank you, [if Player is purefemale]mistress[else]master[end if]. I will forever celebrate the day you caught me.' And with that, he holds out his hand, letting the small bag of ritual ingredients appear again in a small cloud of purple smoke. Clutching the amulet and bag with one of his large clawed hands, the demon then strides over towards David, his massive shaft already half-hard and dripping from the anticipation of being with his human lover again.";
				say "     Looking up from his book, David finds himself face to face with the massive pole of man-meat a moment later, at first having a kind of 'deer in the headlights' look and more or less automatically licking his lips. 'Hello Brutus, nice to see you,' the human soldier says and looks up at the demon for a second, then his gaze is inevitably drawn back to the erection so prominently pointing his way. Giving a lusty, 'Hello my love, my slut,' the purple giant steps up close to where David is sitting, then just reaches out for the young man's head, pulling it towards his crotch - which makes David immediately open his mouth again to slide his lips around Brutus's cockhead, eagerly suckling on it.";
				WaitLineBreak;
				say "     After enjoying the oral attention of his human partner for a minute or two, the large demon eventually pats David's head as he cups it with his large hand and says, 'You like servicing me, and riding my cock, don't you, my slutty little human.' In reply David just looks up at him, still with his lips on Brutus's maleness and his tongue dancing over the demon's mushroom cockhead - then he nods with a little slurp from the pre-cum he's sucking from his otherworldly lover's cock. Grunting in pleasure, Brutus lets him continue for a moment longer, then grips the human under his arms and just pulls him to his chest, aggressively kissing David on the lips. When he comes up for air a moment later, the demon continues in a surprisingly smooth voice, 'I can make it so we can do this all the time. I will protect you, always, and you will serve me as you do now. Would you like that?'";
				say "     'Of course, mas- er... Brutus,' David sighs in reply, clearly enjoying being manhandled and held by this large and powerful being. You can see the tent in his pants press right against the demon's muscled abs. The two of them share another kiss, then Brutus sets him down and grabs Nermine's bag from where he dropped it on the neighboring bed. The demon proceeds to pull out a large bowl, then a packet of some sort of powder that gets poured into the bowl, followed by multiple different herbs and then by him milking his massive shaft to add an enormously generous amount of pre-cum to the mixture. Brutus instructs his human lover to stir it all up, creating a sticky black paste - which is then used to paint a large pentagram on the ground, with David's bed as its center. Setting up a thick red candle at each point of the star, the purple demon ignites them all together with a wave of his hand.";
				WaitLineBreak;
				say "     'Strip!' comes the demon's lusty bellow next, followed by him growling, 'I'm gonna pound your tight little butt so hard!' David's hands fly to obey his dominant partner's request, pulling the tight shirt off his muscled chest and throwing it aside aimlessly, already moving to undo his pants before it even lands on the floor. With the clink of his belt buckle hitting the floor an eye-blink later, the young man is fully naked, hard and ready to be taken - which Brutus does right away, simply snatching the human up in his arms. Lips pressed together as they share a hungry kiss, David is carried to the bed by his demon lover, then lowered to lie on his back. 'Beg for me to fuck you!' Brutus grunts loudly as he holds David down possessively, one large hand covering the man's left pec.";
				say "     'Please, take me. Fuck you like you want to! I need it, hard and deep!' David moans obediently, by now well trained to respond to his otherworldly lover's domineering requests. 'That's a good slut,' Brutus replies with a chuckle, then takes hold of his mighty shaft and lines it up with the young soldier's pucker. He rubs the cockhead over David's hole, leaving a smear of pre-cum, then milks even more of the thick liquid from his manhood to spread it all over the shaft, lubing it up till the pole glistens with wetness. And then, quite suddenly, the demon gives a roaring bellow as he thrusts deep into his human partner, making David buck and thrash on the bed, gripping the sheets under him tightly with both hands. But the human's initial whimper almost immediately leads over into an aroused moan, the pleasure of serving his demonic lover overwhelming the pain of having his hole stretched by a massive piece of cock-flesh.";
				WaitLineBreak;
				say "     When his massive erection finally is buried all the way in David's ass, Brutus bends over his friend and plays a long tongue over his nipples and pecs, then up over his neck before kissing him deeply. The awe-inspiring feat of actually being able to bottom out in the smaller human makes you once again aware just how much the nanites infusing everyone in this city have opened up the playing field sexually. David's hole definitely is more than a little stretchy these days, fitting tightly around that purple cock and yet effortlessly contracting to a little pink rosebud again as the demon pulls out again a moment later. 'I love you David,' Brutus groans as he comes back up from their kiss, then continues saying, 'You're just the best fuckhole I've ever had. Your willingness to be mine makes this so much better than anything else!'";
				say "     And with that, the purple giant pushes his hips forward again, sinking his shaft into the human's back door, whose pucker readily stretches to allow him entry. 'UuunnggghhHH! So big and warm!' David groans in arousal, panting rapidly as lifts his hips a bit and pushes himself down on the thick pole, eager to get more into his ass. Brutus chuckles as he watches the young man try fuck himself on his manhood, enjoying the submission and obedient behavior just as much as the actual penetration. 'That's it! Work for it, my lovely little slut!' comes his deep-voiced growl a moment later, followed by a short jab of his erection that makes David howl in lust.";
				WaitLineBreak;
				say "     David slowly slides himself deeper on Brutus's massive cock, showing his eager dedication by taking a position not easy for anyone but a gymnast and making both of them moan and groan in lust - but eventually, that isn't enough anymore for the demon. 'More!' he grunts to loudly, then bellows, 'I'll show you how to really fuck!' With that said, Brutus's hands grip David's hips tightly and he impales the human on his shaft fully in one rough pull, making him yelp with yet another forceful invasion of his insides. But Brutus doesn't stop there - he just keeps going, sliding his helplessly moaning partner up again and hammering him down against his hips - repeatedly and in a merciless tempo.";
				say "     There is something completely untamed and bestial in the way Brutus mates with David, without stop or pause until his cock erupts deep inside the young soldier's ass, pumping blast after blast of cum into him. 'You're mine!' he roars, snatching the young man to his chest in a tight embrace - while his cock is still buried balls-deep inside and pulses out spurts of demon seed. 'Yeah, I can feel you inside! So much, and so hot!' David gasps in reply, fulfilling his new role as needy fuckhole to perfection as he orgasms from the feeling of being bred. He groans loudly and sprays several spurts of cum between their almost touching chests, splattering the abs and pecs of both of them.";
				WaitLineBreak;
				say "     Still breathing hard from his orgasm and clutching David to his chest with one strong arm Brutus pats over the bed with his other hand, finding your amulet a moment later and raising it into the air by the leather cord it hangs from. A satisfied grin spreads over the demon's tooth-filled mouth, followed by him intoning a long and insanely tongue-twisting sequence of strange words. As he does so, the magical item starts to hum and glow visibly, the orb of brightness around it at first wavering a little bit, then expanding more and more. Finishing the intonation, the purple demon then continues in English, most likely to David's or your benefit. He says, 'I claim this man as mine, as he bears the mark of my seed deep inside him and has readily surrendered his will to mine,' followed by a kiss on the young man's lips. 'We'll be together forever now, my love, my slut, my David!'";
				say "     With his words still hanging in the air, the sphere of purple light expands to envelop them both and with a flash of brightness, both of them vanish in a cloud of smoke, with swirls through the air in a small vortex, being absorbed by the amulet as it drops onto the bed. After a moment of silence that fills the bunker after the two male's disappearance, you shake yourself out of your paralysis and walk over to the bed, taking the amulet into your possession again. It is pretty hot at first, having gained a glowing band of metal at the base of the tooth now, but that rapidly cools and soon is safe to touch. With interest, you realize that the upper end of Brutus's knocked-out tooth is now ringed by what must be the re-shaped remnant of David's dog tags, as you can see the stamped-in letters 'DAVID JACKSON' on the thin strip of metal.";
				now David is nowhere;
				now HP of David is 100;
				now Libido of David is 86;
			else:
				LineBreak;
				say "     You decide against Brutus's request, at least for now. It is clear that this disappoints the large being quite a bit, yet still he accepts the decision with little more than a, 'As you command.' The longing and lusty look that he throws at the human soldier shows nevertheless that the desire to follow his plan still burns brightly in your companion.";
	else if Libido of David is 86 or Libido of David is 87:
		say "     Brutus grunts lustfully and his mighty shaft throbs with a trickle of precum as you bring David up. 'He is now with me, always - safe and happy as my lover and slut... as he should be. I spend every moment I am not serving you with him, his tight hole wrapped around my shaft as he begs for more.'";
	if demon brute is not listed in companionList of Player:
		say "     With a sigh, you murmur the magic words Nermine told you, sending Brutus back into the amulet for now.";

to say DemonBruteSexMenu:
	if DBCaptureQuestVar is 5:
		project the figure of BrutusEvil_icon;
	else:
		project the figure of BrutusGood_icon;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your captured demon's mouth to good use.";
	[]
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Suck the demon brute's cock";
		now sortorder entry is 2;
		now description entry is "Suck him off.";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put your captured demon's mouth to good use.";
	[]
	if (DemonBruteStatus > 0):
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck your captured demon's pussy to make him cum.";
	[]
	if (DemonBruteStatus > 0 and Player is male):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the your captured demon's pussy with your cock.";
	[]
	if (DemonBruteStatus < 2 and Player is female):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride your captured demon's thick cock.";
	[]
	if (DBCaptureQuestVar > 5):
		choose a blank row in table of fucking options;
		now title entry is "Finger his ass";
		now sortorder entry is 7;
		now description entry is "Get Brutus off by fingering his ass.";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take the demon brute's ass";
		now sortorder entry is 8;
		now description entry is "Fill your captured demon's ass with your cock.";
	[]
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 9;
		now description entry is "Ride the thick cock of your captured demon.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[DemonBruteSex1]";
				else if (nam is "Suck the demon brute's cock"):
					say "[DemonBruteSex2]";
				else if (nam is "Have him lick your pussy"):
					say "[DemonBruteSex3]";
				else if (nam is "Finger his pussy"):
					say "[DemonBruteSex4]";
				else if (nam is "Fuck his pussy"):
					say "[DemonBruteSex5]";
				else if (nam is "Let him fuck your pussy"):
					say "[DemonBruteSex6]";
				else if (nam is "Finger his ass"):
					say "[DemonBruteSex7]";
				else if (nam is "Take the demon brute's ass"):
					say "[DemonBruteSex8]";
				else if (nam is "Let him fuck your ass"):
					say "[DemonBruteSex9]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DemonBruteSex1: [cock sucked by demon brute]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your own erect manhood. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your manhood a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus's erection some attention too. A smile on your lips, you tell him he may rub himself against you, tease your asshole a bit. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door, then starting to rub it up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";
			WaitLineBreak;
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings both his hands up to his massive erection, using them to jerk himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed into you. The force of his spurts alone is enough to push open your pucker and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and forms a puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
			NPCSexAftermath Player receives "AssFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit and sliding two fingers into his pussy, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your erect manhood. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your manhood a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus's pussy some attention too. A smile on your lips, you tell him he may rub himself against you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, straddling you with his knees on the ground beside your hips. Lowering his hips slightly, he brings his pussy lips against your shaft slowly, gasping as he feels the tip spread them a bit, then moves to rub himself up and down along its length. The hot nether lips of this infernal creature sliding over your skin, touching your cock and - almost - sliding over it from time to time, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum starting to shoot from your cock to splat down on your chest. After the first, Brutus gently pushes your shaft down a bit, putting its tip right against his opening and making the rest of your load shoot up into his pussy.";
			WaitLineBreak;
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings one of his hands to his dripping pussy, rubbing it and pushing in a finger or two to stimulate himself. Quickly getting the rest of the way to his own orgasm, he moans deeply, his shoulders shaking a bit as he starts dripping femcum from his pussy, intermixed with your load. It's quite a bit, running down over your crotch until it forms a small puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
			NPCSexAftermath Brutus receives "PussyFuck" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my asshole with your cock too... but only on the outside.' With a hungry growl, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your chest with a crunch, then starts rubbing up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed right into you. The force of his spurts alone is enough to push open your pucker and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and forms a puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
			NPCSexAftermath Player receives "AssFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
			say "     With an annoyed grumble at not being able to fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful groan accompanying long strings of cum you shoot down the demon's throat, directly into his stomach. As you stand there, holding the creature's head to your crotch and still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, he throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your lower legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex2: [suck demon cock]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and take hold of his thick, meaty shaft. You feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your companion's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, you slow down a bit, not wanting to get him off too quickly. Pulling back, you look up over his broad chest, one hand sneaking up to touch his impressive muscles while your other keeps slowly stroking his shaft. Keeping this up for a while, sometimes leaning down to lick his erection and tease it with your tongue, you keep Brutus going in this aroused state, getting more and more sensitive from the growing need to finally cum. In between moans, he soon starts giving you pleading looks.";
			WaitLineBreak;
			say "     That's enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. Chuckling at the relieved look on the demon's face, you tell him to clean you up, indicating the sticky white fluid running down your whole front.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell Brutus to resume guarding you.";
			else: [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to send him away again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
		else if DemonBruteStatus is 1: [herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and take hold of his thick, meaty shaft. You feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your companion's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, you slow down a bit, not wanting to get him off too quickly. Pulling back, you look up over his broad chest, then turn your attention to his pussy, one hand sneaking between his legs to touch its sensitive folds while your other keeps slowly stroking his shaft. Keeping this up for a while, sometimes leaning down to lick his erection and tease it with your tongue, you keep Brutus going in this aroused state, getting more and more sensitive from the growing need to finally cum. In between moans, he soon starts giving you pleading looks.";
			WaitLineBreak;
			say "     That's enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. His pussy isn't far behind on the sheer amount of femcum it produces, squirting over you and dripping on the ground to produce a puddle. Chuckling at the relieved look on the demon's face, you tell him to clean you up, indicating the sticky white fluid running down your whole front.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell Brutus to resume guarding you.";
			else: [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to send him away again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0: [male]
			say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
			say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			WaitLineBreak;
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
			say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
		else if DemonBruteStatus is 1: [herm]
			say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
			say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			WaitLineBreak;
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'Or would you rather want some attention somewhere else?' With that, you slide your hand lower, finding the pussy you gave your demon slave and stroking over its sensitive lips before sinking two fingers inside. The creature doesn't quite manage to suppress a moan at the stimulation of its unwanted female parts. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
			say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. His pussy isn't far behind on the sheer amount of femcum it produces, squirting over you and dripping on the ground to produce a puddle. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralCock" from Player;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex3: [pussy licked by demon brute]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus's erection some attention too. A smile on your lips, you tell him he may rub himself against you, tease your body a bit. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection nudging your nether lips apart slightly, then starting to rub it up and down over them. The hot member of this infernal creature sliding over your skin, touching sensitive folds and - almost - pushing in sometimes, drives your arousal through the roof. Moaning deeply, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your lust moves to a crescendo, a long satisfied moan marking your orgasm.";
			WaitLineBreak;
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings both his hands up to his massive erection, using them to jerk himself off. Quickly getting ready to cum, he puts the tip of his shaft in between your pussy lips - directly against your waiting opening - and blows a hot burst of demonic seed right into you. You can feel it shoot deep into your body, hitting your cervix, followed by another shot, and another until your vagina is filled up. Grunting, Brutus keeps shooting several more spurts of cum into you, some of it seeping into your womb but most splashing out of your cunt again to form a puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Brutus receives "OralPussy" from Player;
			NPCSexAftermath Player receives "PussyFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit and sliding two fingers into his pussy, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus's pussy some attention too. A smile on your lips, you tell him he may rub himself against you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - making his moist female folds brush against yours. Feeling his hot skin against yours - the large creature's parts rubbing your crotch - drives your arousal through the roof. Moaning deeply, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your lust moves to a crescendo, a long satisfied moan marking your orgasm.";
			WaitLineBreak;
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings one of his hands to his dripping pussy, rubbing it and pushing in a finger or two to stimulate himself. Quickly getting the rest of the way to his own orgasm, he moans deeply, his shoulders shaking a bit as he starts dripping femcum from his pussy. It's quite a bit, running down over your crotch until it forms a small puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Brutus receives "OralPussy" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on your back, spreading your legs invitingly. 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     Lying there on the ground, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my pussy with your cock too... but only on the outside.' With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then starts rubbing up against your crotch. The hot member of this infernal creature sliding over your skin, touching your pussy lips and - almost - parting them, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful scream marking your orgasm.";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting himself ready, he pushes it in between your pussy lips - as far as he can - and blows a hot burst of demonic seed right into you. You can feel it shoot deep into your body, hitting your cervix, followed by another shot, and another until your vagina is filled up. Your captive demon keeps shooting several more spurts of cum into you, some of it seeping into your womb but most splashing out of your cunt again to form a puddle between your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralPussy" from Player;
			NPCSexAftermath Player receives "PussyFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on your back, spreading your legs invitingly. 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful scream marking your orgasm. As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, the demon brute throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your legs.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "OralPussy" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex4: [finger his pussy]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0: [male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		else if DemonBruteStatus is 1: [herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and have him take hold of his thick, meaty shaft. With him holding it up, you fondle his balls for a second, then slide your hand deeper, brushing over the feminine folds right under them, which immediately makes him pant in lust. Getting on your knees between Brutus's legs, you grab his powerfully muscled thighs, pushing them a bit further apart to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his nether lips, you move them in and out, prompting some moans and gasps from him. Then you pull your hand out and show it to him, his female juices dripping from your fingers - until he licks them up with his forked tongue, that is.";
			say "     Getting back to pleasing the demon with your mouth and fingers, you fill your companion with bliss, with loud moaning and panting coming from him. He puts his clawed right hand to rest softly on your head, pulling you a bit tighter and directing your efforts. Not soon afterwards, Brutus has an explosive orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, femcum gushing out of his vagina and his cock spraying long ropes of cum to arc over you and land on the ground behind.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion and the floor behind where you were kneeling. Phew - he really cums out a lot, with both his thick shaft and the pussy. There's a big pattern of white splatters on the ground and the femcum is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. There's a big pattern of white splatters on the ground and the femcum is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";
		else if DemonBruteStatus is 2: [female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up again. Running your hands up the insides of his legs, you move on to his crotch, brushing over the feminine folds waiting for you there, which immediately makes him pant in lust. Getting on your knees between Brutus's legs, you grab his powerfully muscled thighs, pushing them a bit further apart to allow yourself access to the swollen pussy between them. Sticking two fingers in between his nether lips, you move them in and out, prompting some moans and gasps from him. Then you pull your hand out and show it to him, his female juices dripping from your fingers - until he licks them up with his forked tongue, that is.";
			say "     Getting back to pleasing the demon with your mouth and fingers, you fill your companion with bliss, with loud moaning and panting coming from him. He puts his clawed right hand to rest softly on your head, pulling you a bit tighter and directing your efforts. Not soon afterwards, Brutus has an explosive orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, femcum gushing out of his vagina.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even femcum from his pussy. It is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even femcum from his pussy. It is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0: [male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		else if DemonBruteStatus is 1: [herm]
			say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
			WaitLineBreak;
			say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		else if DemonBruteStatus is 2: [female]
			say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
			WaitLineBreak;
			say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
			LineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex5: [fuck his pussy]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0: [male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		else if DemonBruteStatus is 1: [herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to lie on the ground. Smiling, he does so, the spade-tipped sticking out from under him moving through the air in slow arcs, as if beckoning you. Getting on your knees between Brutus's legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Stroking over his sensitive nether lips, then sticking in two fingers between them, you push in and out, making your demon companion give a very satisfied moan. Stimulating him with just your hand has Brutus trembling with arousal, his claws leaving furrows in the ground left and right as he grips it to hold on to something.";
			say "     Oh, it'll be fun to really fuck him. A grin on your face, you rub your cock against his member, feeling him hotly against yourself, then guide it further down, stroking over his large balls to arrive at the herm demon's nether lips. Sliding the tip of your shaft up and down between them for a moment, you finally press in, sinking your manhood into his moist depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and compliment him on it, making Brutus's face blush an interesting shade of purple.";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. He gives you a pleased grunt at that - seems like your demon companion likes it a bit rough. Eager to oblige, you start thrusting in and out quickly, slamming back into him hard again and again. Beside being a tight fuck, you feel something of an additional, special satisfaction in dominating this powerful a creature, feeling his inner passages spread around your shaft as he moans for you to fuck him and take him harder. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina. That lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside Brutus's pussy as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a while, listening to the demon's breathing.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. Pleased by the satisfied look on his face, you thank Brutus for his service, then tell him to resume guarding you.";
			else: [back into the amulet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. Pleased by the satisfied look on his face, you thank Brutus for his service, then intone the magic words to send him away. Still lying on the ground, he turns into a cloud of purple smoke, then vanishes into your amulet.";
			NPCSexAftermath Brutus receives "PussyFuck" from Player;
		else if DemonBruteStatus is 2: [female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to lie on the ground. Smiling, he does so, the spade-tipped sticking out from under him moving through the air in slow arcs, as if beckoning you. Getting on your knees between Brutus's legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Stroking over his sensitive nether lips, then sticking in two fingers between them, you push in and out, making your demon companion give a very satisfied moan. Stimulating him with just your hand has Brutus trembling with arousal, his claws leaving furrows in the ground left and right as he grips it to hold on to something.";
			say "     Oh, it'll be fun to really fuck him. A grin on your face, you rub your cock against sensitive pussy lips, running its tip up and down between them before pressing in, sinking your manhood into his moist depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and compliment him on it, making Brutus's face blush an interesting shade of purple.";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. He gives you a pleased grunt at that - seems like your demon companion likes it a bit rough. Eager to oblige, you start thrusting in and out quickly, slamming back into him hard again and again. Beside being a tight fuck, you feel something of an additional, special satisfaction in dominating this powerful a creature, feeling his inner passages spread around your shaft as he moans for you to fuck him and take him harder. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside Brutus's pussy as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a while, listening to the demon's breathing.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, even just femcum. It is still dripping out of him, running down over his crotch to join the puddle on the ground between his legs. Pleased by the satisfied look on Brutus's face, you thank him for his service, then tell him to resume guarding you.";
			else: [back into the amulet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, even just femcum. It is still dripping out of him, running down over his crotch to join the puddle on the ground between his legs. Pleased by the satisfied look on his face, you thank Brutus for his service, then intone the magic words to send him away. Still lying on the ground, he turns into a cloud of purple smoke, then vanishes into your amulet.";
			NPCSexAftermath Brutus receives "PussyFuck" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0: [male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		else if DemonBruteStatus is 1: [herm]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub your cock against his, then guide it further down, stroking over his large balls to arrive at the herm demon's nether lips. Sliding the tip of your shaft up and down between them for a moment, you finally press in, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina. That lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			NPCSexAftermath Brutus receives "PussyFuck" from Player;
		else if DemonBruteStatus is 2: [female]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub the tip of your erection up and down over his nether lips, then press in between them, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "PussyFuck" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex6: [player pussy fucked]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you could almost just let him keep going like this... but no, it's time for the main event now. A smile on your lips, you tell him he may use that thick cock of his to fuck you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection nudging your nether lips apart slightly. Brutus's face close to yours, he says 'With pleasure, my master', then puts his arms forward to hold you softly as he presses forward, entering your body with his hard shaft.";
			say "     It's big - very big, spreading your pussy lips around it, then sinking deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take. Thankfully, he seems to know that very well, only slowly moving deeper and often stopping to just hold you so you can get used to it. Finally he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. Panting deeply, you grab his head and pull it close, finding his lips with yours. It's amazing to have this huge, muscular creature on top of you, feeling him deep inside you - and being absolutely sure that you're safe in his arms.";
			WaitLineBreak;
			say "     A few minutes of making out with Brutus later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if Player is male]and with a loud moan, your [Cock of Player] shaft sprays cum all over your chest[else if Player is female]and with a loud moan, you orgasm, femcum running down from your stretched cunt[else]and with a loud moan, your body shakes in orgasm[end if].";
			say "     His duty at getting you off fulfilled, the demon gives something like a very deep purr in satisfaction, his pleasure at serving his master quite obvious. He keeps fucking you while you ride out your orgasm, getting a bit faster than before in his urge to join you. Soon, he reaches his own climax - and with a loud grunt, he begins to pump your insides full of his seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around Brutus's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Player receives "PussyFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck me.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes off slowly to tease the demon a bit, then lie down on your back spread your legs invitingly. 'Eat me out first.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     With the musclebound creature eating you out, wiggling his tongue inside your vagina, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow hurting you by just slamming inside with force as he wanted. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then start to slowly press forward. The hot member of your infernal servant spreads your pussy lips around it, then sinks deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
			say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if Player is male]and with a loud moan, your [Cock of Player] shaft sprays cum all over your chest[else if Player is female]and with a loud moan, you orgasm, femcum running down from your stretched cunt[else]and with a loud moan, your body shakes in orgasm[end if]. His duty at getting you off fulfilled, the constraints on the demon's libido fall away and he starts fucking you even harder to get himself off. Soon, he reaches his climax too - and with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";
			else: [back into the amulet]
				say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Player receives "PussyFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex7: [finger his ass]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
		say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
		say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
		WaitLineBreak;
		say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus's well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening, stretching it slowly until you can add another finger, and another. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
		say "     You keep going, stroking that same spot a few more times, then slide your other hand in between his legs to fondle his balls at the same time. The large orbs are very warm to your touch, heavy with the stored-up load inside them. Then suddenly, accompanied by a lust-filled roar by the demon, you feel them pulse under your fingers. Seems like getting that bit of extra stimulation at the same time as you working on his ass drove him over the edge. Holding on to the large cum-factories, you keep stroking them as Brutus shoots burst after burst of his demon seed on the ground below. His anal muscles twitch in rhythm to his balls, gripping your fingers tightly.";
		WaitLineBreak;
		if demon brute is listed in companionList of Player: [is the active pet]
			say "     As the demons orgasm abates, you caress his cheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really creamed the floor, creating a large puddle of sticky cum. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		else: [back into the amulet]
			say "     As the demons orgasm abates, you caress his cheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really creamed the floor, creating a large puddle of sticky cum. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";
	else if DemonBruteStatus is 2: [female]
		say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
		say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
		WaitLineBreak;
		say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus's well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening, stretching it slowly until you can add another finger, and another. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
		say "     You keep going, stroking that same spot a few more times, then slide your other hand in between his legs to fondle his pussy at the same time. His female folds are swollen and moist, showing the state of his heightened arousal. Then suddenly, accompanied by a lust-filled roar by the demon, you feel them get even wetter, gushing femcum over your fingers. Seems like getting that bit of extra stimulation at the same time as you working on his ass drove him over the edge. Keeping your hand between his legs, you keep stroking his pussy lips as Brutus's femcum drips on the ground below. His anal muscles twitch rhythmically around your fingers, gripping them tightly.";
		WaitLineBreak;
		if demon brute is listed in companionList of Player: [is the active pet]
			say "     As the demons orgasm abates, you caress his asscheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really cums a lot, even femcum, creating a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		else: [back into the amulet]
			say "     As the demons orgasm abates, you caress his asscheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really cums a lot, even femcum, creating a puddle on the ground. Looking up from the floor, you find Brutus's azure blue eyes focused on you in an intense gaze. 'Thank you, master,' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";
	else:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex8: [fuck his ass]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus's well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening and start stretching him in preparation. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
			say "     You keep going, stroking that same spot a few more times, then ask him what he wants you to do next. 'Fuck me, master. Please,' the demon answers in between moans and he rocks back a little bit to bring his ass in contact with your crotch. Who could resist this... taking hold of your erection to aim it at Brutus's pucker, you're against his opening in a second, pushing forward till it stretches around your invading member and allows you to sink deeper into his warm depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. You even have to slow down a bit so you don't just cum before you're all the way in. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a moment to get yourself back under control, taking deep breaths and stroking Brutus's back and hips.";
			WaitLineBreak;
			say "     With you just resting your cock where it is buried in Brutus's rear, cooling off, your demon companion gets a bit impatient after a while and you can feel him rocking forward and backward slightly to fuck himself on your shaft. Seems like it's time to take the reins again and give him what he so desperately needs. Pulling back till only the head of your cock is left inside him, you start thrusting in and out, making Brutus moan loudly each time you bottom out inside him. Following pants of 'Harder! Faster!', your movements speed up to oblige him and soon you're really pounding the demon's ass, your hips slapping against his cheeks with each thrust. Fucking Brutus with hard and deep strokes, you keep hitting his prostate, filling your companion with bliss. His long tail rubs against you as you fuck him, sometimes wrapping around you to pull you closer.";
			say "     The demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat on the ground below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really creamed the floor, creating a large puddle of sticky cum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had,' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really creamed the floor, creating a large puddle of sticky cum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had,' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and mutter the magic words to send him back into the amulet.";
			NPCSexAftermath Brutus receives "AssFuck" from Player;
		else if DemonBruteStatus is 2: [female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus's well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening and start stretching him in preparation. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
			say "     You keep going, stroking that same spot a few more times, then ask him what he wants you to do next. 'Fuck me, master. Please,' the demon answers in between moans and he rocks back a little bit to bring his ass in contact with your crotch. Who could resist this... taking hold of your erection to aim it at Brutus's pucker, you're against his opening in a second, pushing forward till it stretches around your invading member and allows you to sink deeper into his warm depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. You even have to slow down a bit so you don't just cum before you're all the way in. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a moment to get yourself back under control, taking deep breaths and stroking Brutus's back and hips.";
			WaitLineBreak;
			say "     With you just resting your cock where it is buried in Brutus's rear, cooling off, your demon companion gets a bit impatient after a while and you can feel him rocking forward and backward slightly to fuck himself on your shaft. Seems like it's time to take the reins again and give him what he so desperately needs. Pulling back till only the head of your cock is left inside him, you start thrusting in and out, making Brutus moan loudly each time you bottom out inside him. Following pants of 'Harder! Faster!', your movements speed up to oblige him and soon you're really pounding the demon's ass, your hips slapping against his cheeks with each thrust. Fucking Brutus with hard and deep strokes, you keep hitting his prostate, filling your companion with bliss. His long tail rubs against you as you fuck him, sometimes wrapping around you to pull you closer.";
			say "     The demon brute is the first one to orgasm from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be spurts of fluid hit the ground below. Also feeling his anal muscles twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had,' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had,' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and mutter the magic words to send him back into the amulet.";
			NPCSexAftermath Brutus receives "AssFuck" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'How does it feel to be the bitch for once? My private little fuckhole.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat on the ground below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			NPCSexAftermath Brutus receives "AssFuck" from Player;
		else if DemonBruteStatus is 2: [female]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
			WaitLineBreak;
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be spurts of fluid hit the ground below. Also feeling his anal muscles twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			else: [back into the amulet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Brutus receives "AssFuck" from Player;
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex9: [player ass fucked]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, reveling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			WaitLineBreak;
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then get down on the ground on all fours, wiggling your ass a bit and give it a light slap as you tell him to fuck you. 'With pleasure, master,' he says, leaning downward and putting his two massive hands on your cheeks, spreading them. Bringing his long forked tongue to your crack without any hesitation, he licks over your back door, then starts to push it against your pucker. The wet appendage slides inside you, probing and wiggling in your passage and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     With the musclebound creature eating you out, playing with your hole, you could almost just let him keep going like this... but no, it's time for the main event now. A smile on your lips, you look over your shoulder tell him he may use that thick cock of his to fuck you. With an eager, lust-filled grunt, the demon moves tight against you, gripping your cheeks, and you can feel the warmth of his erection rest against your back. Then he hesitates... until suddenly you feel yourself being picked up, turned around and then lowered to lie on your back with amazing gentleness. Brutus is on top of you in a second, his body covering yours as he lifts and spreads your legs. 'With pleasure, my master,' he says, licking your neck with his forked tongue and putting his arms around you to hold you softly. Then he moves forward, his massive member slowly increasing its pressure against your asshole until the head pushes open your pucker, stretching it wide as he enters your body with his hard shaft.";
			say "     It's big - very big, making you gasp from the initial penetration. Then, as it sinks deeper into your body, pleasant feelings prevail as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take. Thankfully, he seems to know that very well, only slowly moving deeper and often stopping to just hold you so you can get used to it. Finally he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. Panting deeply, you grab his head and pull it close, finding his lips with yours. It's amazing to have this huge, muscular creature on top of you, feeling him deep inside you - and being absolutely sure that you're safe in his arms.";
			WaitLineBreak;
			say "     A few minutes of making out with Brutus later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if Player is male]and with a loud moan, your [Cock of Player] shaft sprays cum all over your chest[else if Player is female]and with a loud moan, you orgasm, femcum running down from your stretched cunt[else]and with a loud moan, your body shakes in orgasm[end if].";
			say "     His duty at getting you off fulfilled, the demon gives something like a very deep purr in satisfaction, his pleasure at serving his master quite obvious. He keeps fucking you while you ride out your orgasm, getting a bit faster than before in his urge to join you. Soon, he reaches his own climax - and with a loud grunt, he begins to pump your bowels full of his seed. Easily filling your asshole and intestines, the remaining cum starts squirting out around the demon's thick cock as he thrusts into you a few more times. As he finally removes his cock with a loud *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a white-ish pool under you.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			else: [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus's form, still kneeling obediently beside you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
			NPCSexAftermath Player receives "AssFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	else: [evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
			say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck my ass.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes off slowly to tease the demon a bit, then get down on all fours and wave your ass invitingly at him. 'Eat me out first.'";
			say "     With an annoyed grumble at still not fucking you, the demon obeys, leaning forward and putting two massive hands on your cheeks, spreading them. Bringing his long forked tongue to your crack, he licks over your back door, then starts to push it against your pucker. The wet appendage slides inside you, probing and wiggling in your passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			WaitLineBreak;
			say "     With the musclebound creature eating you out, playing with your hole, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. Slapping your ass - just light enough not to leave marks (as hard as the binding spell allows), the brutish demon moves up behind you. You can feel the thick width of his erection hotly against your back for a moment, then he aims it lower and prods his massive member against your asshole. With the weight of this large creature behind it, the demon's shaft pushes into your body, spreading your pucker wide around its girth and slowly sinking further inside. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster, as he's prohibited from really hurting you. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
			say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, creating a very pleasurable feeling. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your ass now coming in rapid succession. Soon, this drives your arousal over the edge [if Player is male]and with a loud moan, your [Cock of Player] shaft sprays cum all over the ground under you[else if Player is female]and with a loud moan, you orgasm and start dripping femcum on the ground under you[else]and with a loud moan, your body shakes in orgasm[end if]. Your anal passage twitching and contracting around the demon's shaft makes him reach his climax too - with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. Easily filling your asshole and intestines, the remaining cum starts squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a white-ish pool under you.";
			WaitLineBreak;
			if demon brute is listed in companionList of Player: [is the active pet]
				say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";
			else: [back into the amulet]
				say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
			NPCSexAftermath Player receives "AssFuck" from Brutus;
		else if DemonBruteStatus is 2: [female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		else:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

Section 3 - Evil Demon Brute Path

[This path is only meant for the natural and uncleansed Demon Brute, and is only supposed to trigger if he's NOT cleansed. If he, at some point, is purified at the church in the middle of this questline, it will come to an immediate stop and the usual Brutus scenes will follow instead. The Evil path will be abandoned for good, and there are no special benefits planned for doing this before cleansing the Demon Brute.]

Table of GameEventIDs (continued)
Object	Name
Demonic Redemption	"Demonic Redemption"

Demonic Redemption is a situation.
ResolveFunction of Demonic Redemption is "".
Sarea of Demonic Redemption is "nowhere".

[Resolution Stages and Notes]
[1: Triggered the Evil Demon Brute path on the way to the church.]
[2: After spending some time with the Demon Brute and attempted a conversation, Player understands it won't be easy to crack his shell. There's a hint at who can help them. (an anthro canine)
	BONUS: If Xaedihr is in the Library at this resolution stage, he'll notice the Player's frustration and come talk to them right after this scene.]
	[Also if player talks to some canine anthro huskie and gsheps who are not Carl, they get a few bonus scenes.]
[3: Player talked to Carl, and after explaining the situation, learns what keeps the Demon Brute so hostile. Carl offers to help by spending time with the Brute, in hopes to ease his pain.]
[4: Triggered the first Carl x Demon Brute scene at the Library, but doesn't go very well. (Player is not offered a chance to interfere)]
[5: Spoke to Carl after first attempt. Decided to give it another try.]
[6: DB opens a bit. Triggered the second Carl x Demon Brute scene at the Library. Player must NOT interfere, and Carl manages to get into a mutual handjob with the Demon.]
[7: DB is now called Brutus]
[...]
[98: Player interfered with Carl's attempts at any point despite the warnings. Player can talk to Carl after this, and he'll end up suggesting the purification process as the only viable solution.]
[99: Player decided (or is forced) to cleanse the Demon Brute at any point in the questline, ending it for good.]

LastDBSessionCarl is a number that varies. [@Tag:NotSaved]
LastDBSessionCarl is usually 20000.

instead of going north from Beach Plaza while (DBCaptureQuestVar is 5 and demon brute is listed in companionList of Player):
	say "     As you're making your way towards the religious edifice, the steps following behind you come to an abrupt stop, followed by an agonized grunt. Intrigued, you glance over your shoulder to check what is going on, only to find your demon brute captive crouched, his head turned to the ground and his brutish hands covering his face. He seems to be in distress, and none of your commands seem to have an effect on him, which worries you. There might be something disrupting the link between you two, but even if that's the case, the demon is not moving away. In fact, he's not moving at all. Could it be the church that's causing this?";
	say "     Quickly making your way towards your hellish pet, you demand to know what is happening. At first, you get an annoyed grunt as a response, but then he formulates an actual answer through the words 'That place... Everything but that place...!' Looks like it is, indeed, the church that is causing this disruption, though you inquire on it further, to the demon's impatience. 'It hurts...! The closer we get... Ungh! I won't go in there!' he adds, shouting in a tone more commanding than you'd be comfortable with, coming from a tamed demon brute. He refuses to move after you for the moment. However, you feel the disruption between you weakening, allowing you give him orders once more.";
	WaitLineBreak;
	say "     This seems to be a very odd, but somewhat expectable reaction coming from a hell creature and a holy place. You could find a way to cleanse the demon brute with the help of the priests, or learn how to cope with his true nature. With these facts known, [bold type]will you force him to follow you?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Command him to continue following you at once!";
	say "     ([link]N[as]n[end link]) - Have mercy on the demon for now and consider other means to help him.";
	if Player consents:
		LineBreak;
		say "     With a directive command, you order your hellish pet to quit his tantrum and resume walking with you to the church. It appears your words are sent in vain, as the demon is simply too debilitated to follow you, and too absorbed in his pain to even hear you. You have no choice but to unsummon him, speaking the magic words Nermine taught you, then seeing him turn into a purple mist and flowing back into the amulet. The pain he was feeling was very intense, and you could clearly see its effects before your eyes. There must be something the priests can do for the poor creature, though you'll have to ask and be ready for any demands they make. If there is anything such as a purification process to be applied on demons, you don't think it'll be cheap, but whatever it may be, you'll probably save the brute from eternal torment...";
		say "     Or, of course, you could always maintain him as your unwilling slave, mocking him and flexing your power over him, if you enjoy that.";
		now resolution of Demonic Redemption is 99; [locked on the cleansing path]
		remove demon brute from companionList of Player;
	else:
		LineBreak;
		say "     There has to be another way to make the demon brute a little less of a... well, an inherently evil creature of hell, other than messing with holy rituals to exorcise him, or something similar. However, considering your options, nothing really comes to mind. Perhaps it would be wise to return to a quiet and calm place, like the Library, and attempt to talk to your tamed hellish creature as soon as you arrive, in order to attempt to know more about their kind and what causes this natural hostility. Though you recall it won't be an easy task, provided the amount of hatred inside the demon that makes him act with such rebellious attitude. Were it not for the spell binding him to your will, he'd have already turned on you. Nonetheless, it should come to a path where you can preserve his primal characteristics while tuning down Hell's influence over him... You think.";
		say "     With a directive command, you order your hellish pet to stand up, and consider your next destination... Oh, and obviously, if you want to make this work, it's probably for the best if you start being nicer to him... Why don't you begin with walking a bit with him around you, as you make your way to the [bold type]Library[roman type]? In the meantime, you can think about the words you'll use to initiate the talk. Make sure to keep him summoned, though.";
		now resolution of Demonic Redemption is 1; [can still be cleansed, but no longer the only option]

instead of navigating Grey Abbey Library while (DBCaptureQuestVar is 5 and demon brute is listed in companionList of Player and resolution of Demonic Redemption is 1):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	say "     As you arrive at the Library with the demon brute following behind, you figure you shouldn't postpone this conversation. However, not even the time you spent together, mostly in silence, was enough to shed some light into how you should address this situation, although you figure you could ask him to follow you to a corner and inquire about the subject some more. You let him know that you do not want to force the amulet's magic on him to make him tell you anything, but that you'd like to know what is this all about demons feeling a constant torment that denies their freedom. His eyes spill hatred towards you, though it gives out a feeling that it's not on purpose, it's merely the way he stares at all living mortals, as if he never learned how to look in another way, or behave differently.";
	say "     You actually have no clue how you can see through him, but it still leaves you without answers. Although you hear a deep voice almost mumbling at you. The demon speaks on a very low tone... 'There's only pain. Torment. No freedom. Nothing can take it away.' He tells you nothing more, shifting his gaze downwards and avoiding you in his sight. Still, you insist a little more, between telling him you mean no harm, and that you're sorry about the way you've been treating him, and explain that you want a peaceful relationship between both, or a way to help you. He ignores the first part, only replying with a rather unhelpful grunt, followed by 'Then release me. It would be great help.' as he goes silent afterwards.";
	WaitLineBreak;
	say "     Well, that wasn't very fruitful. Confronted with the demon brute's suffering and his usual mean behavior, you wrack your brain about some other way to get closer. Trying it alone would most likely just push him away, as you saw, since after beating his ass and enslaving the demon, you're in the 'cruel master' category for sure. What comes to mind is an old report you once saw on TV, about therapy dogs achieving amazing results on people with mental disorders or psychological trauma. Could that be the case of the demons, or something similar? You think you remember they used huskies and German shepherds, although finding a trained beast like that is pretty much impossible in all this chaos. [bold type]Maybe a level-headed anthro of the aforementioned breeds might do in a pinch instead?[roman type][line break]";
	now resolution of Demonic Redemption is 2; [talked to Demon Brute, on the way to find an anthro canine]
	if HP of Carl > 49 and HP of Carl <= 100:
		say "     [bold type]You do know of one that could have helped you, one certain anthro husky you left to meet a doomed fate. Now you'll be left with no option but to cleanse the demon brute or leave him as he is...[roman type][line break]";
		now resolution of Demonic Redemption is 99;
	else if Xaedihr is in Grey Abbey Library: [Bonus scene if the demon expert is present]
		WaitLineBreak;
		say "     Though before you leave to return to your affairs, Xaedihr stops you and pulls you to his study corner to have a word with you. 'I do not mean to keep you for long, but it appears you're having an issue with your... demonic servant, isn't it?' You nod, confirming his assumption. 'I noticed how you attempted to address the problem, but unfortunately I have to tell you it'll be like hitting your head on a wall countless times until it breaks. Your head, not the wall.' That much you already knew, so you ask him if he has an actual helpful solution that doesn't involve exorcising him. 'Well, ";
		if HP of Carl > 10 and HP of Carl < 30: [Normal Carl, in the bunker]
			say "as I have observed, you have someone who could probably help you with that. I speak of Carl, the anthro husky you found and saved from an almost inevitable doom and becoming a cockslut? Yes, that guy. With his soldier background and the genetics of an intelligent breed, I think he's got the guts to face your demon pet, and could provide good insight on a psychological phenomenon called conditioning, which is what I believe to be the basic explanation for their post-Hell behavior, though I require more research on that to be certain. Don't bother with any others, he's the right dog for the job. I mean... person. No offense intended. Anyway, go talk to him.'";
			say "     You take note of his recommendation. Now all that's left to do is to ask Carl if he'd be willing to give you a hand...";
		else if HP of Carl > 30 and HP of Carl < 40: [sub Carl]
			say "as I have observed, you have someone who could probably help you with that. I speak of Carl, the anthro husky you found and saved from an almost inevitable doom and becoming a cockslut... oh, wait... nevermind. It appears someone was too impatient regarding that last part. Anyway, despite his eagerness to present his ass, I think that with the right motive... whatever you think it should be... he is able to face your demon pet and provide good insight on a psychological phenomenon called conditioning, which is what I believe to be the basic explanation for their post-Hell behavior, though I require more research on that to be certain. Don't bother with any others, he's the right dog for the job. I mean... person. No offense intended. Anyway, you can go talk to him... but I wouldn't get my hopes up too much if I were you.'";
			say "     You take note of his recommendation. Now all that's left to do is to ask Carl if he'd be willing to give you a hand...";
		else if HP of Carl < 2:
			say "Why don't you try looking around the [bold type]Warehouse District[roman type]? I've seen some strange stuff going on in there back when I was taking a walk... Smelled doggy in there, if you catch my meaning. With some soldiers. No I'm not saying they were practicing doggy style, I'm saying... Hell, you know what I said. Look in there, I have a feeling it'll be fruitful for you, and I'm never wrong.'";
			say "     You take note of his recommendation. Now all that's left is to investigate the Warehouse District and search around for some soldiers. Perhaps a [bold type]soldier squad[roman type] is in the area?";

to say SarahTalk_DB:
	if SarahCured < 4:
		say "     Sarah is an anthro husky, and clearly fulfills the requirements so far, but she's a little too fragile to be of any help regarding your problem with the demon brute. At her current state, she'd just be pushed over by the brutish beast and nothing would be achieved. You suppose you could consider trying talking to her after she has gained some control over her urges, but chances that she would accept to get involved with a demonic beast are low.";
	else if SarahCured > 3:
		say "     Now that she's doing better, you bring the subject of your demon brute to the conversation, asking her if there's anything she could do for the brutish demonic hulk to be a little more civilized. 'Uhm... you're talking about that demon beast you tamed? The one that sometimes follow you around? That same one?!' she asks, and you feel obliged to further explain the situation. However, the hellish brute immediately starts gnarling at the husky girl before you even have a chance to finish explaining the facts, and she's already cowering in fear of the beast. 'I don't... think that would work... I'm sorry...' she adds, giving you a clear sign that you shouldn't insist with her. Perhaps you should look for someone with a more solid temper to deal with this problem.";
	else if SarahSlut > 0:
		say "     You consider asking Sarah to help you with your demon brute problem, but thinking twice, it would be useless to do so. She doesn't have enough humanity left in her to be of any use, and by the looks your brutish beast gives her, they'd be doing stuff way different than any kind of therapy you could be looking for to offer the demon.";

to say CarlTalk_DB:
	if HP of Carl < 10:
		say "     You may want to make sure his situation is stable before throwing him into any potential sexual encounters.";
	else if LastDBSessionCarl - turns < 7:
		say "     It is too early to bring this subject again. Give it some more time and try again later.";
	else if resolution of Demonic Redemption is 2: [1st talk with Carl]
		say "     With the matter of the unfortunate demon brute in post-Hell state still unsolved, you go ahead and ask Carl if he could help you with this. He looks at the demon, then back at you. '[if HP of Carl is 30]Of course, my Alpha[else]That's some request, alright[end if]... But care to explain it a little better? What do you expect from my help?' The next several minutes are spent telling the anthro husky about all the recent events with your hellish pet, his general hostility towards you and the infernal influence still haunting him wherever he goes. You explain him that no matter what you try to do, there's no way to crack his shell, and you always end up being threatened and gazed upon with hatred. 'I see... Sounds like something similar to what dogs experience when they have bad owners. Even if they get a new one, they're conditioned by their past, and they will only know how to act and behave like that because it's the only thing they've experienced. Knowing that, I think I can help!'";
		say "     Sounds like Carl decided to help you in any way he can. You ask him when you can get started with this sort of therapy. 'First, I'll try to get friendly with him, show him that I'm neither a threat nor a target. Then I hope to be able to get closer to him. I think we can get started anytime you want, just let me know when you're available.' he informs you, as you nod. 'You can come with him already summoned or still in the amulet, as long as you bring him out and assign him to me. Then go take a walk outside for a while. Try not to interfere, too... I think he wouldn't react well for the first times.' Following the anthro canine's recommendation, you nod and thank him for his willingness to aid you. Now all that's left for you is to hope this will work, or you'll be left only with the option to attempt purification...";
		now resolution of Demonic Redemption is 3;
	else if resolution of Demonic Redemption is 3: [1st scene]
		if HP of Carl > 30 and HP of Carl < 40: [sub Carl]
			if demon brute is not listed in companionList of Player:
				say "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute.";
			say "     Bringing your hellish pet to Carl, you let him know that you're ready for the first attempt at working something out. 'Alright, Alpha. You can leave him with me and I'll see what I can do.' he says in response. You turn to the brute and tell him to keep Carl company for some time and to not try anything funny, to which he gives a rather worrying smirk, but answers with an reluctant nod. Waving at your anthro canine friend, you leave them alone and walk outside. He didn't look too confident about this...";
			say "     The next moments fill you with eagerness to know how things are going. No matter how many times you try to distract from the situation, you always end up thinking about it, if Carl is going to have any success or if the brute will try something on your absence. Several minutes pass and you can't wait any longer, so you decide to sneak inside and attempt to spy on them.";
			WaitLineBreak;
			say "     Slipping inside the bunker, you approach the two, and you're very glad to have arrived just when you did. What your eyes show you is your demon brute pinning Carl down with his scary purple demon cock fully hard, ready to stretch the poor anthro husky's asshole open. There's obvious signs of arousal on your canine friend, and the view surely is somewhat arousing, but the brute can be very rough on poor Carl's ass if you don't interfere, so you run to his aid. Shouting an imperative command to the brute, he backs down immediately, as if by compulsion, while grunting furiously. You further order him to be silent and unsummon him right away, reciting the magic words Nermine told you and sending him back into the amulet.";
			if demon brute is listed in companionList of Player:
				remove demon brute from companionList of Player;
			say "     Helping Carl up, you ask him if he's okay. 'A little dizzy, Alpha... but I'm okay. He's very strong, couldn't get him off me on my own. I'd probably have been raped here and now if it wasn't for you.' he responds, still panting heavily. 'This makes me realize how lucky I was to cross paths with you.' You caress his ear affectionately, and tell him he doesn't have to do this if he doesn't want to. 'Give me some time to think this through. Let's talk tomorrow or so, okay? Sorry I couldn't do anything...' You don't insist, retreating with the amulet for now.";
			now resolution of Demonic Redemption is 4;
		else: [normal Carl]
			if demon brute is not listed in companionList of Player:
				say "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute.";
			say "     Bringing your hellish pet to Carl, you let him know that you're ready for the first attempt at working something out. 'Alright, leave him with me and I'll see what I can do.' he says in response. You turn to the brute and tell him to keep Carl company for some time and to not try anything funny, to which he gnarls but answers with an reluctant nod. Waving at your anthro canine friend, you leave them alone and walk outside.";
			say "     The next moments fill you with eagerness to know how things are going. No matter how many times you try to distract from the situation, you always end up thinking about it, if Carl is going to have any success or if the brute will try something on your absence. Several minutes pass and you can't wait any longer, so you decide to sneak inside and attempt to spy on them.";
			WaitLineBreak;
			say "     Slipping inside the bunker, you approach the two, who appear to be having a normal talk. Your eyes deceive you for a minute, though, as the husky is seemingly having trouble to even make the brute pay attention to his presence. No matter what he says or does, the demon remains silent for most of the time, only letting out the usual grunt, probably because his actions are restrained by your command, or you think he'd already have jumped on Carl with malicious intent. The anthro canine doesn't insist for much longer, and the time passes by without any significant progress. Disappointed, you return and approach him. He sees you arriving, so he gets up and meets you midway, leaving the demon brute behind.";
			say "     'Sorry, he didn't seem to respond to anything. All he did was grunting and growling, puffing his chest and trying to intimidate me. What stopped him from attacking me was your command...' he lets you know, followed by a brief silence. 'Try coming back later, I'll need to think this through.' You don't insist, retreating with the demon brute behind you.";
			if demon brute is not listed in companionList of Player:
				say "     With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
			now LastDBSessionCarl is turns;
			now resolution of Demonic Redemption is 4;
	else if resolution of Demonic Redemption is 4: [2nd talk with Carl]
		if HP of Carl > 30 and HP of Carl < 40:
			say "     You figure it's time to talk to Carl about what happened since the first attempt at rehabilitating the demon brute. He shrugs and avoids eye contact for a while, though you patiently wait for him to find his words. 'I'm sorry to disappoint, Alpha... but I can't do this. Demon brutes are just impossible to contain except if you're using magic, and I'm literally risking my ass here.' Well, it is his decision, and you can't force him to do something he doesn't want to, since it wouldn't even work that way. 'I suggest you reconsider cleansing him at a church, or find a priest who can do that for him. What you're trying to do, even if noble, is just impossible this way... He'll always be the hating demon he was created to be. I apologize...'";
			say "     There's nothing else to be done here, so you thank Carl for having at least tried. Guess you're back at square zero, and without any other ways left to pursue. The only option now is to leave your demon brute as he is, or seek a purification process at the church.";
			now resolution of Demonic Redemption is 99; [sub Carl gives up, ends the quest]
		else: [normal Carl]
			say "     You figure it's time to talk to Carl about the future attempts at rehabilitating the demon brute. He greets you with a smile and revitalized motivation. 'I thought about it, and maybe I'm doing it wrong. I should start this differently, with something he's familiar with, and mix it with what he doesn't yet know. Maybe he'll be able to understand things better this way. I'm willing to give it another try, if you are.' You nod, but you're probably better asking him what's in his mind right now, and you do so. 'I don't want to spoil it in case it goes wrong, but just to be safe, make sure you issue a command to force him to be peaceful. If he resists too much, chances are it will be a disaster.' His words worry you, but you agree with everything for now. You will let him know when you are ready.";
			now resolution of Demonic Redemption is 5; [normal Carl wants to try again]
	else if resolution of Demonic Redemption is 5: [2nd scene]
		if HP of Carl > 30 and HP of Carl < 40:
			say "Sub Carl is not supposed to reach this far. Please report this as a bug on discord if you encounter this message.";
			now resolution of Demonic Redemption is 99;
			stop the action;
		if demon brute is not listed in companionList of Player:
			say "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute.";
		say "     As you find yourself ready to give this another try, you ask Carl if he's willing to do his second attempt right now. 'You come in good time, my friend. I just hope my theory works!' he expectantly says. 'Let's do this again, then. If you want to watch, just make sure he doesn't sense your presence or anything, though whatever happens, [bold type]do not interfere unless I call for assistance[roman type], understood?' With a nod, you acknowledge his instructions and take your leave. After everything is ready, you give the order to your demon brute to keep the anthro husky company and behave. To simulate that you'll be gone, you walk outside and wait a few minutes, only to return to a spot where you can easily spy on the two from a safe distance...";
		WaitLineBreak;
		say "     At first, it seems to go just like the last time. They're sitting next to each other, and Carl is trying to talk to him, but to no avail. You're able to listen to everything from here...";
		say "     'You know, this is going to be a little difficult if you don't talk... How am I supposed to get to know you better? To understand your kind better, to know what your likes and dislikes are... Oh, here's an easy question! What do you hate the most?' He's answered with silence as the demon brute turns his crimson eyes towards the husky, but then, surprisingly, words come out of his mouth. 'Mortals who don't know their place.' Another moment of quiet follows, as Carl seems to be thinking about a way to follow up on that. 'Well, that's a start.' he says, but the demon interrupts him right then. 'I'm only here because Master ordered.' Sounds like things aren't going very well, but to your surprise, Carl makes an unexpected advance by leaning closer to the brute...";
		say "     'I know it sucks to have lived all your life as a captive, with no free will. But things can be different now. Look at all the good things you can have if you face the world more openly...' he tell him, sliding one hand over the demon's muscular thigh. 'Your current Master isn't bad by any means! You were given some time with me without [PosAdj of Player] supervision. Means you're being given a chance...' The brute's purple meat twitches before your eyes as the anthro husky slips his hand closer to it... 'And you don't want to disappoint, right? It's good to have some freedom, too. Why would you keep living with hatred when you get so many benefits for being like this, peaceful and friendly?' The demon lets out a low moan as his cock is brought to attention, slowly rising to its erection. Carl leans even closer, his furred legs now brushing against the brute's thick trunk thighs, as he takes a grasp of the fat demon cock that is only getting bigger by each second.";
		WaitLineBreak;
		say "     Seeing that things are about to get very sexual, and fearing for your husky friend's safety, do you choose to [bold type]stop this right now[roman type], despite Carl's request for you to not interfere, or [bold type]see where this goes?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You won't allow this to proceed any further. Stop them now!";
		say "     ([link]N[as]n[end link]) - Let's give them a chance and see what comes out of it.";
		if Player consents:
			LineBreak;
			say "     Carl never mentioned anything about getting sexual with your demon pet! Time to abort the session.";
			say "     As you make your way to them, the hellish beast pushes the anthro husky away as soon as he sees you arriving. You demand to know what was going on before your eyes just now, and Carl simply blinks, surprised at your sudden outburst. 'I told you to not come unless I asked for assistance!' Well, it's true that he did, and with the interruption you made, your demon brute looks as quiet as ever, looking at you with newfound hostility. Perhaps depriving him of some good time wasn't the best strategy, and now it'll be very hard to undo this... 'I guess we're done for today...' he says, taking his leave before you.";
			if demon brute is not listed in companionList of Player:
				say "     With a sigh, you murmur the magic words Nermine told you, sending the demon back into the amulet for now.";
			now resolution of Demonic Redemption is 98; [Player interfered and attempt failed]
		else:
			LineBreak;
			say "     Things are getting interesting now, and he did tell you to not interfere unless he called for assistance, so you decide to assume that everything is going according to the plan. The brute slowly spreads his legs, allowing the anthro husky to get a hold of his plump ballsac. He really is opening up... quite literally! 'I guess you never had a decent handjob from someone who actually wanted to give you one. See? You don't have to be bad to get nice things.' Despite Carl's attempts at reaching the demon's ears, you don't think he's actually paying a whole lot of attention to what the husky says. Instead, he seems to be peacefully enjoying having his meat stick getting stroked all over, since the furry anthro is tirelessly sliding and slipping his hand all over the purple shaft, then to the full balls below with a gentle squeeze.";
			say "     At some point, Carl lets his body do all the talk. It's not long until he grows a boner of his own, turned on by the demon's solid erection throbbing in his grasp. The brute glances over his broad shoulder into the husky's pink throbbing rod and raises his strong arm, which makes the soldier shudder slightly at a possible sign of resistance, but it all ends well when he finds the demon's thick fingers wrapped very gently around his canine dick. Carl lets out a moan at the hellish creature's sloppy but pleasing touch, reciprocating with a more vigorous stroking pace that leaves the brute's thick manhood pulse each second. You can't believe your eyes as you see your demonic pet, so evil and rough in the past, now sharing a friendly mutual jerk-off with someone else, so gently and carefully...";
			WaitLineBreak;
			say "     The demon brute picks up the rhythm and masturbates Carl with equal effort, his large hand able to cover the entirety of the husky soldier's nine inches of length with minimal movement. 'You're getting good at this... But if you don't slow down I might...' tries to warn the anthro dog, but it seems the brute doesn't care about slowing down. He's still gentle, but rather merciless when it comes to jerking Carl's dick, so much that he can't even find strength to continue stroking the brute's cock. 'Oh fuck, that's gonna make me cum...!' As the muscular demon continues, the husky howls out of pleasure as he hits the climax. Never he had his meaty rod so thoroughly milked like right now. The canine soldier is shooting his load so hard you can even hear it leaving his dick, landing a few meters in front of the two.";
			say "     It looks rather cute when you see the brute showing a still terrifying smile - with all his sharp teeth and all - as he enjoys watching Carl squirming around until his orgasm ends. He's still giving him some rather hard strokes even after the load he so intensely just shot... 'O-okay, t-that's enough for now... It gets very sensitive afterwards...!' You think he's not going to stop, but he does. Though so much kindness coming from a demon surely has to have an end, and that's when you see him grabbing the husky's head and pulling him towards the still massive, rock hard erection yet waiting for a so craved release. 'Wow, wait a sec... mmph!' Carl tries to contest, only to find his mouth full of demon cock once his lips open.";
			WaitLineBreak;
			say "     Seeing your brute taking a more dominant approach while Carl was distracted, do you think it's safe to [bold type]allow this to continue?[roman type] Or will you pretend you're back from your walk in order to [bold type]terminate the session?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - He still didn't call for assistance, so... It's probably safe.";
			say "     ([link]N[as]n[end link]) - Now that's going too far. Enough is enough!";
			if Player consents:
				LineBreak;
				say "     Now, everything seems to be under control. Carl is already a professional at this, so he should be alright giving the demon brute a treat for good behavior, right? Even though he's choking big time on the fat purple cock buried deep down his throat as the demon keeps pushing the anthro canine's head. The husky has no means to resist against such a strong, massive muscular brute holding him down like that. Though this treatment doesn't last for long. With how turned on the brute was, it's only a matter of seconds until his huge cum-filled balls begin to shift their positions in order to get emptied. As the furry soldier continues to get facefucked, the demon lets out a very audible, beast-like grunt as he starts shooting in his mouth, then everywhere else around them, his heavy load making a huge mess all over as his dick keeps pumping it out in thick, long spurts of demon jizz.";
				say "     What could be your fear before turns out to be just a [']slight['] change of pace initiated by the brute, as he immediately lets go of Carl with a snarky grin on his face. The poor anthro husky is panting, trying to catch his breath after the short, but very hard fuck in the mouth that he had, widening his eyes over the overwhelming mess the demon made with his little trick. 'Well, I... Phew... Okay, you're allowed a treat. That's fair, you did good... But please warn me before you want to do something like that again, okay?' He says, as the demon brute looks at the exhausted husky, throwing in a short phrase in response 'I like it hard... and rough.' Though it didn't seem he said that as a threat, only as an information... Probably.";
				WaitLineBreak;
				say "     Since your buddies are done with today's session, you walk in as if you had a very long walk, pretend you're very surprised by the amount of cum that's just making a pool beneath your feet, and Carl sees you coming, so he rushes towards you. 'Okay, even I wasn't expecting it to work so well...' he tries to explain, a little embarrassed about what happened. 'Uhm, I'm going to clean myself and this mess, so... can we talk later? I'll tell you all about it. Actually, give me a day or so as I sort this out, and let me know about your demon brute's behavior over the time you're with him... I'm sure that will help me think about what to do next...";
				say "     With this said, you thank him once again for the help he's giving you, and apologize for any... inconvenience. 'It's fine, I've hard worse. Way worse. Not meaning this in a bad way, of course. I'm always happy to help you if I can.' he lets you know, before you decide to give your demon pet the order to retreat. Strangely, he seems in a good mood, as his 'Yes, Master' seemed less forced... Guess it's working?";
				if demon brute is not listed in companionList of Player:
					say "     With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
				now LastDBSessionCarl is turns;
				now resolution of Demonic Redemption is 6; [Carl had success]
			else:
				LineBreak;
				say "     You can't let your demon pet force himself on Carl like that! Time to abort the session.";
				say "     As you make your way to them, the hellish beast stops, looking at you with hatred as he holds the anthro husky still down on his dick. With an imperative order, you command your brute to cease his actions and cast him aside, and he forcingly obeys you, pulling Carl off his still throbbing meat and letting him go. You demand to know what was going on before your eyes just now, and Carl simply blinks, panting from the ordeal and surprised at your sudden outburst. 'I told you... to not come unless... I asked for assistance!' Well, it's true that he did, and with the interruption you made, your demon brute looks as quiet as ever, looking at you with newfound hostility... and an unattended boner. Perhaps depriving him of some good time wasn't the best strategy, and now it'll be very hard to undo this... 'I guess we're done for today...' he says, taking his leave before you.";
				if demon brute is not listed in companionList of Player:
					say "     With a sigh, you murmur the magic words Nermine told you, sending the demon back into the amulet for now.";
				now resolution of Demonic Redemption is 98; [interfered, player is forced to unsummon the demon brute who goes berserk with lust]
	else if resolution of Demonic Redemption is 6: [3rd talk with Carl]
		say "     Now that some time has passed, you decide to bring the subject to Carl once more, in order to decide what the next step should be. In addition, you let him know how the brute has been behaving lately. 'He'll always be a demon, but I'm glad to know he seems a little less hostile now. That's good! I admit I wasn't expecting it to work so well, but the results are here.' he happily says, and of course, you feel obliged to thank him for his effort once again. 'Though I should suggest you to give him a name. You know... calling him demon or brute shouldn't really do too good with his psyche. And he probably has an unpronounceable demonic name anyway, so I guess you'll do better just naming him yourself.";
		say "     Considering what Carl told you, it's indeed a better solution to refer to your demon brute as someone with a name, so after giving it some thought, you decide to name him [']Brutus['] for now. It sounds right and fitting. Though you should probably tell him that he's got a new identification, right?";
		WaitLineBreak;
		if demon brute is not listed in companionList of Player:
			say "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute.";
		say "     Turning to your demon brute, you ready your words to announce him that he shall now be called [']Brutus['], and that he has been worthy enough to have a fitting name. 'Name is really Ba'haz-eu'nizaal't'chha.' That train-word made you blink multiple times and made you feel tempted to say [']bless you['], but that would be both ironic and inappropriate. 'But [']Brutus['] will do... Master.' You're surprised he took it so well, although he does give you this challenging look, sometimes... However it's a vast improvement comparing to when you first tamed him.";
		if demon brute is not listed in companionList of Player:
			say "     With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
		now resolution of Demonic Redemption is 7; [he'll be now treated as Brutus]
	else if resolution of Demonic Redemption is 98: [failed]
		say "     After some time has passed, you bring the subject to Carl again. 'I've done what I could for your demon brute... But I guess that with what happened last time, things won't be any better from now on... Sorry, friend. I guess you'd fare better with just trying another solution, like cleansing him.' With the sad news the husky soldier gave you, there's nothing left to do regarding this matter. Your only options will now be only purifying him, or leave him as he is."; [Carl gives up, ends the quest]
		now resolution of Demonic Redemption is 99;

Section 4 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Demon Brute"	"[PrepCombat_Demon Brute]"

to say PrepCombat_Demon Brute:
	setmongender 3;
	follow the monster combat mode rule; [select the combat mode for first-strike]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 10; [reset likelihood of alt attack]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Demon Brute";
	add "Demon Brute" to infections of DemonList;
	add "Demon Brute" to infections of OtherworldlyList;
	add "Demon Brute" to infections of MaleList;
	add "Demon Brute" to infections of BipedalList;
	add "Demon Brute" to infections of TailList;
	now Name entry is "Demon Brute";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The brute [one of]throws a powerful punch[or]swings a great fist[or]begins to kick wildly with powerful legs[at random].";
	now defeated entry is "[demon brute loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[demon brute wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[demonbrutedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "very inhuman, with a pair of slits for nostrils, sharp teeth, and yellow eyes with red slitted pupils. The top of your head is crowned by three matching pairs of horns, curved and getting smaller front to back"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "now large and muscle-bound, any body-builder would be proud to have it"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "deep purple";
	now tail entry is "You have a long demon tail that sways back and forth behind you, equipped with a spaded tip and everything.";
	now cock entry is "[one of]demonic[or]demon[or]infernal[or]bump-ridden[at random]";
	now face change entry is "you begin to feel your skull reshaping under your skin. Your nose disappears, leaving a pair of slits. A strange feeling in your mouth heralds your teeth changing, sharpening and becoming longer to give you a monstrous smile. Finally three pairs of horns grow out of the top of your head, with the front pair the largest, the others getting smaller towards the back. Even your eyes have changed, the white parts now yellow and around red, slitted pupils"; [ Face change text, format as "Your face feels funny as [face change entry]." ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well.";
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin has turned a deep shade of purple";
	now ass change entry is "you feel it becoming tighter, leaner, and more fit. This is followed by a strange feeling at the base of your spine, and then there is a very strange, and painful, burning sensation, as if your flesh is boiling and liquefying. The pain lasts for some time, but, when it finally subsides, you can feel your new, long demon tail sway back and forth behind you, equipped with a spaded tip and everything"; [ Ass/tail change text, format as "Your ass feels funny as [ass change entry]." ]
	now cock change entry is "it begins to grow thicker, large bumps sprouting up all across its surface";
	now str entry is 20;
	now dex entry is 9;
	now sta entry is 14;
	now per entry is 7;
	now int entry is 5;
	now cha entry is 3;
	now sex entry is "Male";
	now HP entry is 50;
	now lev entry is 5;
	now wdam entry is 10;
	now area entry is "Mall";
	now Cock Count entry is 1;
	now Cock Length entry is 18;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 30;
	now loot entry is "demon seed"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "demon brute milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]muscular[or]powerful[at random]";
	now type entry is "demonic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "demonbrute"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Table of Game Objects (continued)
name	desc	weight	object
"demon seed"	"The white, gooey seed of one of your past demonic lovers. It smells very sweet, and is still warm."	1	demon seed

demon seed is a grab object.

demon seed is infectious. Strain of demon seed is "Demon Brute". demon seed is cum.

Usedesc of demon seed is "The warm, sticky liquid tastes sweet as you drink it.";

instead of sniffing demon seed:
	say "The demonic semen smells cloyingly sweet.";

Section 5 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"demonbrute"	retaliation rule	brfoinc rule	--	bruteforce rule	16	--	--	--	--	--

this is the brfoinc rule: [increasing likelihood of bruteforce attack]
	choose row monstercom from the table of critter combat;
	increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the bruteforce rule:
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 5;
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [double damage]
	if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "[one of]The demonic creature[or]The [Name entry][or]Your enemy[or]The demon[purely at random] growls and charges you, pinning you against a wall briefly. It leans its strong, heavy body against yours and punches you several times in the [one of]gut[or]side[or]solar plexus[or]sternum[or]breadbasket[purely at random]. It then [if scalevalue of Player < 4]tosses you aside[else]shoulders you back[end if] roughly with another growl, sending you tumbling. You suffer [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of Player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";

instead of sniffing the demon brute:
	say "     Your captive demon brute smells of ash, sulfur and brimstone.";

Section 6 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"DBrute Slave"	"BadEnd"	"Slave"	DBrute Slave rule	20	false
"Demon Brute Infection"	"Infection"	""	Demon Brute Infection rule	1000	false

This is the DBrute Slave rule:
	if ending "DBrute Slave" is triggered:
		say "     Your new reality in hell focuses on satisfying the relentless lusts of your demon brute masters, as well as being shared around for any other hellspawn he feels like allowing a ride...";
		the Player is enslaved;

This is the Demon Brute Infection rule:
	if Player has a body of "Demon Brute":
		trigger ending "Demon Brute Infection";
		if humanity of Player < 10:
			say "     You find yourself overcome with lust, your balls simply aching, ready to burst. You need to find some relief, and soon! You go on a proper rampage, pushing over small trees and walls, and smashing in windows, and generally wreaking havoc. You eventually spot what you want, a woman in her prime. She is a [one of]human-feline mix, with large cat-ears, a tail, and beautiful black fur[or]husky-human mix, with soft white and gray fur and a puffy white-gray tail[at random]. You seize her, and, without much resistance on her part, are able to gain control. You tear her clothes away, revealing her naked, furry body. She seems too overcome with lust to worry about the size of your cock. But, then again, you aren't the only one with a large tool, and you aren't the first to rut with this girl. She wraps her arms and legs around your large body, her wet sex exposed and moistening, ready for your massive meat. You thrust into her without hesitating, and before long the both of you are moaning and grunting two lust-filled monsters mating like the animals they have become. During the ordeal, the girl climaxes several times, each time becoming more intense than the last. You can feel that you are approaching your climax as well, and your grunts become more frequent. Then, as she is hit by her most powerful orgasm yet, her tight sex squeezes your big meat, enough to push you ever the edge. You begin to come, shooting your seed up inside your new bitch. She pants and moans as your cum fills her womb, causing it to swell to a great size. Massive quantities of cum spill out onto the ground beneath your feet, and a constant stream of it is leaking out around your cock. You realize that this ordeal was too much for the girl, and that she has passed out. Since you really enjoyed your time with this girl, you decide to hold onto her as you disappear back to your den, that safe-room you started your journey in. You set up the cot, and then lay her down on it, her pussy still leaking fluid. Months of wild mating later, and she is heavily pregnant with your brood, which gives you the utmost satisfaction.";
		else:
			say "     You are eventually found by a rather strange man, leading a group of explorers through the city. He walks up to you, and holds out his hand. He introduces himself as an adult film producer with a special request. He says that you would make the perfect monster to fill the part of the evil demon-lord in a live-action version of a hentai anime series he has decided to produce. He offers you asylum, a mountain estate away from the peering eyes of society, and a large sum of money. How could you possibly turn that kind of an offer down? The series becomes [one of]a great success, with millions flowing in from frenzied fans. You become a hero to many hentai fans, and you can use all the fangirls you want[or]a controversial work which ends up getting banned in several countries. The money soon dries up, and you are forced to move out, eventually joining a circus[at random].";

[	if demon brute is tamed:
		if DemonBruteStatus is 0:
			say "A";
		else if DemonBruteStatus is 1:
			say "B";
		else if DemonBruteStatus is 2:
			say "C";  ]

Demon Brute ends here.
