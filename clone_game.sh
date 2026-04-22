 cat > /root/captain-crypto-pipeline/clone_game.sh <<'GAME_EOF'
#!/bin/bash
# clone_game.sh - Clone Most Wanted template to a new theme folder
# Usage: ./clone_game.sh <new-theme-slug>

set -e

SOURCE="/root/cc-temp/games/most-wanted/cowboyslot"
NEW_SLUG="$1"

if [ -z "$NEW_SLUG" ]; then
    echo "Usage: $0 <new-theme-slug>"
    echo "Example: $0 diamond-mine"
    exit 1
fi

if ! [[ "$NEW_SLUG" =~ ^[a-z0-9-]+$ ]]; then
    echo "Error: slug must be lowercase alphanumeric and hyphens only"
    exit 1
fi

DEST="/root/cc-temp/games/$NEW_SLUG"

if [ ! -d "$SOURCE" ]; then
    echo "Error: source template not found at $SOURCE"
    exit 1
fi

if [ -d "$DEST" ]; then
    echo "Error: $DEST already exists"
    echo "If you want to start over: rm -rf $DEST"
    exit 1
fi

echo "Cloning Most Wanted template to $NEW_SLUG..."

mkdir -p "$DEST/game"
cp -r "$SOURCE/game/js"     "$DEST/game/"
cp -r "$SOURCE/game/fonts"  "$DEST/game/"
cp -r "$SOURCE/game/audio"  "$DEST/game/"
cp    "$SOURCE/game/index.html" "$DEST/game/"

mkdir -p "$DEST/game/png/Symbols"
mkdir -p "$DEST/game/png/SymbolsBlurred"
mkdir -p "$DEST/game/png/SymbolsGui"
mkdir -p "$DEST/game/png/SymbolsSheet"

cp -r "$SOURCE/game/png/gui" "$DEST/game/png/"

echo ""
echo "Done. Cloned to: $DEST"
echo ""
echo "Next: generate 10 themed symbols in Scenario.gg, save as:"
echo "  Wild.png Scatter.png Bandit1.png Bandit2.png Gold.png"
echo "  Silver.png Whiskey.png Bag.png Cuper.png Dice.png"
echo ""
echo "Then run: python3 process_symbols.py /path/to/symbols/ $DEST/game/png/"
GAME_EOF
