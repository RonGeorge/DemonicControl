# Demonic Control Commands

All commands are prefixed with `#` and are case insensitive.

## Demonic Configuration Settings

`#demonset <setting> <keyword>`: This is how you change settings that will be persistent across your characters.

* `#demonset config`: This is the basic command to show you the configuration settings you have already set or are at default. The output of the command shows you the keyword and the setting. Such as `lootprofile = Demonic11`: Means that you are using `Demonic11.utl`for your loot profile.
* `#demonset fellowname <name>`: This is the command to set a custome name for your Fellowship when its created. This is `Demonic` by default. Example, `#demonset fellowname Rugrats` will set the name of your fellowship to `Rugrats`.
* `#demonset lootprofile <name>`: This is the command to set a custom name for your Loot Profile when its created. This is `Demonic11` by default. Example, `#demonset lootprofile Dragon9`will set the loot profile to `Dragon9.utl`.
* `#demonset fastloot <name>`: This is the command to set a custom name for your Fast Loot Profile when its created. This is `RaresOnly` by default.
* `#demonset persistent <true/false>`: This is the command to enable persistant joining. When this is activated if a character crashes, it will see if the other characters are in a fellow and if so, will ask to join.

## One Word Commands

All these commands begin with `#`. These commands could be used for testing and they might be moved to action at a later date.

