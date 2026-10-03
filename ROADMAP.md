# Roadmap

Canadian content across the Victoria 3 timeline (1836 to 1936). The mod's two goals: let Canada break away from the British Empire on the player's terms, and fill the century with Canadian events, characters and decisions.

Each phase is a release. Tick a box when the task is merged. Pick the next unticked task in the current phase unless there's a reason to jump ahead.

## Where we are (1.3)

Built and working:

- Day-one Confederation from Upper Canada (now the Confederation Conference, see Phase 0), with Lower Canada, New Brunswick, Nova Scotia, Rupert's Land and the Columbia District.
- The sovereignty event: wait, negotiate, or break away by force.
- The Anglo-Canadian Accord: alliance, trade privileges, truce, power bloc membership and yearly relations upkeep.
- The Newfoundland option.
- The Path to Sovereignty journal entry with accord and hard break buttons.

Known gaps:

- Waiting has no consequences, so the journal entry just sits there.
- The hard break has no aftermath events, whether Canada wins or loses.

## Phase 0: Foundations (1.4)

Groundwork that makes every later phase easier.

- [x] Audit vanilla 1.13 for Canadian content (formable, events, journal entries, characters) that could clash with day-one Confederation, and note anything to disable or hook into.
- [x] Write a short test checklist in the README: new game as Upper Canada, each sovereignty option, `error.log` clean, `CANADA MOD:` lines in `debug.log`.
- [x] Add a game rule to keep the vanilla start instead of day-one Confederation.
- [x] Add a French localization file (`localization/french/`) mirroring the English keys.
- [x] Replace the automatic day-one merge with a Confederation Conference event: host in Ottawa, Quebec City or Halifax (the host city becomes the capital), or decline for the base game start.
- [x] Hide vanilla's Unite Canada journal entry once Confederation happens, by replacing vanilla's `00_canada_australia.txt` (vanilla keeps the first definition of a key, so a single-entry override is ignored).
- [x] Grant the Colonization technology and enact Frontier Colonization when Canada becomes independent.
- [x] Decide whether the hard break button should require Britain to be at peace. Decided no: breaking away while Britain is at war stays an option.

## Vanilla notes (1.13.11)

Findings from the Phase 0 audit of the base game files:

- **Unite Canada journal entry** (`je_canada_can`, `can_aus` events). Shown to any Canadian dominion once Nationalism is researched, so our Canada gets it on day one. It completes when Canada owns every state in greater Canada apart from Newfoundland and the Oregon Country states, which still means absorbing the Indigenous nations of the west. It rewards the `can_unified_canada` modifier and names Ottawa, and it disappears on independence. A playtest showed it lingering next to the Path to Sovereignty, so the mod now overrides it to hide once the conference unites Canada. It still appears if the player declines.
- **Britain's version** (`je_canada_gbr`) needs two or more Canadian subjects, so it never shows once Confederation happens on day one.
- **Canadian Pacific Railway** (`je_canada_pacific_railway`) already exists as a major railway journal entry. The Phase 3 railway task should hook into it rather than rebuild it.
- **Canada is a vanilla formable** (`country_formation`), which is how Canada appears under the Base Game start rule.
- **Characters.** Vanilla already has templates for Papineau, William Lyon Mackenzie, Robert Baldwin, Robert Nelson, Samuel Lount, Francis Bond Head and others, tied to Upper and Lower Canada. LaFontaine, Howe, McGee, Tupper, Alexander Mackenzie, Dumont, McClung and Mackenzie King are missing.
- **Needs an in-game check:** whether Lower Canada's characters (Papineau, Nelson) carry over when Upper Canada annexes it on day one.

## Phase 1: A deeper road to sovereignty (1.5)

Make the core feature of the mod richer before adding breadth.

- [x] National identity progress bar on the Path to Sovereignty journal entry, filled by literacy, voting rights, GDP, standard of living and rank.
- [x] Better accord terms unlocked as national identity grows: Newfoundland needs 50.
- [x] Pressure from waiting: occasional events where London tightens its grip or reformers push harder.
- [x] Hard break aftermath events for victory (recognition, cold relations with London) and defeat (reprisals, loss of autonomy, the journal entry stays open).
- [x] British reaction events: London now decides whether to receive Canada's delegation, and a refusal raises National Identity and locks the accord button for five years.
- [x] American angle: Approach Washington before declaring. US support (Support Independence and Military Assistance) is paid for with trade privileges after independence, or with the Oregon Country now for a 99-year alliance after independence.

## Phase 2: The early years, 1836 to 1860 (1.6)

- [ ] Rebellions of 1837 to 1838: Papineau's Patriotes and Mackenzie's rebels, with choices that shape reform or reaction.
- [ ] The Durham Report (1839): assimilation versus accommodation of French Canada.
- [ ] Responsible Government (1848): Baldwin and LaFontaine's reform ministry.
- [ ] Reciprocity Treaty (1854): a trade deal with the United States, and what happens if it lapses.
- [ ] Characters: make sure vanilla's Papineau, Mackenzie, Baldwin and the other Upper and Lower Canada characters survive day-one Confederation, then add Louis-Hippolyte LaFontaine and Joseph Howe.
- [ ] Decision: enlarge the canals (the Lachine, Welland and Rideau were already open by 1836; the 1840s deepening of the St. Lawrence and Welland canals is the real project).

## Phase 3: Building the nation, 1860 to 1885 (1.7)

- [ ] Constitutional conferences (1864): the Charlottetown and Quebec Conferences reworked as a constitutional settlement, since Confederation already happened.
- [ ] The Fenian Raids (1866 to 1871): border defence against Irish-American raiders.
- [ ] Red River Resistance (1869 to 1870): Louis Riel, the Métis and the creation of Manitoba.
- [ ] The Numbered Treaties (1871 onward): agreements with First Nations across the Prairies, handled with care and historical accuracy.
- [ ] The Canadian Pacific Railway and the Pacific Scandal (1873).
- [ ] The North-West Resistance (1885).
- [ ] Characters: Thomas D'Arcy McGee, Charles Tupper, Alexander Mackenzie, Gabriel Dumont.
- [ ] Decision: western settlement and the Dominion Lands Act.

## Phase 4: Into the twentieth century, 1885 to 1936 (1.8)

- [ ] The Klondike Gold Rush (1896 to 1899).
- [ ] The Alaska Boundary Dispute (1903).
- [ ] Canada in the Great War: Vimy Ridge and the conscription crisis of 1917.
- [ ] The Balfour Declaration (1926) and the Statute of Westminster (1931), with an alternate version for a Canada that is already independent.
- [ ] Characters: Nellie McClung, William Lyon Mackenzie King.

## Phase 5: Polish and release (2.0)

- [ ] Full French localization pass.
- [ ] Custom event images where vanilla ones don't fit.
- [ ] Balance pass on the accord, the hard break and the new decisions.
- [ ] Steam Workshop page: thumbnail, description, screenshots.

## Guidelines

- Vanilla already includes Macdonald, Cartier, Brown, MacNab, Morin, Taché, Archibald, Laurier, Borden, Bourassa, Woodsworth and Riel. New characters fill the gaps rather than duplicate them.
- Historical events that assume Canada is a British dominion should branch: the historical version for a dominion, an alternate-history version for an independent Canada.
- Every `.txt` and `.yml` file is UTF-8 with BOM, and every change is checked against `error.log`.
