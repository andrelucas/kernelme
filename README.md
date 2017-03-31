# kernelme - kernel build storage workload

Build a pre-downloaded kernel. For this to be useful, the volume mounted at `/source` should probably
be from some external storage system.

Returns basic timing information from `time(1)`.

## Use

```
$ docker run -ti --volume-driver=storageos -v my-vol-name:/source andrelucas/kernelme
... time passes...
```
