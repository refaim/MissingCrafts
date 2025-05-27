# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

MissingCrafts is a World of Warcraft Classic addon that helps players track crafting recipes they haven't learned yet across their characters. The addon integrates with WoW's crafting profession windows to display missing recipes based on what other characters know.

## Architecture

The addon follows a modular architecture with clear separation of concerns:

- **Environment Layer**: `src/Environment.lua` creates an isolated global environment using `setfenv(1, MissingCrafts)` that must be included at the top of every Lua file
- **Database Layer**: Repository pattern with `Database.lua` handling saved variables, and character/profession/craft repositories managing data access
- **UI Layer**: AceGUI-based components with custom frame management via `VanillaFramePool` for performance
- **External Dependencies**: Uses Ace3 libraries (AceAddon, AceDB, AceGUI) and custom libraries (LibCraftingProfessions, LibCrafts)

## Key Components

- **Main Addon** (`src/MissingCrafts.lua`): Event-driven lifecycle management, coordinates between UI and data layers
- **Repositories** (`src/db/`): Data access layer using repository pattern for characters, professions, and crafts
- **UI Components** (`src/ui/`): Modular UI widgets including filters panel, crafts list, and main window that attach to profession frames
- **Frame Management**: Custom `VanillaFramePool` for efficient frame reuse and memory management

## Development Notes

- All `.lua` files must start with `setfenv(1, MissingCrafts)` to work within the isolated environment
- The addon uses extensive Lua type annotations for better code documentation
- UI components follow an acquire/release pattern for memory management
- The main window dynamically attaches to WoW's profession frames when they open
- Supports both regular WoW Classic and Turtle WoW server differences

## File Loading Order

Files are loaded in the order specified in `MissingCrafts.toc`, with `Environment.lua` loaded first to establish the isolated environment before all other source files.