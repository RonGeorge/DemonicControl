# DemonicControl

DemonicControl is a comprehensive automation meta script for Asheron's Call that runs with VirindiTank. Originally designed to simplify traveling, it has evolved into a full-featured automation system covering quest management, navigation, inventory control, fellowship coordination, and advanced multi-character operations. It is optimized for the [DragonMoon](http://discord.gg/dragonmoon) server.

## Features

### Core Automation

- **Quest Management**: Automated quest running with timer tracking for 30+ major quests
- **Navigation System**: 100+ navigation destinations including towns, dungeons, and special locations
- **Multi-Character Coordination**: Advanced systems for coordinating 2-7 characters simultaneously
- **Inventory Management**: Sophisticated sorting, muling, and item management systems
- **Fellowship Integration**: Automatic fellowship creation, management, and coordination

### Advanced Systems

- **Patrol Routes**: Multiple patrol systems for different dungeons and farming areas
- **Mode System**: Specialized modes for different activities (Rage, Forge, Dino, Teth, etc.)
- **Watchlist**: Death monitoring and automatic recall system
- **Smart Buffing**: Intelligent buff management with spell checking
- **Loot Profiles**: Dynamic loot profile switching based on activity

## Requirements

- VirindiTank - <http://virindi.net/plugins/>
- Decal v2.9.8.3 - <https://www.decaldev.com/>
- Mag Tools v2.1.6+ - <https://github.com/Mag-nus/Mag-Plugins/releases/tag/Mag-Tools-v2.1.6>
- Mudsort v2.1.6+ - <https://github.com/mudzereli/mudsort/>
- Utility Belt v.0.2.7 - <https://utilitybelt.gitlab.io/>
- Chaos Helper v2.2.5 - <https://github.com/Oonej/ChaosHelper>
- I built a custom version of ChaosHelper that lets you customize buttons with color, [grab it here](source\chaoshelper_colored.zip).

## Installation

### Option 1

1. Download the [installer](dist\DemonicControl_Installer.exe) and after it finishes double click it. You will see a message when it finishes. 

#### The installer includes

> To VirindiTank folder:
- DemonicControl.met - the Meta
 - Demonic12.utl - Default loot profile, change it in settings
 - RaresOnly.utl - bare minimum loot profile used in some places

> To chaoshelper folder:

- chaoshelper.ini - configuration file for ChaosHelper
 - ChaosHelper.dll - Custom version of ChaosHelper that I built, [it shows colors](https://i.imgur.com/VUhz1kh.png)
 - DemonicControl.txt - ChaosHelper profile
 - DemonicControl.Layout - ChaosHelper profile

### Option 2

1. Download the [meta file]( https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/DemonicControl.met )(Right Click and Save As..) and then move that file to your vtank folder, which should be __C:\Games\VirindiPlugins\VirindiTank_
2. Download the two Chaos Helper Profiles, [DemonicControl.Layout](https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/source/DemonicControl.Layout) and [DemonicControl.txt](https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/source/DemonicControl.txt) and put both of those into the chaos folder, which should be at _C:\Games\Decal Plugins\chaoshelper_

## Commands

DemonicControl supports 200+ commands across multiple categories:

- **Configuration**: `#demonset` commands for persistent settings
- **Quest Management**: `#quest` commands for 30+ automated quests
- **Navigation**: `#navto` commands for 100+ destinations
- **Action Commands**: `#action` commands for common automation tasks
- **Mode System**: `#mode` commands for specialized activity modes
- **Patrol System**: `#patrol` commands for coordinated group farming
- **Inventory Management**: `#sort`, `#mule`, `#bite` commands for item handling
- **Fellowship**: Fellowship creation, management, and coordination
- **Utility**: Movement, information, and helper commands

For a complete command reference, see the [Commands Wiki](https://github.com/RonGeorge/DemonicControl/wiki/Demonic-Control-Commands)

### Files in Repo

1. _/source/_ contains all of the original files. the .mut profile to build my loot profile, Chaos Profiles, and also the .af source file used in Metaf to build DemonicControl.
2. _/loot-profiles-and-autopack/_ this folder contains my autopack profiles, many random loot profiles that I use for muling, trading, and the /ub givep command for mules.
3. /dist/ contains the installer.

### Thanks

- If you are interested in writing metas, [Metaf](https://github.com/JJEII/metaf) is an absolute must by Eskarina of Morningthaw.
- If you are interested in taking loot profiles to the next level, <https://github.com/JJEII/myutilootor/tree/mainis> a great place to start.
- Inspired by IBControl from [Immortalbob](https://github.com/Immortalbob/IBControl)
