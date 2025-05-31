# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MissingCrafts is a World of Warcraft Classic addon that helps players track crafting recipes they haven't learned yet across their characters. The addon shows missing recipes in tooltips and provides a dedicated interface that attaches to profession frames, displaying which recipes each character can learn.

## Architecture

The addon follows a layered architecture with clear separation of concerns:

- **Environment Layer**: `src/Environment.lua` creates an isolated global environment using `setfenv(1, MissingCrafts)` that prevents global namespace pollution while allowing access to WoW API
- **Database Layer**: Repository pattern with `Database.lua` managing AceDB saved variables and specialized repositories for data access
- **UI Layer**: AceGUI-based components with custom frame management and tooltip enhancement
- **External Dependencies**: Ace3 libraries (AceAddon, AceDB, AceGUI, AceLocale) and profession libraries (LibCraftingProfessions, LibCrafts, LibItemTooltip)

## Key Components

### Core Addon (`src/MissingCrafts.lua`)
Event-driven main addon that:
- Coordinates between UI and data layers
- Listens to LibCraftingProfessions events for skill updates and frame show/hide
- Manages window lifecycle and attachment to profession frames
- Creates open buttons on supported profession frame addons

### Data Layer (`src/db/`)
- **Database**: Manages AceDB saved variables with character data across realms
- **Character**: Domain model with profession knowledge and skill level checking
- **Repositories**: Data access abstractions for characters, professions, and crafts
- **CraftRepository**: Finds missing recipes based on character filters

### UI Layer (`src/ui/`)
- **Window**: Main interface that attaches to profession frames with dynamic positioning
- **FiltersPanel**: Dropdown filters for profession and character selection
- **CraftsList**: Scrollable list of missing recipes with highlighting
- **TooltipEnhancer**: Adds recipe status information to item tooltips
- **OpenButton**: Toggles main window visibility from profession frames
- **VanillaFramePool**: Efficient frame reuse for performance

### Localization (`src/locale/`)
- **Tools**: AceLocale setup and locale management
- Language files for tooltip text in multiple languages (enUS, ruRU, deDE, frFR, esES, esMX, ptBR, koKR, zhCN, zhTW)

## Development Guidelines

### Environment Setup
- Every `.lua` file must begin with `setfenv(1, MissingCrafts)` to work within the isolated environment
- Environment must be loaded first via `src/Environment.lua` in the TOC file

### Code Conventions
- Extensive use of Lua type annotations with `---@` comments for documentation
- Object-oriented pattern using metatables and `self` parameters
- Acquire/release pattern for UI components to prevent memory leaks
- Repository pattern for data access abstraction

### UI Management
- All UI components use AceGUI widgets wrapped in custom classes
- VanillaFramePool manages frame reuse for performance
- Main window dynamically positions relative to profession frames
- Tooltip enhancement shows recipe learning status for each character

### Data Persistence
- Uses AceDB for saved variables with realm/character organization
- Automatic cleanup of profession data when characters change professions
- Cross-character recipe knowledge tracking

## Supported Profession Addons

The addon integrates with:
- Default WoW profession frames
- AdvancedTradeSkillWindow (ATSW)
- AdvancedTradeSkillWindow2 (ATSW2) 
- Artisan

## File Loading Order

Files load in TOC order:
1. LibStub and Ace3 libraries
2. Custom libraries (LibCraftingProfessions, LibCrafts, LibItemTooltip)
3. `src/Environment.lua` - establishes isolated environment
4. Database layer files
5. Locale files
6. UI component files
7. `src/MissingCrafts.lua` - main addon initialization