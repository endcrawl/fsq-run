# A filesystem queue processor

```
fsq-run [options] ./qdir program arguments
  -T tmp-dir          queue subdirectory for incoming jobs.
  -Q queue-dir        queue subdirectory for unprocessed jobs.
  -D done-dir         queue subdirectory for successful jobs.
  -F fail-dir         queue subdirectory for failed jobs.
  -u upstream-qdir    enqueue successful job output upstream.
  -U                  enqueue failed job output upstream too.
  -S                  scheduler mode: skip future jobs.
  -A after-hook       run commands with `sh -c` after each job.
  -B before-hook      run commands with `sh -c` before each job.
  -H                  disable hooks.
  -v                  more logging output.
  -q                  less logging output.
  -h                  display help.
```

