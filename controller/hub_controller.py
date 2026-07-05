#!/usr/bin/env python3

import json
from pathlib import Path

CONFIG = Path.home() / "MintFlow/config/config.json"


def load_config():
    with open(CONFIG) as f:
        return json.load(f)


if __name__ == "__main__":

    cfg = load_config()

    print("=== MintFlow Controller ===")
    print()

    print("Posición:")
    print(cfg["hub"]["anchor"])
    print(cfg["hub"]["x"])
    print(cfg["hub"]["y"])

    print()

    print("Tamaño:")
    print(cfg["hub"]["width"])
    print(cfg["hub"]["height"])
