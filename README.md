# 🧠 SylCoreLib — Eluna Scripting Framework for SylCore

> ⚙️ The official scripting **framework** for Eluna on [SylCore](https://sylcore.org).  
> Packed with timers, UI tools, AIO snippets, state machines, utils, and more!

---

## 🔧 Features

✅ Server-side and client-side utility libraries    
✅ Timer, Fade, Helpers, and UI animation utilities  
✅ AIO handler snippets for fast server ↔ client comms  
✅ StateMachine system for NPCs, quests, or flow logic    
✅ VSCode IntelliSense support (Eluna global autocomplete!)

---

## 📦 Implementation Status

✅ = Complete.   
🚧 = In Progress.   
❌ = Not Implemented.   

### 📚 Eluna Classes
<details>
    <summary>Click to expand class list</summary>
    
| Class                | Status | Notes               |
| -------------------- | ------ | ------------------- |
| `Achievement`        | ✅      | Implemented         |
| `Corpse`             | ✅      | Implemented         |
| `Group`              | ✅      | Implemented         |
| `Aura`               | ✅      | Implemented 			|
| `BattleGround`       | ❌      | Not implemented yet |
| `ChatHandler`        | ✅      | Implemented			|
| `Creature`           | ❌      | Not implemented yet |
| `ElunaQuery`         | ❌      | Not implemented yet |
| `GameObject`         | ✅      | Implemented		    |
| `GemPropertiesEntry` | ✅      | Implemented 			|
| `Global`             | 🚧      | In progess          |
| `Guild`              | ❌      | Not implemented yet |
| `Item`               | 🚧      | In progess          |
| `ItemTemplate`       | ❌      | Not implemented yet |
| `Map`                | ✅      | Implemented		 	|
| `Object`             | 🚧      | In progess          |
| `Player`             | 🚧      | In progess          |
| `Quest`              | ✅      | Implemented 			|
| `Roll`               | ✅      | Implemented		 	|
| `Spell`              | ❌      | Not implemented yet |
| `SpellEntry`         | ❌      | Not implemented yet |
| `SpellInfo`          | ❌      | Not implemented yet |
| `Ticket`             | ❌      | Not implemented yet |
| `Unit`               | 🚧      | In progess          |
| `Vehicle`            | ✅      | Implemented			|
| `WorldObject`        | 🚧      | In progess          |
| `WorldPacket`        | 🚧      | In progess          |
</details>

### 🎯 Enum Definitions

<details>
<summary>Click to expand enum list</summary>

| Enum                | Status | Notes                                 |
|---------------------|--------|----------------------------------------|
| `GroupType`         | ✅     | Used in group:GetType()                |
| `QuestFlags`        | ✅     | Used in quest:GetFlags()               |
| `GroupMemberFlags`  | ✅     | Bitflag for group roles                |
| `ItemSlot`          | ❌     | Player equipment slot indexing         |
| `ChatMsgType`       | ❌     | Partial: say, yell, whisper supported  |
| `SpellSchools`      | ❌     | Not implemented yet                    |
| `TeamId`            | ✅     | Used in map:GetPlayers()               |
| `WeatherType`       | ✅		| Used in map:SetWeather()          	|
| `RollMask`       	  | ✅		| Used in roll:GetRollVoteMask()        |
| `RollVote`	      | ✅		| Used in roll:GetPlayerVote()          |
| `GOState`	      	  | ✅		| Used in gameobject:GetGoState()       |
| `LootState`	      | ✅		| Used in gameobject:GetLootState())    |

</details>


---

## 🛠️ Installation

**(NOTE: Video will be released in the next few days, I will make SURE to link to it here, since it will go over the whole installing process!)**

### 1. Clone or Download
```bash
git clone https://github.com/SylCore/SylCoreLib.git
```


### 2. SylCoreLib Framework Setup
Place `SylCoreLib` inside your `lua_scripts` folder.


### 3. VSCode Snippets Setup (Optional but Recommended)
**NOTE: You must install the extension called **Lua** by **sumneko**.**
[Extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)

Open **Visual Studio Code**, go to the top-left and hover over "**File**", then hover over "**Preferences**", and click on "**Configure Snippets**".
Now you should be able to see a list open at the center of your screen, find the one called "**lua.json**", then click on it.

Inside `SylCoreLib`, you should see a file called snippets.json, open it and copy everything inside it (Ctrl + A select all), then go back into your "**lua.json**", and paste it in.


### 4. VSCode IntelliSense Setup (Optional but Recommended)
**NOTE: You must install the extension called **Lua** by **sumneko**.**
[Extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)

Place the `SC-Eluna-IntelliSense` folder somewhere on your PC, or keep it in the repo folder if you cloned to a secure place.
I would suggest putting it in your Documents folder, but it doesn't matter where you place it; we want to ensure it's not in a location where we might accidentally delete it.

Open **Visual Studio Code**, next go to the top left of **Visual Studio Code**, hover your mouse over "**File**", and go down until you see "**Preferences**", hover your mouse over it and then click on "**Settings**"

Now go up to the top-right, you should see an icon of a document, click on it, and it should open **settings.json**

You will need to add a few things here for the IntelliSense to work. Below are the things you would need to add.

**NOTE: Where you see the path, you will need to replace that to point to the correct location of the ElunaAPI.d.lua file.**
This file is located inside `SC-Eluna-IntelliSense` folder.

```plaintext
    "Lua.workspace.library": [
        "G:\\SylCore\\SylCoreLib\\SC-Eluna-IntelliSense"
    ],
    "Lua.diagnostics.libraryFiles": "Enable",
    "Lua.completion.callSnippet": "Replace",

```

After that, hit "save" (Ctrl + S) and restart your Visual Studio Code. Now open a Lua file and start writing "Register", and you should see all the "Register" functions. if you see those, it means it worked, congrats!

---

