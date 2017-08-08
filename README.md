# A filesystem queue processor

```
fsq-run [options] ./qdir program arguments

    -T tmp-dir          Queue subdirectory for incoming jobs.
    -Q queue-dir        Queue subdirectory for unprocessed jobs.
    -D done-dir         Queue subdirectory for successful jobs.
    -F fail-dir         Queue subdirectory for failed jobs.
    -u upstream-qdir    Enqueue successful job output upstream.
    -U                  Enqueue failed job output upstream too.
    -S                  Scheduler mode: skip future jobs.
    -A after-hook       Run commands with `sh -c` after each job.
    -B before-hook      Run commands with `sh -c` before each job.
    -H                  Disable hooks.
    -v                  More logging output.
    -q                  less logging output.
    -h                  Display help.
```

## Requirements

```
which setlock   # from daemontools
make check      # ensure tests pass
```

