# Asset Specification - Most Wanted template themes

Every new game must produce the files listed here, named exactly as shown, with the specified dimensions and transparent backgrounds where noted.

## Symbols (10 per theme)

The engine reads symbol names from `slotConfig3x5.js`. Default names (used by Most Wanted and kept across all themes unless you change the config):

1. **Wild** - the wild/substitute symbol
2. **Scatter** - the bonus/respin trigger symbol
3. **Bandit1** - high-pay symbol 1 (character in Most Wanted)
4. **Bandit2** - high-pay symbol 2 (character in Most Wanted)
5. **Gold** - high-pay symbol 3
6. **Silver** - mid-pay symbol 1
7. **Whiskey** - mid-pay symbol 2
8. **Bag** - mid-pay symbol 3
9. **Cuper** - low-pay symbol 1
10. **Dice** - low-pay symbol 2

Keep these names. Even if they don't match your theme, the engine doesn't care - only the art does. Changing names means editing config per theme, which creates unnecessary work.

## Symbol file variants

Each of the 10 symbols needs 4 variant files = 40 total symbol files per game:

| Folder | File name pattern | Size | Purpose |
|--------|-------------------|------|---------|
| `Symbols/` | `{Name}.png` | 400x400 | Main symbol shown on reels |
| `SymbolsBlurred/` | `{Name}Blurred.png` | 400x400 | Motion-blurred during spin |
| `SymbolsGui/` | `{Name}GUI.png` | 120x120 | Small version for paytable |
| `SymbolsSheet/` | `{Name}Sheet.png` | 400x400 | Sprite sheet for animations |

`process_symbols.py` automates generating 30 of these 40 files. You only produce the 10 base symbols at 400x400; the script handles the rest.

## Base symbol art requirements (for Scenario.gg or Midjourney)

Technical specs:
- Dimensions: 400x400 pixels minimum, square aspect
- Background: Transparent PNG (alpha channel)
- Subject position: Centered, occupying roughly 75-85 percent of the canvas
- Format: PNG with transparency
- Color depth: 32-bit RGBA

Art style consistency:
- All 10 symbols in a theme must share the same art style (matching lighting, rendering, line weight, color palette)
- Slot-machine aesthetic: saturated colors, glossy finish, drop shadow implied
- Readable at small sizes (shown at 245px and again at 120px in paytable)
- Avoid: thin fonts, tiny details, low contrast

Symbol hierarchy visual cues:
- Wild and Scatter should visually stand out (bigger, more dramatic, maybe glowing)
- High-pay symbols (Bandit1, Bandit2, Gold) should feel premium (ornate, gold/jewel accents)
- Mid-pay symbols (Silver, Whiskey, Bag) should be thematic objects
- Low-pay symbols (Cuper, Dice) should be simpler/smaller

## Themed chrome (hand-produced per theme)

These are non-symbol files that define the theme's look around the reels.

| File name | Size approx | Purpose |
|-----------|-------------|---------|
| `Background_1.png` | 1920x1080 | Full-screen background |
| `SlotMachine_3x5.png` | ~1200x800 | Slot machine body/frame |
| `ReelHolderTop.png` | ~1200x100 | Top of reel frame |
| `RopeLeft.png` | ~80x700 | Left side decoration |
| `RopeRight.png` | ~80x700 | Right side decoration |
| `Wanted.png` | ~600x200 | Themed title graphic |
| `Nail_1.png` through `Nail_5.png` | ~60x60 | Corner decorative pieces |

## Panel pieces (hand-produced per theme)

Info display panels shown during gameplay:

| File name | Size approx | Purpose |
|-----------|-------------|---------|
| `PanelBalance.png` | ~200x80 | Player balance display |
| `PanelLines.png` | ~200x80 | Active pay lines display |
| `PanelTotalBet.png` | ~200x80 | Current total bet display |
| `PanelWin.png` | ~200x80 | Current win display |

## Generic GUI (reused across themes)

The `gui/` folder (38 files: buttons, panels, logos) can be reused as-is across all themes for your first 5 games. Theme accuracy on buttons is less important than symbol quality. Theme these later once the pipeline is smooth.

## Things you do NOT need to produce per theme

- Engine files: `phaser.js`, `slot_classes.js`, `slotConfig3x5.js`, `slotGame.js`, `state_machine.js`, `mkutils.js`, `popups.js`
- Fonts - generic serif looks fine for first batch
- Audio files - reuse across themes initially, theme later

## What `clone_game.sh` creates

When you run `./clone_game.sh diamond-mine`:
