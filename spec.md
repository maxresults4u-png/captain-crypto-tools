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

| Folder | Fi
