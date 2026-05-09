<div align="center">

# zvx_core

### Foundation Infrastructure of the Zorvax Ecosystem

Modern modular framework architecture engineered for scalable FiveM roleplay servers.

<br>

![Framework](https://img.shields.io/badge/Framework-Zorvax%20Core-A3FF12?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active%20Development-1A1F29?style=for-the-badge)
![Architecture](https://img.shields.io/badge/Architecture-Modular-0B0F14?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-0.0.1--alpha-A3FF12?style=for-the-badge)

</div>

---

# Overview

`zvx_core` is the central infrastructure module of the Zorvax ecosystem.

The framework is engineered around modern software architecture principles focused on:

- modularity
- maintainability
- scalability
- secure networking
- reusable infrastructure
- isolated responsibilities

Unlike traditional monolithic roleplay frameworks, `zvx_core` is designed as a scalable infrastructure layer prepared for long-term ecosystem expansion.

---

# Current Development Stage

## Bootstrap & Runtime Infrastructure

The framework currently includes:

✔ Resource bootstrap system  
✔ Shared runtime architecture  
✔ Global namespace initialization  
✔ Namespace preservation layer  
✔ Runtime environment detection  
✔ Version management structure  
✔ Logger infrastructure  
✔ Debug mode support  
✔ Shared utility library  
✔ UUID generation system  
✔ Recursive table copy utility  
✔ Shared configuration loading  
✔ Client/server initialization  

---

# Utility Infrastructure

The framework now includes reusable shared utility systems.

## Available Functions

```lua
ZVX.Functions.TableCopy()
ZVX.Functions.GenerateUUID()
ZVX.Functions.IsValidSource()
ZVX.Functions.IsPlayerLoaded()
````

---

## Example Usage

```lua id="jlwm0x"
local generated_uuid = ZVX.Functions.GenerateUUID(12)

local copied_table = ZVX.Functions.TableCopy(original_table)
```

---

# Logger Infrastructure

Centralized logging architecture designed for scalable framework monitoring and debugging.

## Available Methods

```lua
ZVX.Logger.Info()
ZVX.Logger.Warn()
ZVX.Logger.Error()
ZVX.Logger.Debug()
```

---

## Runtime Example

```txt id="jlwmj9"
[zvx_core] [INFO] Server initialized successfully.
[zvx_core] [INFO] Version: 0.0.1-alpha
[zvx_core] [DEBUG] Environment detected as SERVER.
[zvx_core] [DEBUG] Resource name: zvx_core
[zvx_core] [INFO] Generated UUID: 02OF7M2B9XKD
[zvx_core] [DEBUG] TableCopy utility validated successfully.
```

---

# Architecture

The framework follows a scalable and isolated modular structure.

## Current Structure

```txt id="jlwm7y"
zvx_core/
│
├── client/
├── server/
├── shared/
├── modules/
├── config/
├── bridge/
├── locales/
├── docs/
└── fxmanifest.lua
```

---

# Core Philosophy

The architecture prioritizes:

| Principle       | Description                      |
| --------------- | -------------------------------- |
| Modularity      | Independent and isolated systems |
| Security        | Validation-first infrastructure  |
| Scalability     | Long-term ecosystem expansion    |
| Maintainability | Organized development standards  |
| Performance     | Optimized runtime execution      |

---

# Planned Infrastructure

Upcoming development phases include:

* callback infrastructure
* player lifecycle manager
* database abstraction layer
* permission system
* event protection layer
* runtime cache system
* state synchronization

---

# Development Standards

The framework follows strict engineering standards including:

* snake_case naming convention
* isolated module architecture
* centralized utility systems
* server-side validation
* predictable runtime flow
* minimal dependency coupling
* maintainable code structure

Additional documentation can be found inside the `/docs` directory.

---

# Dependencies

Current requirements:

```txt id="jlwmps"
FXServer Artifact 7290+
Lua 5.4
```

Future integrations may include:

* oxmysql
* ox_lib
* React UI infrastructure

---

# Roadmap

Detailed development roadmap:

```txt id="jlwmb3"
ROADMAP.md
```

---

# License

This project is licensed under the GNU General Public License v3.0 (GPL-3.0).

---

<div align="center">

### zvx_core

Building the Foundation of the Zorvax Ecosystem

</div>