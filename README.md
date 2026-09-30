# Victoria 3 Canada Mod

A Victoria 3 mod that unites Canada from day one in 1836 and lets you choose your path to sovereignty: wait, negotiate an accord with Britain, or break away by force. Includes Rupert's Land, the Columbia District and a Newfoundland deal, with more Canadian events and historical figures on the way.

Built for Victoria 3 **1.13.x**.

## What it does

- **The Confederation Conference.** Start as Upper Canada and, on day one, choose where the colonies meet: Ottawa, Quebec City or Halifax. The host city becomes your capital, and Upper and Lower Canada, New Brunswick, Nova Scotia, Rupert's Land (Hudson's Bay Company) and the Columbia District unite as Canada, a British dominion with Nationalism researched. Or turn the conference down and play the base game's divided start.
- **The Question of Sovereignty.** In the first month you choose to wait, negotiate with London, or break away by force. The *Path to Sovereignty* journal entry stays open until Canada is independent.
- **The Anglo-Canadian Accord.** A negotiated independence gives Canada a ten-year alliance, mutual trade privileges, a ten-year truce, continued membership in Britain's power bloc, and a relations boost that Britain keeps topping up every year.
- **Newfoundland.** Press London harder during negotiations and Newfoundland joins Confederation, at a small cost to relations.

## Installing

Run the install script from the repository root:

```
scripts/install.sh
```

It copies only the mod content (`.metadata`, `common`, `events`, `localization`, plus `gfx`, `gui` and `map_data` if they are ever added) into:

```
~/Documents/Paradox Interactive/Victoria 3/mod/victoria-3-canada-mod
```

The destination is made to match the repository exactly. Before touching anything the script lists every file it will add, overwrite (`>fc`) or delete (`*deleting`) and asks for confirmation, so a stale or stray file in the game folder cannot survive. Pass `--yes` to skip the prompt, or a path to install somewhere else:

```
scripts/install.sh --yes
scripts/install.sh "/path/to/mod/other-name"
```

Then enable **Victoria 3 Canada Mod** in the Paradox launcher and start a new game as **Upper Canada**. The **Canadian Start** game rule lets you keep the base game's divided British North America instead.

If you installed an earlier build as `canadian_sovereignty`, disable or delete that folder. Two copies of the mod define the same things and will conflict.

### Symlink alternative

If you would rather not sync after every change, link the game folder to the repository instead:

```
ln -s "$PWD" "$HOME/Documents/Paradox Interactive/Victoria 3/mod/victoria-3-canada-mod"
```

Edits then show up in the game on the next launch. The catch is that the game and launcher will also see `README.md`, `.git` and the other non-mod files, and any `.DS_Store` files Finder drops in. That is harmless in practice but it is not a clean mod folder, so the script is the better choice for anything you share.

## Structure

| Folder | Purpose |
| --- | --- |
| `.metadata/` | Launcher metadata (hidden folder, required) |
| `common/on_actions/` | Day-one conference, monthly checks, yearly relations upkeep |
| `common/scripted_effects/` | Confederation, the accord, Newfoundland, the hard break |
| `common/game_rules/` | Confederation Conference or the base game start |
| `common/journal_entries/` | Path to Sovereignty, and an override that hides vanilla's Unite Canada after Confederation |
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
2. The Confederation Conference fires on day one. Pick a host city and you become Canada, owning Upper and Lower Canada, New Brunswick, Nova Scotia, Rupert's Land and the Columbia District, with the capital in the host city. The base game's Unite Canada journal entry should not appear.
3. The Question of Sovereignty fires within the first month. Reload and try each option:
   - **Wait:** the Path to Sovereignty journal entry appears with both buttons.
   - **Negotiate:** Canada is independent, allied to Britain, in Britain's power bloc, with trade privileges and a truce. Try the Newfoundland option too.
   - **Break away:** an independence diplomatic play against Britain starts.
4. Decline the conference, and separately start with the **Canadian Start** rule set to **Base Game**. Both should leave British North America divided as usual, with the base game's Unite Canada journal entry.
5. Switch the game language to French and skim the event and journal text.
6. `error.log` has no lines mentioning this mod's files, and `debug.log` shows the `CANADA MOD:` setup lines.

See [ROADMAP.md](ROADMAP.md) for planned content and [CHANGELOG.md](CHANGELOG.md) for history.
