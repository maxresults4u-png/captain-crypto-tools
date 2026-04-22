
# Captain Crypto Slot Game Pipeline

MaxResults4U Business Solutions. Game production pipeline for Most Wanted template themes.

This bundle gives you everything to produce new themed slot games from your Most Wanted template. Target: 30 Most Wanted themes + 20 Aloha themes.

## The 5-minute overview

You have a working Most Wanted slot template at `/root/cc-temp/games/most-wanted/cowboyslot/`. Engine code, audio, GUI, fonts all work. Only the themed art needs to change per game.

Per new game you need to produce:
- 10 base symbol PNGs (from Scenario.gg or Midjourney)
- 7 themed chrome pieces (Background, Wanted title, Nails, Ropes, SlotMachine, ReelHolderTop)
- 4 themed panel pieces (Balance, Lines, TotalBet, Win)

What this pipeline automates:
- Clones template folder structure (1 command, 5 seconds)
- Generates 30 additional symbol files from your 10 base symbols (1 command, 10 seconds)
- Leaves the hand-generated themed chrome as the only manual step

Net work per theme once pipeline is running: 1 to 2 hours.

## Files in this bundle

- `README.md` - this file
- `SPEC.md` - exact asset specifications (dimensions, file names, transparent bg)
- `clone_game.sh` - clones Most Wanted template to a new theme folder
- `process_symbols.py` - takes 10 base PNGs, produces 40 symbol files
- `prompts-diamond-mine.md` - Scenario.gg prompt pack for your first theme
- `workflow.md` - the exact steps for producing game 1 end-to-end

## Setup on the server
