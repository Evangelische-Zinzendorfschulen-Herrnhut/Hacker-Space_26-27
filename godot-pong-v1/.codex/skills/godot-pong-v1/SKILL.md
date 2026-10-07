---
name: godot-pong-v1
description: Work on the godot-pong-v1 teaching project, a beginner-friendly Godot 4 Pong/Squash game for Saxony school lessons. Use when editing this project, explaining its code to students, or preparing classroom steps around movement, collisions, vectors, and GitHub workflow.
metadata:
  short-description: Godot Pong v1 teaching project notes
---

# Godot Pong v1

This skill preserves project-specific decisions and teaching context for the local project `godot-pong-v1` and GitHub repository `MacTheHac/pong-v1`.

## Project Shape

- The Godot project root is the repository root. `project.godot` should stay directly at the top level, alongside `scenes/`, `scripts/`, `icon.svg`, `README.md`, `LICENSE`, and `.gitignore`.
- The GitHub remote is `https://github.com/MacTheHac/pong-v1.git`.
- Do not put the Godot project inside an extra `Pong v1/` or `pong-v1/` subfolder again unless the user explicitly requests that.
- Keep Godot cache/editor files out of version control. `.godot/`, `.DS_Store`, `.import/`, export credentials, Mono cache, and similar generated files should remain ignored.
- The project uses Godot 4.5 locally at `/Applications/Godot 4.5.app/Contents/MacOS/Godot`. A useful validation command is a headless start from the repo root.

## Teaching Intent

- The game is currently a one-player Squash-style Pong precursor: player paddle at the bottom, a ball, three closed sides, and an open bottom edge where the ball resets.
- Keep scripts beginner-friendly. Prefer explicit `if` branches and named constants over compact helpers when the code is intended for first-time programmers.
- In explanations for students, use concrete terms first: `x` position, `y` position, speed, direction, left/right movement, bounce, collision. Introduce "vector" as a later or optional mathematical term.
- For Saxony curriculum framing, formal vectors belong mainly to upper secondary math: Gymnasium 11/12, Berufliches Gymnasium 12/13, Fachoberschule 12. For younger students, describe `Vector2` pragmatically as "two numbers together: x and y".

## Current Code Decisions

- `scripts/player.gd` should be especially readable. The preferred beginner version sets `velocity.x = 0.0`, then uses separate `if Input.is_action_pressed(...)` branches for left and right movement.
- The final `position.x = clamp(position.x, LEFT_LIMIT, RIGHT_LIMIT)` keeps the paddle inside the playfield. Explain `clamp` as "begrenzen auf einen erlaubten Bereich".
- `scripts/ball.gd` currently uses `direction` and `speed`, bounces from collision normals, speeds up slightly after collisions, and resets when it falls below the bottom limit.
- Existing `res://` paths are relative to the Godot project root. Moving files out of the repo root can break this mental model for students.

## Git Workflow Notes

- The user may rely on Codex app Git buttons. If those buttons are disabled after folder moves, check whether the app is attached to the current project path.
- Before pushing public changes, inspect `git status --short` and avoid publishing generated Godot cache files.
- The local folder was renamed from `Godot` to `godot-pong-v1`; use `/Users/markus/Documents/ChatGPT/godot-pong-v1` as the current path when referring to local files.
