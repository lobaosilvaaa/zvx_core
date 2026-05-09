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
✔ Callback registration system  
✔ Async callback communication layer  

---

# Callback Infrastructure

The framework now includes an internal callback communication system designed for asynchronous client/server networking.

## Available Methods

```lua
ZVX.Callbacks.Register()
ZVX.Callbacks.Trigger()
````

---

## Callback Example

### Server

```lua id="jlwmh0"
ZVX.Callbacks.Register('zvx:test:ping', function(source, cb)
    cb('pong')
end)
```

### Client

```lua id="jlwm5d"
ZVX.Callbacks.Trigger('zvx:test:ping', function(response)
    print(response)
end)
```

---

# Utility Infrastructure

Reusable shared utility systems are now available.

## Available Functions

```lua id="jlwmj2"
ZVX.Functions.TableCopy()
ZVX.Functions.GenerateUUID()
ZVX.Functions.IsValidSource()
ZVX.Functions.IsPlayerLoaded()
```

---

# Logger Infrastructure

Centralized logging architecture designed for scalable framework monitoring and debugging.

## Available Methods

```lua id="jlwmf9"
ZVX.Logger.Info()
ZVX.Logger.Warn()
ZVX.Logger.Error()
ZVX.Logger.Debug()
```

---

# Runtime Validation

Current validated systems:

✔ Server runtime bootstrap
✔ Logger initialization
✔ Utility validation
✔ Callback registration
✔ Async networking flow
✔ Client/server communication

---

# Architecture

The framework follows a scalable and isolated modular structure.

## Current Structure

```txt id="jlwm6w"
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

* timeout protection
* promise-based callbacks
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

```txt id="jlwmjz"
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

```txt id="jlwm1d"
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