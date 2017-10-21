Example output:

```
[...]
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /tmp/fuj/.build
[3/3] Generating test.success
test begin
common function called
test end
-rwxr-xr-x  1 asommer  wheel  4248 Oct 21 23:32 .build/mysubdir/MyExe
-rw-r--r--  1 asommer  wheel     0 Oct 21 23:32 .build/mysubdir/test.success
-rw-r--r--  1 asommer  wheel    50 Oct 21 23:30 mysubdir/common.py
Sat Oct 21 23:33:37 CEST 2017 TOUCH
Sat Oct 21 23:34:38 CEST 2017 BUILD AGAIN
ninja: no work to do.
-rwxr-xr-x  1 asommer  wheel  4248 Oct 21 23:32 .build/mysubdir/MyExe
-rw-r--r--  1 asommer  wheel     0 Oct 21 23:32 .build/mysubdir/test.success
-rw-r--r--  1 asommer  wheel    50 Oct 21 23:33 mysubdir/common.py
Sat Oct 21 23:34:38 CEST 2017 FINISHED
```

See how "common.py" is newer than "test.success" which should depend on it.
