# Victoria 3 Canada Mod

A Victoria 3 mod that unites Canada from day one in 1836 and lets you choose your path to sovereignty: wait, negotiate an accord with Britain, or break away by force. Includes Rupert's Land, the Columbia District and a Newfoundland deal, with more Canadian events and historical figures on the way.

Built for Victoria 3 **1.13.x**.

## What it does

- **Early Confederation.** Start as Upper Canada and, on day one, you become Canada: Upper and Lower Canada, New Brunswick, Nova Scotia, Rupert's Land (Hudson's Bay Company) and the Columbia District unite as a British dominion with Nationalism researched.
- **The Question of Sovereignty.** In the first month you choose to wait, negotiate with London, or break away by force. The *Path to Sovereignty* journal entry stays open until Canada is independent.
- **The Anglo-Canadian Accord.** A negotiated independence gives Canada a ten-year alliance, mutual trade privileges, a ten-year truce, continued membership in Britain's power bloc, and a relations boost that Britain keeps topping up every year.
- **Newfoundland.** Press London harder during negotiations and Newfoundland joins Confederation, at a small cost to relations.

## Installing

Clone or copy this folder into:

```
~/Documents/Paradox Interactive/Victoria 3/mod/victoria-3-canada-mod
```

Then enable **Victoria 3 Canada Mod** in the Paradox launcher and start a new game as **Upper Canada**. The **Canadian Start** game rule lets you keep the base game's divided British North America instead.

## Structure

| Folder | Purpose |
| --- | --- |
| `.metadata/` | Launcher metadata (hidden folder, required) |
| `common/on_actions/` | Day-one setup, monthly checks, yearly relations upkeep |
| `common/scripted_effects/` | Confederation, the accord, Newfoundland, the hard break |
| `common/game_rules/` | Day-one Confederation or the base game start |
| `common/journal_entries/` | Path to Sovereignty |
| `common/scripted_buttons/` | Journal entry buttons |
| `common/static_modifiers/` | Anglo-Canadian Accord modifier |
| `events/` | Sovereignty events |
| `localization/english/` | All player-facing text |
| `localization/french/` | French translation, key for key with English |

## Modding notes

- Every `.txt` and `.yml` file must be **UTF-8 with BOM**.
- Alliances and trade deals are **treaties** (`create_treaty`), not diplomatic pacts, since patch 1.9.
- Setup steps write `CANADA MOD:` lines to `debug.log`. Check `error.log` after any change.

## Testing a change

Run through this before merging anything:

1. Start a new game as Upper Canada with the default game rules.
2. On day one you are Canada, owning Upper and Lower Canada, New Brunswick, Nova Scotia, Rupert's Land and the Columbia District.
3. The Question of Sovereignty fires within the first month. Reload and try each option:
   - **Wait:** the Path to Sovereignty journal entry appears with both buttons.
   - **Negotiate:** Canada is independent, allied to Britain, in Britain's power bloc, with trade privileges and a truce. Try the Newfoundland option too.
   - **Break away:** an independence diplomatic play against Britain starts.
4. Start a game with the **Canadian Start** rule set to **Base Game** and check that British North America is divided as usual.
5. Switch the game language to French and skim the event and journal text.
6. `error.log` has no lines mentioning this mod's files, and `debug.log` shows the `CANADA MOD:` setup lines.

See [ROADMAP.md](ROADMAP.md) for planned content and [CHANGELOG.md](CHANGELOG.md) for history.
