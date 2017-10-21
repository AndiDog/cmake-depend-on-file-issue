Example output:

```
-- The C compiler identification is AppleClang 9.0.0.9000038
-- The CXX compiler identification is AppleClang 9.0.0.9000038
-- Check for working C compiler: /usr/local/opt/ccache/libexec/cc
-- Check for working C compiler: /usr/local/opt/ccache/libexec/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/local/opt/ccache/libexec/c++
-- Check for working CXX compiler: /usr/local/opt/ccache/libexec/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/asommer/dev/extern/cmake-depend-on-file-issue/.build
[2/2] Linking CXX executable mysubdir/MyExe
-rwxr-xr-x  1 asommer  wheel  4248 Oct 21 23:47 .build/mysubdir/MyExe
-rw-r--r--  1 asommer  wheel    24 Oct 21 23:43 mysubdir/common.py
Sat Oct 21 23:48:20 CEST 2017 TOUCH
Sat Oct 21 23:49:22 CEST 2017 BUILD AGAIN
ninja: no work to do.
-rwxr-xr-x  1 asommer  wheel  4248 Oct 21 23:47 .build/mysubdir/MyExe
-rw-r--r--  1 asommer  wheel    24 Oct 21 23:48 mysubdir/common.py
Sat Oct 21 23:49:22 CEST 2017 FINISHED
```

See how ninja does not see any work on second build, even though "common.py" is newer than "MyExe" which should depend on it.
