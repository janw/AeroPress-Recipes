AeroPress® coffee maker Recipe File Format
------------------------------------------
Recipe file specification and collected recipes for AeroPress® coffee maker.

## 1. File Specification (.aeropress) v1.0

**File extension:** `.aeropress`

**Mime-type:** `text/x-markdown`

Sample recipe:

```
# Classic
## Simplest and popular
* Flip upside down
* 15.0g Coffee (one scoop, espresso grind)
* 10s Pour water 60.0g at 80.0°C 
* 21s Stir (fast)
* 16s Steep
* Flip
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

#### 💫 Simple step

```
* Flip (upside down)
```

**Format:**

```
* [NAME] [optional: (DESCRIPTION)]
```

#### 🍯 Ingredient step

```
* 15.0g Coffee (one scoop, espresso grind)
```

**Format:**

```
* [GRAMS]g [NAME] [optional: (DESCRIPTION)]
```

#### 🕐 Timed step

```
21s Stir (fast)
```

**Format:**

```
* [SECONDS]s [NAME] [optional: (DESCRIPTION)]
```

#### 💧 Hybrid step

```
10s Pour water (mineral) 60.0g at 80.0°C 
```

**Format:**

```
* [SECONDS]s [NAME] [optional: (DESCRIPTION)] [GRAMS]g at [TEMPERATURE]°C 
```

## 2. Index file format
This file is used to enlist all available recipes in this repository. 
Index file format is not part of the `.aeropress` file specification.

**recipes.json**

```	
{"recipes":[
    {
     "name":"Classic",
     "description":"",
     "md5":"file md5 hash",
     "file":"./recipes/classic.aeropress"
    }
]
```