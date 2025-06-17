# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MissingCrafts is a World of Warcraft Classic addon that helps players track crafting recipes they haven't learned yet across their characters. The addon provides:

- **Tooltip Enhancement**: Shows recipe learning status for each character on item tooltips
- **Integrated UI**: Attachable window that appears next to profession frames showing missing recipes with filtering options  
- **Cross-Character Tracking**: Monitors recipe knowledge across all characters on your account
- **Multiple Profession Frame Support**: Works with default WoW frames and popular profession addons

## Architecture

The addon follows a clean layered architecture with strict separation of concerns:

### Environment Layer
- **`src/Environment.lua`**: Creates an isolated global environment using `setfenv(1, MissingCrafts)` that prevents global namespace pollution while maintaining access to WoW API
- Every `.lua` file must begin with `setfenv(1, MissingCrafts)` to work within this isolated environment
- Provides utility functions: `erase()` for table cleanup, `tpop()` for safe key removal

### Database Layer (`src/db/`)
Repository pattern implementation with clean domain models:

- **`Database.lua`**: Manages AceDB saved variables with automatic character data persistence across realms
- **`Character.lua`**: Domain model representing a character with profession knowledge and skill level checking
- **`CharacterRepository.lua`**: Data access layer for character CRUD operations
- **`ProfessionRepository.lua`**: Interface to LibCraftingProfessions for available professions
- **`CraftRepository.lua`**: Complex repository finding missing recipes based on character filters, handles craft sources mapping

### UI Layer (`src/ui/`)
AceGUI-based component system with custom frame management:

- **`UIManager.lua`**: Central coordinator managing window lifecycle, profession frame events, and component interactions
- **`Window.lua`**: Main window that dynamically attaches to profession frames with custom geometry management
- **`FiltersPanel.lua`**: Dropdown filters for profession and character selection with change event handling
- **`CraftsList.lua`**: Scrollable list of missing recipes with highlighting and sorting
- **`TooltipEnhancer.lua`**: Enhances item tooltips with recipe learning status for each character
- **`OpenButton.lua`**: Toggle button that appears on profession frames to show/hide the main window
- **`DataStateManager.lua`**: State management for UI data synchronization and event coordination
- **`VanillaFramePool.lua`**: Efficient frame reuse system for performance optimization

### Localization (`src/locale/`)
- **`Tools.lua`**: AceLocale setup with typed interfaces for localization
- Multiple language files (enUS, ruRU, deDE, frFR, esES, esMX, ptBR, koKR, zhCN, zhTW) with tooltip text translations

## Key Technical Features

### Event-Driven Architecture
- Uses LibCraftingProfessions events (`LCP_SKILLS_UPDATE`, `LCP_FRAME_SHOW`, `LCP_FRAME_CLOSE`) for real-time updates
- Automatic profession data synchronization when skills are learned
- Dynamic UI updates when profession frames open/close

### Advanced UI Management
- Dynamic window positioning that adapts to different profession frame types
- Smart button placement with delayed initialization for async profession addons
- Window state management with proper cleanup to prevent memory leaks
- Custom close button and geometry updates for responsive design

### Data Persistence
- Cross-realm character data storage with automatic cleanup
- Profession knowledge tracking with skill level requirements
- Recipe source mapping from LibCrafts constants to internal enums

### Tooltip System
- Multi-character recipe status display with color coding
- Status filtering (shows only characters with relevant professions)
- Integration with LibItemTooltip for consistent tooltip enhancement

## External Dependencies

### Ace3 Libraries
- **AceAddon-3.0**: Core addon framework and lifecycle management
- **AceDB-3.0**: Saved variables with default values and realm organization
- **AceGUI-3.0**: Widget system for UI components
- **AceHook-3.0**: Function hooking for UI geometry updates
- **AceLocale-3.0**: Internationalization support

### Profession Libraries
- **LibCraftingProfessions-1.0**: Profession frame detection and skill tracking across multiple addon types
- **LibCrafts-1.0**: Comprehensive crafting recipe database with source information
- **LibItemTooltip-1.0**: Tooltip enhancement framework

## Supported Profession Addons

The addon integrates with multiple profession interfaces:
- Default WoW profession frames
- AdvancedTradeSkillWindow (ATSW)
- AdvancedTradeSkillWindow2 (ATSW2)
- Artisan

Different frame types require different initialization delays and positioning strategies.

## Development Guidelines

### Code Style
- Extensive use of Lua `---@` type annotations for documentation and IDE support
- Object-oriented patterns using metatables with `self` parameters
- Acquire/release pattern for UI components to prevent memory leaks
- Repository pattern for clean data access abstraction

### Error Handling
- Defensive programming with nil checks and assertions
- Graceful degradation when external libraries are unavailable
- Proper cleanup of resources in component destructors

### Performance Considerations
- Frame pooling system for efficient UI element reuse
- Lazy initialization of heavy operations
- Event-driven updates instead of polling
- Smart caching of profession and character data

### File Loading Order
Files must load in specific TOC order:
1. External libraries (LibStub, Ace3, profession libraries)
2. `src/Environment.lua` - establishes isolated environment
3. Database layer files
4. Locale files  
5. UI component files
6. `src/MissingCrafts.lua` - main addon initialization

### Memory Management
- All UI components implement proper `Release()` methods
- Use `erase()` utility for complete table cleanup
- Set references to `nil` in destructors to help garbage collection
- VanillaFramePool manages frame lifecycles efficiently

## Data Models

### Database Schema
```lua
DatabaseSavedVariable = {
  global = {
    realmToNameToCharacter = {
      ["RealmName"] = {
        ["CharacterName"] = {
          realm = "string",
          english_faction = "Alliance"|"Horde", 
          localized_faction = "string",
          name = "string",
          professionsByLocalizedName = {
            ["ProfessionName"] = {
              rank = number,
              knownLocalizedSkillNames = string[]
            }
          }
        }
      }
    }
  }
}
```

### Craft Data Structure
```lua
Craft = {
  localizedProfessionName = "string",
  localizedName = "string", 
  skillLevel = number,
  isAvailable = boolean,
  recipeId = number|nil,
  resultId = number|nil,
  sources = CraftSource[] -- "Trainer"|"Quest"|"Drop"|etc
}
```

This architecture enables maintainable, performant code with clear separation between data access, business logic, and presentation layers.