* `8ball`: Tells your fortune.
* `CSI`: This is a corpse detector for popular bosses. It will find the boss body and loot the unique item it has. I designed this to prevent the constant crouching loop from trying to loot over and over. Each of them grabs it and closes the body.
* `dd`: Tells everyone to drop the _selected item_ from your inventory.
* `givenpc`: Gives the selected item to the nearest NPC.
* `givehim`: Gives the selected item to the selected player.
* `left`: Lists the remaining kill tasks for the forge quest.
* `vitals`: Sets vitals to default values.
* `recruitteam`: Recruits your other two teammates.
* `check`: Checks to see what quests are available. `checkg` Checks blank augmentation gem timers. `checku` Updates the Quest timers.
* `skillcheck`: This checks all of your character's augmentations xp and luminance against the totals you should have at the end of all augments.
* `spellcheck`: This will check your character for missing spells based on specialized skills and typical damage protections. This is handy for building suits.
* `ap`: This performs the autopack function. You must have a loot profile named after your character in the documents/magtools folder for this to function properly. [Here is a video of it](https://www.youtube.com/watch?v=8qQqz8WF3Kw). You can find my autopack profiles [in this folder in the repository](https://github.com/RonGeorge/DemonicControl/tree/main/lootprofilesformovingandautopack)
* `DPS`: Calculates the DPS of the selected melee weapon.
* `FindGroup`: Finds a group to join by scanning all characters around you if you are not in one already.
* `id`: This begins ID'ing every object in your inventory and clears bugged items.
* `Gamble`: This will run you to the Gambling hut on Dino island and begin feeding it low stakes tokens.
* `DD`: Will tell everyone to drop the _selected item_ from your inventory.
* `Reveal`: Reveals all hidden Aetheria in your inventory.
* `jump <heading> <shift: true/false> <milliseconds>`: Issues a jump command. Example, `#jump 700 false 1000`
* `Echo`: Echoes a message in chat.
* `Refill`: Refills summons.
* `Where`: Displays the character's current location.
* `Coords`: Displays the character's current coordinates.

### Muling and Sorting

Muling makes use of the mudsort plugin. You put the mule character in between the other two characters. The mule character should not be running DemonicControl. The characters on either side run commands and they will both hand the appropriate items to the mule. After issuing the command, the characters muling items will ask for a confirmation, just say `yes` or `no`

NOTE: Muling only uses the main character's inventory and the top 3 backpacks.

* `quit, stop`: Exits the mule state.
* `#mule packer`: This moves all items from your main inventory to the top 3 backpacks.
* `#mule celdon`: This automatically moves all armor named Celdon to the closest player.
* `#mule keys`: Moves all the Primal keys to the closest player.
* `#mule armor`: Moves all armor to the closest player.
* `#mule bows`: Moves all missile weapons to the closest player.
* `#mule smith`: Moves all melee weapons to the closest player.
* `#mule clothes`: Moves all clothes to the closest player.
* `#mule jewelry`: Moves all jewelry to the closest player.
* `#mule wands`: Moves all wands to the closest player.

Sorting uses the mudsort plugin to sort individual packs numbered from 0 as your main, to 1 at the top down to 9 at the bottom

* `#sort <pack>`: This will sort the packs from 0 to 9. Example, `#sort 1` would sort your top backpack.
* `#bite <pack>` this will sort that particular pack, by number, of its critical strike chance (property 147). Example, `#bite 1` would sort your top backpack by property 147.

## Action Commands

Action Commands begin with `#action`, examples, `#action reveal`, `#action junk`.

* `Backpack Open`: Opens the backpack.
* `cell`: Displays the current cell.
* `class`: Displays the character's class.
* `fpo`: Face portal and open.
* `gemcheck`: Checks for gems.
* `gemcount`: Counts gems.
* `givemark`: Gives a mark to a player.
* `knorrgem`: Gives a knorr gem.
* `loot all`: Loots all items.
* `loot off`: Turns off looting.
* `nanners`: Counts nanners.
* `pong`: Plays pong.
* `ucp`: Use closest portal.
* `vtp`: Dumps vtank properties.
* `InvokerCheck`: Does a quick check to see if you have received all of the Invoker Stone titles.
* `All On`: Enables all features (buffing, navigation, looting, combat).
* `All Off`: Disables all features (buffing, navigation, looting, combat).
* `Follow`: Follows a specified leader.
* `Stay`: Stops following and stays in place.
* `Nav Only`: Enables navigation only, disables other features.
* `Forcebuff`: Forces buffing to occur.
* `Combat On`: Enables combat.
* `Combat Off`: Disables combat.
* `Nav Off`: Disables navigation.
* `Nav On`: Enables navigation.
* `Rares Only`: Loots only rare corpses.
* `Loot All`: Loots all corpses.
* `Buff On`: Enables buffing.
* `Buff Off`: Disables buffing.
* `Portal`: Use closest portal.
* `NPC`: Use closest NPC.
* `Medkits`: Manages luminance healing kits, including purchasing at Asheron's Castle if needed.
* `AFK`: Sets the character to AFK mode.
* `Select`: Selects an object.
* `Recomp`: Goes to Haven and recomps at Jeeves.
* `Face <Direction>`: Faces the character in a specified direction (e.g., East, North, Southwest).
* `UCV`: Use the closest vendor.
* `Tap Jump`: Performs a tap jump.
* `ReadContracts`: Reads contracts in the inventory.
* `Drop`: Drops the _targeted_item from your inventory.
* `Critcheck`: Checks the critical hit chance of the selected target. Property 147.
* `Unlock`: Attempts to unlock the closest door by trying it and debuffing it if needed.
* `sum<#><a|b>`: Summons a portal based on your character list. Without looking at the _charlist_ you can just experiment with this command to see who summons it. These commands are on the _Portals_ tab of Chaos. Examples, `#action sum1a` Summons the primary portal of your 1st character in the list, `#action sum2b` Summons the secondary portal of your 2nd character in the list.
* `LumCheck`: Tells the Aura of the Worlds, Aura of Valor, Aura of Purity and Aura of Destruction of the character.
* `MoneyCount`: Displays the amount of MMDs (Trade Notes) in the inventory.
* `Range`: Displays the distance to the selected target.
* `Armor`: This will spit out a complete list of Resistances and Armor Resistances of the selected creature. If you have not ID'd the critter it will be all 0s.
* `Millicent`: You should use `#navto millicent` first and then when in front of her, use this to begin trading items to her pet.
* `BuyRage`: This will run you to the fortress vendor to Buy Rage potions for the Rage Quest.
* `ParagonBuy`: This puts all 50 Paragon gems in your BUY window, but does not purchase them.
* `ParagonApply`: Apply the first gem to your weapon, then select it and run this command. It begins the arduous task of applying all 49 gems to it.
* `VendorExchange`: Exchanges items with a vendor.
* `Junk`: DANGER! This will throw items away from your inventory, including all keys except T11 keys. This will also throw away those random items you get from Quests.
* `Food`: This checks to see what 10k consumables are missing.
* `Equip <monster>`: Equips specified items for a monster. Example, `#equip Banderling` will equip items to fight a Banderling.
* `Craft <item1> <item2>`: Crafts items using specified materials.
* `Watchlist`: Adds a character to the death watchlist.
* `Critlist`: Displays the critical hit list.
* `Rareon`: Enables rare tracking.
* `Rareoff`: Disables rare tracking.
* `Reset`: Resets the navigation state.

### Action Navigation Commands

* `Goto`: Navigates to specified coordinates.
* `Cometome`: Asks another character to come to the current location.
* `Chase`: Chases a specified target.

### Action Fellowship Commands

* `Fellow`: Creates a Fellowship using the _name_ in configuration settings and invites your other accounts.
* `Leader`: Sets the fellowship leader.
* `Recruit`: Recruits your other characters into the fellowship if one of them already is in it.
* `Invite`: Invites a character to the fellowship.
* `FindLeader`: Looks in the vicinity for the established _PatrolLeader_.
* `Disband`: Disbands the fellowship if the character is the leader.

## Vtank Option Commands

* `Optset`: Sets VTank options. This uses the same keywords as used in vtank, [as listed here](http://www.virindi.net/wiki/index.php/Virindi_Tank_Advanced_Options). Examples, `#optset summonpets false` and `#optset enablecombat false`.

## Quest Commands

Quest commands begin with `#quest` and each one might have unique properties or actions associated with it. Generally `#navto` commands get you to the place and `#quest` commands interact with the NPCs. Generally if you want to do a quest, you will do the #navto command first if there is one, or do the #quest command.

* `Tusker Tusk`: Starts the Tusker Tusk quest in the Lyceum.
* `Jester`: Starts the Jester adventure quest.
* `Dragon`: Takes you to Dragon island and grabs the quests.
* `Dino`: Take you to the island and grab the quests.
* `Queen`: Needs to be started at the BDC drop. This will run you to the egg room, then to the portal room.
* `Buttersworth`: Almost fully automated, this will begin the Buttersworth route stopping at bosses needed to pick up items.
* `Megamaw`: Goes on the island and gets the Megamaw and egg quest.
* `FortBSD`: Interacts with the NPC for TethBSD and will also complete it.
* `TethBSD`: Interacts with the NPC for TethBSD and will also complete it.
* `Curator`: You should use `#navto curator` to get to the Curator and then after you pick up a shard, use `#quest Curator` to hand them in.
* `Bear`: Automates the "Bear" quest that starts in Holtburg.
* `Doll`: Automates the "Doll" quest, which starts next to Bear.
* `Golem`: This recalls to the fortress and hands in the 5 Golem Hearts. Use `#navto golem` to run through the fachub to the area to kill the golems.
* `Mukkir`: Manages the Mukkir Slayer quest, including spear collection and boss fights.
* `Bluelady`: Automates the Blue Lady quest, including cactus interactions and water collection. Use `#navto bluelady` to get to the cactus and then run this command to start the quest.
* `Shreth`: Handles the Shreth quest, including NPC interactions.
* `Rage`: Gets you to the dungeon and grabs the killtasks after you have the gem.
* `Neftet Killtasks`: Grabs Neftet kill tasks.
* `Frozen Valley Killtasks`: Grabs Frozen Valley kill tasks, including Gurog and Snow Tusker hunts.
* `Hoshino Killtasks`: Grabs Hoshino kill tasks, including NPC interactions.
* `Tou-Tou Killtasks`: Grabs Tou-Tou kill tasks, including Grievver and Shadow Lord hunts.
* `Graveyard Killtasks`: Grabs Graveyard kill tasks, including Wight and Spirit hunts.
* `Rynthid Killtasks`: Grabs Rynthid kill tasks, including NPC interactions.
* `Teth`: This goes to your primary recall (which should be Rats surface) and then interacts with the Teth NPCs getting the killtasks.
* `Singularity`: This will begin and run the Singularity quest for you.

## Navigation Keywords

### General Navigation

These keywords are used for general navigation are used with `#navto`. Example, `#navto Varetha`, `#navto Dogs`

* `Lyceum`: Takes you to Lyceum.
* `Drunken Madman`: Takes you to the madman.
* `Vincadi`: Navigates to Vincadi, the Virindi to trade in masks.
* `Curator`: Navigates to the Curator. If someone has dropped the columns within the past hour, this will not work.
* `Varetha`: Navigates to Varetha.
* `Golem`: Navigates to the Golem killing area via /fachub.
* `RareVendor`: Navigates to the rare vendor.
* `Delegate`: Navigates to the Delegate that is part of the Rage quest.
* `Millicent`: Navigates to Millicent.
* `Shreth`: Navigates to the Shreth dungeon.
* `Title`: Navigates to the Title Tent in Qalabar.
* `Lum`: Displays current lum augmentations and takes you to Asheron's Castle _if_ you have the amount of lum.
* `Daiymo`: Navigates to Hoshino and goes to the particular Daiymo that could spawn based on time of day.
* `BlueLady`: Navigates to the initial Cactus at the Bluelady quest in Neftet.
* `Stipend`: Takes you to haven and gets a stipend.
* `Buttersworth`: Navigates to Buttersworth. _updated_
* `Tailoring Kits`: Navigates to tailoring kit vendors.
* `Grocer`: Navigates to grocers.
* `Alchemist`: Navigates to alchemists.
* `Beachfort`: Navigates to Beachfort.
* `Kendrick`: Navigates to Kendrick.
* `Jeweler`: Navigates to jewelers.
* `Barber`: Navigates to the barber.
* `Currency Exchanger`: Navigates to currency exchangers.
* `Vissidal`: Navigates to Vissidal.
* `Wai Jhou`: Navigates to Wai Jhou.
* `Candeth Keep`: Navigates to Candeth Keep.
* `Master Mage`: Navigates to Jeeves.
* `Ayan Baqur`: Navigates to Ayan Baqur.
* `Singularity Caul`: Navigates to the Singularity Caul.
* `Vslayer Staging Area`: Navigates to the Vslayer Staging Area.
* `Rynthid Encampment`: Navigates to the Rynthid Encampment via the spell if you have it or subway if not.
* `Lifestone Recall`: Navigates to the lifestone recall point.
* `Lifestone Sending`: Navigates to the lifestone sending point.
* `Primary`: Navigates to the primary portal.
* `Secondary`: Navigates to the secondary portal.
* `Sanctuary`: Navigates to the sanctuary.
* `Aphus Lassel`: Navigates to Aphus Lassel.
* `Aerlinthe`: Navigates to Aerlinthe.
* `Mount Lethe`: Navigates to Mount Lethe.
* `Glenden Wood`: Navigates to Glenden Wood.
* `Bur`: Navigates to Bur.
* `Colosseum`: Navigates to the Colosseum.
* `Graveyard`: Navigates to the graveyard.
* `Paradox`: Navigates to the Paradox Tent, Olthoi North via the spell if you have it or the subway if not.
* `Gear Knight`: Navigates to Gear Knight area.
* `Facility Hub`: Navigates to the Facility Hub.
* `Viridian Rise`: Navigates to Viridian Rise.
* `Viridian Tree`: Navigates to the Viridian Tree.
* `Society`: Navigates to your society if you have the recall, also looks for a gem if you have them.
* `WAL`: Navigates to WAL via dangerous portal device.
* `Marketplace`: Navigates to the marketplace.
* `House`: Navigates to the character's house.
* `Hometown`: Navigates to the character's hometown.
* `Mansion`: Navigates to the mansion.
* `Holding`: Navigates to Aerbax's Holding.
* `Vod`: Navigates to Vod.
* `Ivory Crafter`: Navigates to ivory crafters.
* `Collector`: Navigates to collectors.
* `Stone Collector`: Navigates to stone collectors.
* `Leather Crafter`: Navigates to leather crafters.
* `Northwatch Castle`: Navigates to Northwatch Castle.
* `Trophy Smith`: Navigates to trophy smiths.

### Whispering Chapterhouse Navigation (level 400 and below dungeons)

* `Dungeon Mei`: Navigates to Dungeon Mei, used in #navto Shreth
* `Dungeon Fern`: Navigates to Dungeon Fern, used in `#quest bear`
* `Grievvers`: Navigates to Grievver Fortress. _(updated)_
* `Dogs`: Navigates to Dogs, Deserted Barracks. _(updated)_
* `Path of the Blind`: Navigates to Path of the Blind.
* `Tainted Grotto`: Navigates to Tainted Grotto.
* `Ridge Citadel`: Navigates to Ridge Citadel. _(updated)_
* `Peppermint Factory`: Navigates to the Peppermint dungeon. _(updated)_

### Teth Navigation (level 400 and above dungeons)

* `Banderlings`: Navigates to Banderling Hut.
* `Mountain Citadel`: Navigates to Mountain Citadel _(updated)_
* `Holding`: Navigates to the Holding Dungeon, used in the Rage quest. _(updated)_

### Subway Navigation

These keywords are used for subway navigation and used with `#navto`. Example, `#navto Stonehold Portal`, `#navto Path of the Blind`

* `Asheron's Castle`: Navigates to Asheron's Castle.
* `Candeth Keep Subway`: Navigates to the Candeth Keep Subway.
* `Withered Beach`: Navigates to Withered Beach.
* `Aerlinthe Island Portal`: Navigates to the Aerlinthe Island Portal.
* `Stonehold Portal`: Navigates to the Stonehold Portal.
* `Abayar's Laboratory`: Navigates to Abayar's Laboratory.
* `Humming Crystal Portal`: Navigates to the Humming Crystal Portal.
* `Wilderness Citadel`: Navigates to the Wilderness Citadel.
* `Ridge Citadel`: Navigates to the Ridge Citadel.
* `Mountain Citadel`: Navigates to the Mountain Citadel.
* `Desert Citadel`: Navigates to the Desert Citadel.
* `Jungle Shadows`: Navigates to Jungle Shadows.
* `Malignant Tabernacle`: Navigates to the Malignant Tabernacle.
* `Venemous Nidus`: Navigates to the Venemous Nidus.
* `Convergent Median`: Navigates to the Convergent Median.
* `Portal to Tou*Tou`: Navigates to the Portal to Tou*Tou.
* `Royal Tent`: Navigates to the Royal Tent.
* `Frozen Valley`: Navigates to the Frozen Valley.
* `Viridian Rise Access`: Navigates to Viridian Rise Access.
* `Crystalline Crag`: Navigates to the Crystalline Crag.
* `Empyrean Facility`: Navigates to the Empyrean Facility.
* `Bandit Castle`: Navigates to the Bandit Castle.
* `Hall of Metos`: Navigates to the Hall of Metos.
* `Nexus Portal`: Navigates to the Nexus Portal.
* `Black Spawn Dens`: Navigates to the Black Spawn Dens.
* `Egg Orchard`: Navigates to the Egg Orchard.
* `Augmentation Realm`: Navigates to the Augmentation Realm.
* `Insatiable Vault`: Navigates to the Insatiable Vault.
* `Underground City`: Navigates to the Underground City.
* `Mines of Despair`: Navigates to the Mines of Despair.
* `Singularity Bore`: Navigates to the Singularity Bore.
* `Black Death Catacombs`: Navigates to the Black Death Catacombs.
* `Hidden Cavern`: Navigates to the Hidden Cavern.
* `Creepy Canyon`: Navigates to the Creepy Canyon.
* `Feeding Tubes`: Navigates to the Feeding Tubes.
* `Dark Design`: Navigates to the Dark Design.
* `Subway Surface`: Navigates to the Subway Surface.
* `Thrungus Hole`: Navigates to the Thrungus Hole.
* `Crater Village`: Navigates to the Crater Village.

### Town Network Navigation

These keywords are used for town navigation and used with `#navto`. Example, `#navto Vincadi`, `#navto Yaraq`

* `Eastham`: Navigates to Eastham.
* `Eastham Mask Maker`: Navigates to Eastham Mask Maker.
* `Ahurenga`: Navigates to Ahurenga.
* `Al-Arqas`: Navigates to Al-Arqas.
* `Al-Jalima`: Navigates to Al-Jalima.
* `Arwic`: Navigates to Arwic.
* `Baishi`: Navigates to Baishi.
* `Bluespire`: Navigates to Bluespire.
* `Cragstone`: Navigates to Cragstone.
* `Danby's Outpost`: Navigates to Danby's Outpost.
* `Dryreach`: Navigates to Dryreach.
* `Eastwatch`: Navigates to Eastwatch.
* `Fiun Outpost`: Navigates to Fiun Outpost.
* `Freehold`: Navigates to Freehold.
* `Greenspire`: Navigates to Greenspire.
* `Hebian-to`: Navigates to Hebian-to.
* `Holtburg`: Navigates to Holtburg.
* `Kara`: Navigates to Kara.
* `Khayyaban`: Navigates to Khayyaban.
* `Kryst`: Navigates to Kryst.
* `Lin Portal`: Navigates to Lin Portal.
* `Linvak Tukal`: Navigates to Linvak Tukal.
* `Lytelthorpe`: Navigates to Lytelthorpe.
* `Mayoi`: Navigates to Mayoi.
* `Nanto`: Navigates to Nanto.
* `Neydissa`: Navigates to Neydissa.
* `Oolutanga's Refuge`: Navigates to Oolutanga's Refuge.
* `Redspire`: Navigates to Redspire.
* `Plateau`: Navigates to Plateau.
* `Qalaba'r`: Navigates to Qalaba'r.
* `Rithwic`: Navigates to Rithwic.
* `Samsur`: Navigates to Samsur.
* `Sanamar`: Navigates to Sanamar.
* `Sawato`: Navigates to Sawato.
* `Shoushi`: Navigates to Shoushi.
* `Silyun`: Navigates to Silyun.
* `Stonehold`: Navigates to Stonehold.
* `Tethana`: Navigates to Tethana.
* `Timaru`: Navigates to Timaru.
* `Tou-Tou`: Navigates to Tou-Tou.
* `Tufa`: Navigates to Tufa.
* `Uziz`: Navigates to Uziz.
* `Westwatch`: Navigates to Westwatch.
* `Xarabydun`: Navigates to Xarabydun.
* `Yanshi`: Navigates to Yanshi.
* `Yaraq`: Navigates to Yaraq.
* `Zaikhal`: Navigates to Zaikhal.

## Special Commands

### Watchlist

The watchlist is used for your players to watch for deaths and recall if it sees any.

* `#demonset watchlist`: This lists the current watchlist
* `#demonset watchlist clear`: This will remove all names from the watchlist
* `#demonset watchlist <Name>`: This adds the Name to the watchlist.
* `#demonset watchlist target`: This will add whoever you have targeted into the watchlist.

### Modes

Modes are really just easy ways to change profiles for all of your characters at the same time. The format of profiles is `charactername-modename`, example `Ron-Bow`. The character name must be exact, capitalization is important. If you want the meta to create the profiles for you, go into a mode and allow it a few minutes to create the default filled profile. Then you can go in and edit it.

* `vortex`: Sets the mode to vortex.
* `defend`: Sets the mode to defend.
* `ugs`: Sets the mode to ugs.
* `citadel`: Sets the mode to citadel.
* `elemental`: Sets the mode to elemental.
* `no`: Disables the active mode.
* `#mode reset` this deletes variables pertaining to modes and resets your character to a profile named `charactername`, which is the default.
* `#mode off` Turns off active mode, leaves everything else.

#### Current Available Modes

* `#mode bsd`: This is for the 2 BSD Tusker dungeons.
* `#mode dino`: Puts your characters in dino mode, which enables recalling on death by any member of your team.
* `#mode dragon`: Puts your team into dragon mode, but it meant to be used after dino mode, so it doesn't have a specific profile.
* `#mode rats`: for the rats dungeon.
* `#mode rage`: for the Rage dungeon and quest.
* `#mode hollow`: for the Hollow Virindi dungeon.
* `#mode Monouga`: for Monougas.
* `#mode Teth`: for Teth.
* `#mode tb`: This is Teth Bow mode. If they are melee they will move to the `TethBow` profile.
* `#mode Butter`: This is mode Butter for the Buttersworth dungeon.
* `#mode bb`: This is mode ButterBow.
* `#mode VR`: Meant for Viridian Rise.
* `#mode Bow`: Switches everyone except for mages to their Bow profile.

### Patrol

Patrol is a function that is an all encompassing system to do UCM. It has the leader take command and start going on a path. The others will follow and turn on.

#### Current Patrol Modes

* `#patrol`: If you do the #patrol command while in either TethBSD or FortBSD, the group will begin to roam the dungeon.
* `#patrol beach`: This is a navigation route that follows the beach at Dino island.
