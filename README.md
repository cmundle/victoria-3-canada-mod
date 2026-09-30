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

Then enable **Victoria 3 Canada Mod** in the Paradox launcher and start a new game as **Upper Canada**.

## Structure

| Folder | Purpose |
| --- | --- |
| `.metadata/` | Launcher metadata (hidden folder, required) |
| `common/on_actions/` | Day-one setup, monthly checks, yearly relations upkeep |
| `common/scripted_effects/` | Confederation, the accord, Newfoundland, the hard break |
| `common/journal_entries/` | Path to Sovereignty |
| `common/scripted_buttons/` | Journal entry buttons |
| `common/static_modifiers/` | Anglo-Canadian Accord modifier |
| `events/` | Sovereignty events |
| `localization/english/` | All player-facing text |

## Modding notes

- Every `.txt` and `.yml` file must be **UTF-8 with BOM**.
- Alliances and trade deals are **treaties** (`create_treaty`), not diplomatic pacts, since patch 1.9.
- Setup steps write `CANADA MOD:` lines to `debug.log`. Check `error.log` after any change.

See [ROADMAP.md](ROADMAP.md) for planned content and [CHANGELOG.md](CHANGELOG.md) for history.
