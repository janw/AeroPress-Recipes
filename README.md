AeroPress® Recipes Opensourced
-----------------------------
Collected recipes for AeroPress® coffee maker.

## 1. Index file format
This file is used to enlist all available recipes.

** recipes.json **

```	
{"recipes":[
    {"name":"Classic","description":"","file":"classic.aeropress"}
]
```

## 2. File format

Sample recipe:

```
# Classic
## Simplest and popular
* 15.0g Coffee (one scoop, espresso grind)
* 10s Pour water 60.0g at 80.0°C 
* 21s Stir (fast)
* 16s Steep
* 15s Plunge

```

### a) Recipe name (required)
```
# Classic
```

### b) Detailed info (required)
```
## Simplest and popular
```

### c) Steps

#### 🍯 Ingredient step

```
* 15.0g Coffee (one scoop, espresso grind)
```

** Format: **

```
* [GRAMS]g [NAME] [optional: (DESCRIPTION)]
```

#### 🕐 Timed step

```
21s Stir (fast)
```

** Format: **

```
* [SECONDS]s [NAME] [optional: (DESCRIPTION)]
```

#### 💧 Water step

```
10s Pour water 60.0g at 80.0°C 
```

** Format: **

```
* [SECONDS]s [NAME] [optional: (DESCRIPTION)] [GRAMS]g at [TEMPERATURE]°C 
```