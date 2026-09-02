# Apex

Source-controlled exports of Oracle APEX applications, plus the CI checks that
validate them on every push.

## Layout

- `apex-apps/` — one subfolder per APEX application, produced by SQLcl's
  `apex export -split -expOriginalIds` (component-level files instead of one
  monolithic script, so page-by-page diffs are readable in PRs).
- `.github/workflows/` — GitHub Actions checks that run against exported
  files. These validate structure only; they do not connect to the database
  (GitHub-hosted runners can't reach an on-prem Oracle instance — see note
  below).

## Exporting an app

From a machine with SQLcl and DB access:

```
sql /nolog
SQL> conn <user>/<pwd>@<host>:<port>/<service>
SQL> apex export -applicationid <id> -expType APPLICATION_SOURCE -split -expOriginalIds -dir apex-apps
```

Commit the resulting folder under `apex-apps/<app id>/`.

## CI scope

Actions here can lint/validate the exported file structure. Anything that
needs to reach the actual database or ORDS instance (a real `apex export`,
a deploy) has to run from inside the network — either manually, on a
schedule from an on-prem machine, or via a self-hosted Actions runner.
GitHub's hosted runners have no route to internal Oracle infrastructure.
