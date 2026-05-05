# This project has moved!

This project is now located at: [https://github.com/nshkrdotcom/cf_ex](https://github.com/nshkrdotcom/cf_ex)

Please head over there for the latest code, documentation, and issues.

This repository is no longer maintained.

## Release implementation note

This repository is retained as the historical Durable Object target pointer for
the 2026 universal authority implementation. It does not contain maintained
runtime source, a Mix project, package registry files, Blitz config, Weld
config, workspace contracts, dependency resolver files, internal modularity
contracts, tests, or repo-local QC commands.

Current Cloudflare Durable Object runtime implementation work is in
`/home/home/p/g/n/cf_ex`, including `apps/cf_durable`. Phases that need
compiled Durable Object runtime proof use that repository while this repository
records the moved target state and absence of local runtime substrate.

Phase 5 target-posture and sandbox-attach proof is executable in
`/home/home/p/g/n/cf_ex/apps/cf_durable`. This repository remains a
non-executable pointer and must not be treated as a source of Cloudflare
binding names, object ids, deployment env, workspace secrets, target
credentials, attach grants, or posture materialization.

## Universal authority scope

For the 2026 universal authority implementation, this repository is a
repo-local Durable Object target-state marker only. It has no runtime code,
tests, fixtures, generators, build scripts, package config, Durable Object
state machine, target binding implementation, storage implementation, alarm
implementation, deployment binding implementation, or repo-local QC command.

Because there is no local executable surface here, this repository cannot read
environment variables, token files, Cloudflare bindings, workspace secrets, or
deployment secrets as governed authority. It also cannot atomize external
target/provider input or contain regex-bearing executable code. The active
Cloudflare Durable Object runtime proof remains in
`/home/home/p/g/n/cf_ex/apps/cf_durable`.

## ATOM-32 atom cleanup evidence

ATOM-32 records this repository as `missing_mix_project` and non-executable.
There are no local Durable Object state machines, binding states, target modes,
alarm kinds, storage record kinds, runtime metadata modules, tests, scanners,
generators, package manifests, or workspace registry files to remediate here.

The required local atom-safety result is therefore absence proof:

- no source path can create atoms from Cloudflare, product, operator,
  deployment, storage, alarm, binding, target, or workspace input;
- no local test or fixture path can create dynamic quoted atoms;
- no repo-owned executable scanner or generator can parse data with a regex
  engine;
- no package registration can hide runtime code from Blitz, Weld, dependency
  resolution, workspace contracts, or internal modularity checks because none
  exist in this repository.

Runtime Durable Object atom and state coverage belongs to
`/home/home/p/g/n/cf_ex/apps/cf_durable`. Future executable code added to this
repository must first add a tracked Mix project, source tests, fixed-string
atom and regex-free scans, and the required package placement registrations
before it can satisfy governed runtime release evidence.
