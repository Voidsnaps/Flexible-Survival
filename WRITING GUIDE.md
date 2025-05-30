# Writing Guide
Credits: Stripes (original guides), Kernog (present file)

## 1. Foreword
### a) What is this document about
This writing guide aims to give novice and experienced writers a basic understanding of Inform 7's functioning, and helpful tips in order to write new content for _Flexible Survival_. It does _not_ substitute itself to the instruction guide of Inform 7, and you are expected to, at least, understand how to open a project, open an extension file, creating a new extension file, and run the compiler.

### b) Setup
Before anything, new writers are strongly recommended to follow the steps in CONTRIBUTING.md before starting their work.
[https://github.com/Nuku/Flexible-Survival/CONTRIBUTING.md](https://github.com/Nuku/Flexible-Survival/blob/master/CONTRIBUTING.md)
It will ensure that you have a working Flexible Survival directory, an efficient way to update your extension files, and send your own work on GitHub.

### c) Language
Flexible Survival is written in American English, singular second person pronouns, and present tense. Please be careful about the spelling (color instead of colour, for instance), the vocabulary (apartment instead of flat), and cultural references (US customary units, soccer/football distinction, etc.).

### d) Testing, contact and review
Ensure that you test your work frequently. Nobody likes finishing a weeks-long work, only to get twenty compilation errors when running the game. If you have any questions, the Discord is here for you. The #sp-coding channel is there for your technical questions, with #sp-coding-materials if you wish to share your personal tips and shortcuts. If you wish to have your literary work reviewed, the #reviews-and-writing channel is the place to go.


## STATISTICS AND BODY DESCRIPTORS
The data of the game is contained in a lot of variables and properties, many of which may be useful in the building of your scene or to increase the level of detail and personal connection to the player character. References to the player's form, size, genitals, etc... all help personalize the scenes and increase replay value. Some of these are more useful than others. I'll denote those descriptive elements I feel are particularly useful for scenes relating to them by using **[!]** in front of them. They can then be inserted into text by using `[Cock of Player]` or as part of conditional statements (more on this in part 2 of this document).

### Player Stats: numerical, rarely useful for scenes except for comparisons, but here for completeness
* `HP of player` | current HP of player
* `MaxHP of player` | player's maximum hp
* `XP of player`
* `level of player`
* `strength of player`
* `dexterity of player`
* `stamina of player`
* `charisma of player`
* `intelligence of player`
* `perception of player`
* `hunger of player`
* `thirst of player`
* `morale of player`
* `Libido of Player`
* `humanity of player`
* `score`
* `turns` | current numerical turn (counts down) - DO NOT ALTER!
* `targetturns` | the turn number for game over - DO NOT ALTER!

### Basic Infection Variables:
* `BodyName of player` | The infection name on the player's body. Very useful for comparisons or, less desirably, as a descriptive element.
* `FaceName of player` | The infection name on the player's face. Very useful for comparisons or, less desirably, as a descriptive element.
* `SkinName of player` | The infection name on the player's skin. Useful for comparisons or, less desirably, as a descriptive element.
* `TailName of player` | The infection name on the player's tail. Useful for comparisons or, less desirably, as a descriptive element.
* `CockName of player` | The infection name on the player's cock. Useful for comparisons or, less desirably, as a descriptive element.

* `body of player` | portion of the player's description dealing with their body. Generally not useful for scenes.
* `face of player` | portion of the player's description dealing with their face. Generally not useful for scenes.
* `skin of player` | portion of the player's description dealing with their skin. Used occasionally for scenes, but often has differences in application that makes this messy.
* `tail of player` | portion of the player's description dealing with their tail. Generally not useful for scenes.
* [!] `Cock of Player` | one or two word description(s) of the player's cock. Recommended for use in scenes.

* [!] `scalevalue of player` | numerical value for player's rough size category (1 to 5)
* `body size of player` | adjective describing the player's rough size category (tiny to huge)
* [!] `bodydesc of Player` | single adjective(s) used to describe the player's body and build (fat/thin/muscled/effeminate...)
* [!] `bodytype of player` | single adjective(s) denoting the general type of infection the player has (human/feline/canine...)
* `DayCycle of player` | numerical: day/night preference (if any) of the player's form. 0=standard, 1=day-preferred, 2=night-preferred

### Genital Variables:
This first set are the numerical values, to be followed by the descriptive ones which adjust themselves based on these numbers.

```inform7
A person has a number called Cock Count. Cock Count is usually 0. [the number of cocks the player has]
A person has a number called Cock Girth. Cock Girth is usually 7. [thickness 1-5, thin/slender/average/thick/monstrous]
A person has a number called Cock Length. Cock Length is usually 6. [length in inches]
A person has a number called Ball Count. Ball Count is usually 2. [number of balls the player has]
A person has a number called Ball Size. Ball Size is usually 3. [0-7: non-existent, acorn, dove egg, chicken egg, goose egg, ostrich egg, basketball, beachball]
A person has a number called Cunt Count. Cunt Count is usually 0. [the number of cunts the player has]
A person has a number called Cunt Depth. Cunt Depth is usually 9. [depth in inches]
A person has a number called Cunt Tightness. Cunt Tightness is usually 5. [1-5: tight, tight, receptive, open, gaping]
A person has a number called Clit Size. Clit Size is usually 3.
A person has a number called Asshole Depth. Asshole Depth is usually 9.
A person has a number called Asshole Tightness. Asshole Tightness is usually 2.
```

* `Cock Count of Player` | the number of cocks the player has
* `Cock Length of Player` | the length (in inches) of the player's cock
* `Ball Size of Player` | the size (comparatively) of the player's balls
* `Cunt Count of Player` | the number of cunts the player has
* `Cunt Depth of Player` | the depth (in inches) of the player's cunt
* `Cunt Tightness of Player` | the width (in inches) of the player's cunt
* `breasts of player` | the number of breasts the player has (an even number)
* `Breast Size of Player` | the breast size (corresponding to cup size) of the player's breasts (1=A, 2=B, 3=C, etc...)
character number Breast Size of Player in cupsize | the player's breast size as the corresponding cup letter

* [!] `cock size desc of player` | adjective describing the player's cock size (cock length)
* [!] `cunt size desc of player` | adjective describing the player's cunt size (cunt depth)
* [!] `breast size desc of player` | adjective describing the player's breast size
* [!] `ball size` | adjective + balls/testicles/gonads | describes the size of the player's balls. Note: no 'of player' on this one.
* [!] `Cum Load Size of Player` | adjective describing the size of the player's load. Typical usage is: "your [Cum Load Size of Player] load".

### Other/Environmental:
* `monsterHP` | the monster's current hp
* `location of player` | name of the room the player is in (is hunting/exploring from)
* `time of day` | descriptive time of day
* `short time of day` | general time of day
* `the number of entries in childrenfaces` | the number of children the player has
* `mpregcount` | the number of male-births the player has had


## ANNEX 2: STATUS OF PLAY AND ENVIRONMENTAL PROPERTIES
These are used as part of conditional statements or clauses to alter scenes based on player/environmental properties. They can be coupled with otherwise if and otherwise for greater variation or 'and/or/not' can be used to make further variations and combinations. If they do not contain any quotation marks for exact text (`"`), then they can also be built into say statements by being enclosed in square brackets, such as `[if Cock Count of Player > 0]` and closed with `[end if]`. In some cases, there are multiple ways to check the same info, in those cases, I've separated the options by an italicized or.

For your own sanity, only include a few of these variations in any given scene at most, as some will be more relevant than others to the events you're creating. Some writers have preferences to the aspects they like to highlight about the scene in this manner, so don't feel you have to use all the same ones as everyone else.

### Genitals
* `if Player is male` *or* `if Cock Count of Player > 0` | does the player have any cocks? (male/herm)
* `if Player is female` *or* `if Cunt Count of Player > 0` | does the player have any cunts? (female/herm)
* `if Player is herm` *or* `if Cunt Count of Player > 0 and Cock Count of Player > 0` | does the player have both cock and cunt? (herm)
* `if Player is neuter` *or* `if Cunt Count of Player is 0 and Cock Count of Player is 0` | does the player have no cunt and no cock? (neuter)
* `if Cock Count of Player is 1` | does the player have a single cock?
* `if Cock Count of Player > 1` | does the player have multiple cocks?
* `if Cock Count of Player > 2` | does the player have 3 or more cocks?
* `if Cock Length of Player > 6` | does the player have a cock that is 7 inches or more?
* `if Cock Length of Player < 10` | does the player have a cock that is under 10 inches?
* `if Cock Length of Player > 30` | does the player have a belly-bloating huge cock? (this is just my typical values used for an avg sized creature)
* `if Cock Length of Player > 20` | does the player have a belly-stuffing big cock? (again, my value choice for this)
* `if Ball Size of Player > 5` | are the player's balls ranked above 5 in size?
* `if Ball Size of Player < 12` | are the player's balls ranked under 12 in size?
* `if Ball Size of Player > 40` | is the player's load belly-bloatingly large? (again, my value choice for this)
* `if Ball Size of Player > 20` | is the player's load belly-stuffingly large? (again, my value choice for this)
The above cock comparisons can be done for the player's cunt values. The size comparisons should also be considered against a critter's cunt/cock size to just their fit.

### Infections
* `if BodyName of player is "Rubber Tigress"` | does the player have the Rubber Tigress infection on their body? (case sensitive to name)
* `if SkinName of player is "Bird of Paradise"` | does the player have the Bird of Paradise infection on their skin? (case sensitive to name)
* `if BodyName of player is "Alpha Husky"` *or* `FaceName of player is "Alpha Husky"` | are either of the player's head or body infected with the "Alpha Husky" strain?
* `if Player is pure` | does the player have the same infection on all body parts?
* `if BodyName of player is "Feline" and Player is pure` | is the player fully infected with the Feline strain?
* `if BodyName of player is listed in infections of FelineList` | does the player have any of the feline infections on their body?
* `if BodyName of player is not listed in infections of FelineList` | does the player not possess any feline infection on their body?
The current list options are: FelineList, CanineList, EquineList, VulpineList, ReptileList, InsectList, PlantList, AvianList, TaurList, knotlist (cock), LatexList (skin)

* `if scalevalue of player is 3` | is the player roughly human sized?
* `if scalevalue of player < 3` | is the player smaller than human average?
* `if scalevalue of player > 3` | is the player above human average?
* `if Player is perminfected` | does the player have any of the permanent infections? (jackalman, Hellhound, etc...)

### Fighting and Fight Outcomes
* `if weapon object of player is journal` | does the player fight barehanded?
* `if weapon object of player is not journal` | does the player fight with a weapon?
* `if HP of player > 0` | did the player submit/lose to lust before being KO'd? (when used within player loss scenes for critters)
* `if monsterHP < ( hp entry / 2 )` | is the critter's hp under 50%? (must choose the current monster row beforehand)
* `if lost is 1` | did the player lose their last fight? (usable only after combat's fully resolved and critter win/loss scene have played) WARNING: Does not account for fleeing.
* `if fightoutcome >= 10 and fightoutcome <= 19` | did the player win their last fight?
* `if fightoutcome >= 20 and fightoutcome <= 29` | did the player lose their last fight?
* `if fightoutcome >= 30` | did the player manage to flee from their last fight?
Numerous more examples and more specific results for fightoutcome can be seen in this document: ----
#### Setting up a first-time encounter
```inform7
to say InfectionNameDesc:
    setmongender 0;
    if "InfectionName" is not listed in EncounteredEnemies of player: [first encounter]
        say "     First creature encounter";
    else:
        say "     Repeat Creature encounter.";
```

### Feats
* `if "Male Preferred" is listed in feats of player` | does the player have the Male Preferred feat? (feat name is case sensitive)
* `if "Male Preferred" is not listed in feats of player` | does the player not have the Male Preferred feat?
* `if "MPreg" is listed in feats of player` | does the player have the MPreg feat
* `if Player is submissive` | shorthand for checking if the player has the Submissive feat
* `if player is fastlearning` | shorthand for checking if the player has the Fast Learner feat
* `if anallevel is 3` *or* `if "More Anal" is listed in feats of player` | is the player set for More Anal?
* `if anallevel is 1` *or* `if "Less Anal" is listed in feats of player` | is the player set for Less Anal?
* `if anallevel > 1` *or* `if anallevel is not 1` *or* `if "Less Anal" is not listed in feats of player` | if the player not set for Less Anal? (normal or More Anal)
* `if anallevel < 3` *or* `if anallevel is not 3` *or* `if "More Anal" is not listed in feats of player` | if player is not set for More Anal? (normal or Less Anal)
Numerous more examples for More/Less Anal listed in the second half of this document: ----

### Pregnancy and children
* `if player is impreg_now` *or* `if gestation of child > 0` | is the player is currently pregnant?
* `if player is impreg_ok` | can the player become pregnant in general? (not sterile, has cunt/MPreg)
* `if player is impreg_able` | can the player currently become pregnant? (impregnable and not currently pregnant/parasite)
* `if player is mpreg_now` | is the player is currently male-pregnant?
* `if player is mpreg_ok` | can the player become male-pregnant in general? (not sterile, has MPreg)
* `if player is mpreg_able` | can the player currently become male-pregnant? (male-impregnable and not currently pregnant/parasite/Velos-blocked)
* `if gestation of child > 0 and gestation of child < 10` | advanced pregnancy
* `if gestation of child > 0 and gestation of child < 20` | pregnancy is showing
* `if gestation of child > 0 and gestation of child < 30` | early pregnancy (not showing, but faintly aware)
* `if gestation of child >= 30` | very early pregnant (no signs yet)
* `if the number of entries in childrenfaces > 3` | does the player have 4 or more children?
* `if childrenfaces is empty` | does the player have no children?
* `if "Feline" is listed within childrenbodies` | does the player have at least one child with a Feline body?
* `if "Feline" is not listed within childrenbodies` | does the player have no children with a Feline body?

### NPCs and Pets
* `if Candy is bunkered` | is Candy in the Bunker?
* `if Snow is booked` | is Snow in the Library?
* `if the number of bunkered people > 2` | are there three or more people in the Bunker?
* `if the number of booked people is 0` | are there no NPCs in the Library?
* `if number of booked people + number of bunkered people > 3` | are there at least 4 NPCs in the Bunker and Library together?
(note: booked and bunkered do not apply to the player or to Trixie. These exist for checking/counting in-game NPCs only.)
* `if lastfuck of Alexandra - turns < 6` | has it been less than six turns since Alexandra was last fucked? (usable on most NPCs)
* `[(6 - lastfuck of Alexandra - turns) * 3]` | displays the number of hours remaining before the effect of lastfuck ends (also usable on other type of counters)
* `if bee girl is tamed` | is the bee girl one of the player's pets?
* `if companion of player is bee girl` | is the bee girl the player's current companion (active pet)?
* `if level of companion of player > 3` | is the player's current companion level 4 or higher?
* `if player is lonely` | does the player have pet with them currently?
* `if the number of tamed pets is 0` | does the player have no pets at all yet?

### NPC variables
Every NPC has these variables:
* Name (text)
* LocationName(text)
* Energy (number)
* HP (number)
* MaxHP (number)
* XP (number)
* Level (number)
* Armor (number)
* Weapon Damage (number)
* Capacity (number)
* ScaleValue (number)
* Strength (number)
* Dexterity (number)
* Stamina (number)
* Charisma (number)
* Intelligence (number)
* Perception (number)
* Hunger (number)
* Thirst (number)
* SleepRhythm (number)
* Morale (number)
* Lust (number)
* Libido (number)
* Loyalty (number)
* Humanity (number)
* Cock Count (number)
* Cock Length (number)
* Ball Size (number)
* Ball Count (number)
* Cunt Count (number)
* Cunt Depth (number)
* Cunt Tightness (number)
* Breasts (number)
* Breast Size (number)
* PlayerMet (truth state)
* PlayerRomanced (truth state)
* PlayerFucked (truth state)
* OralVirgin (truth state)
* Virgin (truth state)
* AnalVirgin (truth state)

These should be filled out accurately for your NPC by you:
```
ScaleValue(number)
SleepRhythm(number)
Cock Count(number)
Cock Length(number)
Ball Size(number)
Ball Count(number)
Cunt Count(number)
Cunt Depth(number)
Cunt Tightness(number)
Breasts(number)
Breast Size(number)
```
Just like so:
```inform7
Amy is a woman.
ScaleValue of Amy is 3. [human sized]
SleepRhythm(number) [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Amy is 0. [no cock]
Cock Length of Amy is 0. [no cock length]
Ball Size of Amy is 0. [no ball size]
Ball Count of Amy is 0. [no balls]
Cunt Count of Amy is 1. [1 pussy]
Cunt Depth of Amy is 8. [gets stretched a bit by an alpha husky]
Cunt Tightness of Amy is 3. [gets stretched a bit by an alpha husky]
Breasts of Amy is 4. [4 nipples]
Breast Size of Amy is 2. [B cup at the start]
```
This will allow you to make use of these values in scenes, and be quite useful if you have a NPC that might gender shift or the like.
An example:
```inform7
if Cock Length of Player > Cunt Depth of Amy + 2: [some stretching allowed]
	say "     The female husky wines a little as you bottom out inside her before your cock is all the way in. 'Not so deep please, you're too big.' [...]'";
else if Cock Length of Player < Cunt Depth of Amy - 3: [a bit small, eh?]
	say "     The female husky gives a needy whine and asks, 'Are you, ehm... already in?'";
else: [regular sex]
	say "     ...";
```

These variables should be used to track the NPC's status and interactions with the player:
```
Loyalty(number) [how much the NPC likes you - increase if you recruited them and do nice things]
Humanity(number) [is your NPC about to go nuts?]
PlayerMet(truth state) [has the NPC met the player?]
PlayerRomanced(truth state) [has the player shown romantic interest in the NPC?]
PlayerFucked(truth state) [ever had sex with the player?]
OralVirgin(truth state)
Virgin(truth state)
AnalVirgin(truth state)
```
And can be used like so:
```inform7
if Virgin of Amy is true:
	say "     'Please be gentle, it's my first time,' the husky sighs out shyly as she spreads her legs. [...]'";
	now Virgin of Amy is false;
else: [regular repeat sex]
	say "...";
```

These variables are used by _pets_ (Note: "Cute Crab" pet object is NOT the same as "Snips" the cute crab NPC - so you do not have to worry about overwriting combat relevant values. The 'pet' objects are invisible and glued to the player, you'll not really interact with them)
```
HP(number)
XP(number)
Level(number)
Weapon Damage(number)
```

And _these_ variables are unused by NPCs, so please make use of them. They're easier to save than if you declare new variables for things:
```
Energy(number)
HP(number)
MaxHP(number)
XP(number)
Level(number)
Armor(number)
Weapon Damage(number)
Capacity(number)
Strength(number)
Dexterity(number)
Stamina(number)
Charisma(number)
Intelligence(number)
Perception(number)
Hunger(number)
Thirst(number)
Morale(number)
Lust(number)
Libido(number)
```

### Wandering Creature Variables
Wandering creatures should be added like so:


```inform7
Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jackal"; [name of the overall species of the infection, used for children, ...]
	[Add the infection to appropriate lists, see Core Mechanics\Lists and Banning.i7x]
	add "Jackal Femboy" to infections of CanineList;
	add "Jackal Femboy" to infections of FurryList;
	add "Jackal Femboy" to infections of NatureList;
	add "Jackal Femboy" to infections of MaleList;
	add "Jackal Femboy" to infections of TaperedCockList;
	add "Jackal Femboy" to infections of KnottedCockList;
	add "Jackal Femboy" to infections of SheathedCockList;
	add "Jackal Femboy" to infections of BipedalList;
	add "Jackal Femboy" to infections of TailList;
	now Name entry is "Jackal Femboy"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Jackal Femboy"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]a[or]b[at random]";
	now defeated entry is "[Femboy Jackal Loses]"; [Text when monster loses. Often links to a separate function ]
	now victory entry is "[Femboy Jackal Wins]"; [Text when monster wins. Often links to a separate function ]
	now desc entry is "     Standing before you is a Jackal Femboy...";  [ Description of the creature when you encounter it. ]
	now face entry is "narrow and canine, with a long sleek muzzle"; [ Format as "Your face is [Face of Player]." ]
	now body entry is "slim and sleek"; [ Format as "Your Body is [body entry]."]
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]"; [ Format as "Looking at yourself, your body is covered in [skin entry] skin"]
	now tail entry is "You have a sleek, black-furred jackal's tail attached to your rear, swaying happily over your enormously colossal bubble ass with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]jackalboy[or]jackal-like[or]knotted[at random]"; [ Format as "You have a [cock size desc of Player] [Cock of Player] cock."]
	now face change entry is "your mouth pushes forward into a sleek black muzzle, and your eyes blur as they shift in both color and position. New sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears complete shifting into proper canine ears, swiveling around on top of your head like a proper jackal's, with effeminate features that betray your gender"; [ Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it seems to slim down, its form becoming both sleek and slim as it seems to shorten slightly"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a soft tingling sensation spreads across your body and soft, sleek, black jackal fur begins to push its way out of it. The fur quickly covers your body in a sexy coat of short dark fur."; [ Format as "Your skin feels funny as [skin change entry]." ]
	now ass change entry is "a strange tingling sensation seems to grow in your rear. It softens and flattens somewhat, then with a soft pulling sensation you feel a thin black canine tail slowly extend from your tailbone, lengthening until it is down past your knees before the changing stops. You can't help but notice that your buttocks seem quite heavier than before, and they don't stop growing for a good while, until they are made of such massive bubbliness that makes it hard for you to walk, at first"; [ Format as "Your ass feels funny as [ass change entry]." ]
	now cock change entry is "its shaft thins and changes, the tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur. Funnily enough, it seems keen on growing further"; [ Format as "Your groin tingles as [cock change entry]." ]
	now str entry is 18;
	now dex entry is 22;
	now sta entry is 19;
	now per entry is 17;
	now int entry is 13;
	now cha entry is 20;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. Current options are 'Male' 'Female' 'Both']
	now HP entry is 65;
	now lev entry is 10;  [ Level of the Monster, you get this much XP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;  [ Amount of Damage monster does when attacking. ]
	now area entry is "Nowhere";  [ A named area like 'Outside','Mall','Museum' or 'Nowhere'. Case sensitive!]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 27;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [ Cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false; [ If true, prevents seduction attacks (increasing libido) from working ]
	now libido entry is 80;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty. ]
	now loot entry is "";  [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 percentage. Use 0 for no loot ]
	now MilkItem entry is ""; [ For if the player milks the monster. Must be defined as an item somewhere, see `margay milk` as an example ]
	now CumItem entry is ""; [ For if the player milks the monster's cock. Must be defined as an item somewhere, see `sea dragon cum` as an example ]
	now TrophyFunction entry is "-"; [ A function to call for more complex loot menu options. See GenerateTrophyList_Husky_Bitch as an example ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1:tiny, 3:avg, 5:huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]jackal[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? (normally false, not sure this is actually used anywhere?) ]
	now resbypass entry is false;  [ Bypasses Researcher bonus? almost always false ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? Usually false ]
	now Cross-Infection entry is ""; [use if you want to give some other monster's infection; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;
```

### Objects
* `if water bottle is owned` *or* `if carried of water bottle > 0` | is the player carrying a water bottle?
* `if carried of soda > 1` | does the player have at least 2 soda on them?
* `if food is fiveowned` *or* `if carried of food > 4` | does the player have at least 5 food on them?
* `if pocketknife is wielded` *or* `if weapon object of player is pocketknife` | is the player using the pocketknife?
* `if face mask is equipped` | is the player wearing the face mask?
* `if weapon object of player is improved` | has the player's current weapon been improved (upgraded by Snow)?
* `if cot is present` *or* `if "cot" is listed in invent of location of player` | is there a cot in the room?

### Situations/Locations
* `if inasituation is true` | is a situation/event is current being resolved? (useful to avoid conflicts between fights and events)
* `if Poor Kitty is resolved` | is the event "Poor Kitty" resolved/done/closed?
* `if Poor Kitty is not resolved` | is the event "Poor Kitty" currently encounterable (open)?
* `if Trevor Labs is known` | does the player know how to get to Trevor Labs (in their nav list)?
* `if location of player is Grey Abbey Library` | is the player currently in the Grey Abbey Library?

### Flags/Banning/Game Mode:
* `if guy is banned` | the Guy flag is banned (guy content not available)
* `if girl is not banned` | the Girl flag is not banned (girl content available)
* `if hardmode is true` *or* `if scenario is "Hard mode"` | is the game in Hard Mode?

The current game modes are:
* Bunker
* Caught Outside
* Rescuer Stranded"
* Researcher
* Forgotten
* Hard mode
These are case sensitive, as they are text. Only hard mode has a direct variable for it.

### Researchers/Vials
To be added later.

### Other checks
* `if daytimer is day` | currently daytime hours
* `if daytimer is night` | currently nighttime hours
* `if Libido of Player > 40` | is the player's libido above 40?
* `if humanity of player < 10` | is the player's humanity under 10?
* `if Libido of Player > humanity of player` | is the player libido greater than their humanity?
* `if score > 100` | is the current game score over 100?
* `if morale of player > 0` | does the player have positive morale?
* `if level of player > 5` | is the player level 6 or higher?
* `if thirst of player > 30` | is the player's thirst above 30? (starting to feel the effects of thirst)
* `if hunger of player > 30` | is the player's hunger above 30? (starting to feel the effects of hunger)

### Special
`if skipturnblocker is 0` | This is to be included as part of everyturn rules which should NOT occur or would be delayed if the player is missing turns while KO'd or otherwise completely incapacitated... engineer these scenes to occur once the player's recovered, typically by allowing for >= or <= your target number rather than its exact value or waiting until the scene can play to increment to the next status.

### Random chance
* `if a random chance of 1 in 3 succeeds` | a 33% chance of occurring.
* `if Cunt Count of Player > 0 and a random chance of 1 in 2 succeeds` | if the player has a cunt, 50% chance of this scene playing out.
* `if a random number between 1 and 100 < 15` | another way to do random chance, this one is 14%
* `if "More Anal" is listed in feats of player and a random chance of 3 in 5 succeeds` | there is a 60% chance of this scene playing out, but only if the player has More Anal.
* `if Cunt Count of Player is 0 or a random chance of 1 in 3 succeeds` | This will occur if the player has no cunt, otherwise it'll occur a third of the time.
* `if a random chance of 1 in 2 succeeds or ( Cock Count of Player > 0 and a random chance of 1 in 3 succeeds )` | this will occur one half of the time, with males/herms getting an additional 33% chance on top of that.
* `if Libido of Player > a random number between 1 and 100` | random libido check (yes = gave in, no = resisted)
* `if Libido of Player > a random number between 25 and 125` | random libido check w/a libido of 25 or less guaranteed to win (not give in) and random roll of 101-125 also always winning (yes = gave in, no = resisted)
 * `if ( 100 + humanity of player - Libido of Player ) > a random number between 1 and 150` | a random check pitting the player's humanity and libido against one another (yes = resisted, no=gave in)
* `if a random number between 0 and humanity of player > a random number between 0 and Libido of Player` | another check pitting the player's humanity and libido against one another (yes=resisted, no=gave in)

### Events and situations
* An event is framed within a "situation". A situation has four main properties:
  ** Resolved/Unresolved: Only things the player actually has _done_ are resolved now.
  ** Active/Inactive: Banned events, or events that are activated by talking to an NPC for example are inactive.
 	** Sarea: give your event a Sarea if you want it to be triggered when exploring in this zone
  ** Level: the event will only trigger if the player is at or above the given level (default: 0)

For progressive events, you can use Resolution like any other tracking variable:
```inform7
instead of resolving Daily Food Ration:
	if Resolution of Daily Food Ration is 0: [default value, first time]
		say "You come and grab your ration for the day";
		now Resolution of Daily Food Ration is 1; [1st encounter done]
	else if Resolution of Daily Food Ration is 1:
		say "'Take it, but we'll be running out soon.'";
		now Resolution of Daily Food Ration is 2; [2nd encounter done]
	else if Resolution of Daily Food Ration is 2:
		say "'Sorry, all out. Seems like people came to get food, then transformed and just came back to grab another. Some assholes just can't be trusted.'";
		now Resolution of Daily Food Ration is 3; [3nd encounter done]
		now Daily Food Ration is resolved; [end of the chain]
```

* If a situation has one or several criteria that has to be met beforehand, they must be declared with these lines:
	** `Prereq1 of Explosion Aftermath is Gas Station.` [Gas Station has to be resolved, or this event does not come up]
	** `Prereq1Resolution of Inspecting the Wreckage is { 2 }.` [The Prerequisite resolved event needs one of the listed resolutions for this to come up]
	** `Prereq2 of Explosion Aftermath is Scorched Earth.` [if a second situation needs to be resolved]
	** `Prereq1Resolution of Explosion Aftermath is { 1,2,3 }.` [If several resolutions activate this event]
	** `PrereqCompanion of Putting Out the Fire is Firefighter` [needed companion/pet to get the situation]
Up to three events can be prerequisites for any given one.

### Player Imports and Exports: the ID tags
For the new import/export system to work, all NPCs, Situations and Rooms need to be entered into a table that holds their IDs. This means that a NPC definition would look like this:
```inform7
Table of GameCharacterIDs (continued)
object	name
Amy	"Amy"

Amy is a woman.
```
You just need to drop the upper code block just right above where you make the character, fill in the proper name and that's it.

Similar to ID tagging NPCs, the same thing needs to be done Situations/Events:
```inform7
Table of GameEventIDs (continued)
Object	Name
Grumpy Old Men	"Grumpy Old Men"

Grumpy Old Men is a situation.
```

And for the Rooms:
```inform7
Table of GameRoomIDs (continued)
Object	Name
2F Trevor Labs	"2F Trevor Labs"

2F Trevor Labs is a room.
```

## Sex scenes tracking (2019/02/10)
###NPCs
`NPCSexAftermath (TakingChar - a person) receives (SexAct - a text) from (GivingChar - a person)`

SexAct Options: AssFuck, AssDildoFuck, PussyFuck, PussyDildoFuck, OralCock (= facefuck), OralPussy (= cunnilingus)
* TakingChar is the one getting penetrated in ass/pussy/mouth
* GivingChar is the one grinding their dick/pussy/dildo into the other

This function does several things:
*  Checks Virginities for all participants, showing messages if someone loses theirs
* Adds entries to a list of virginities that the player has taken
* Saves the player's first partners
* Sets the lastfuck variable of both partners to the current turns
* Setmonster to the MainInfection of a given npc, then fimpregchance/mimpregchance for the player if they got fucked in the pussy/asses by a non-sterile partner

Examples:
```inform7
to say Carl_FucksPlayerPussy:
    say "Scene Text";
    NPCSexAftermath Player receives "PussyFuck" from Carl; [nothing else needed, no setmonster, no lastfuck setting, no impregchances]

to say Carl69ing:
    say "Scene Text";
    NPCSexAftermath Player receives "OralCock" from Carl;
    NPCSexAftermath Carl receives "OralCock" from Player;
```

###Enemies
Similar function for random enemies:
`CreatureSexAftermath (TakingChar - a text) receives (SexAct - a text) from (GivingChar - a text)`

This function is easier, since random enemies have no variables to save, they stop existing after the scene. Still, the player side of things will get the proper adjustments, as above.

Example:
```inform7
    CreatureSexAftermath "Player" receives "AssFuck" from "Alpha Husky";
    CreatureSexAftermath "Alpha Husky" receives "AssFuck" from "Player";
```

## Questions?
Join the Discord group and ask questions or just talk about the game in the `fs-singleplayer` channel!

https://discord.gg/gZG2nw6
https://discord.com/channels/333559467218173953/333559925148090368
