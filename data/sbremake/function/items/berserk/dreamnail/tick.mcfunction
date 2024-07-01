# Main
execute as @a[predicate=sbremake:items/berserk/dreamnail/main] run function sbremake:items/berserk/dreamnail/main

# Actionbar
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-0] actionbar [{"text": "| | | | | |","color": "gray","bold": false}]
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-1] actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | | | |","color": "gray","bold": false}]
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-2] actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | | |","color": "gray","bold": false}]
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-3] actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| | |","color": "gray","bold": false}]
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-4] actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "| |","color": "gray","bold": false}]
title @a[predicate=sbremake:items/berserk/dreamnail/actionbar-5] actionbar [{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false},{"text": "/","color": "gold","bold": true},{"text": "|","color": "gray","bold": false}]

# Effects
effect give @a[predicate=sbremake:items/berserk/dreamnail/min-1] slowness 1 100 true
attribute @a[predicate=sbremake:items/berserk/dreamnail/min-1,limit=1] minecraft:generic.jump_strength base set 0
effect clear @a[predicate=sbremake:items/berserk/dreamnail/actionbar-0,tag=!slowness] slowness
attribute @a[predicate=sbremake:items/berserk/dreamnail/actionbar-0,tag=!jump-boost,limit=1] minecraft:generic.jump_strength base set 0.41999998688697815