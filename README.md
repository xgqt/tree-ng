# tree-ng

<p align="center">
    Lists directories recursively, and produces an indented listing of files
</p>

<p align="center">
    <a href="https://gitlab.com/xgqt/tree-ng/pipelines">
        <img src="https://gitlab.com/xgqt/tree-ng/badges/master/pipeline.svg">
    </a>
    <a href="https://gitlab.com/xgqt/tree-ng/commits/master.atom">
        <img src="https://img.shields.io/badge/feed-atom-orange.svg">
    </a>
    <a href="./LICENSE.md">
        <img src="https://img.shields.io/badge/license-GPLv3-blue.svg">
    </a>
</p>


## About

Ths is a fork of the Steve Baker's tree.
The original source can be found on http://mama.indstate.edu/users/ice/tree/ 


## Legacy

Some of the documentation before the start of changes is kept in "legacy" directory.

The first commit is the unchanged tree source as I received it.


## Building

### Distribution

use the "dev.sh" script

### Custom

```bash
cd src
# example CFLAGS
make CFLAGS="-march=native -O3 -fstack-protector-strong -falign-functions=32 -pipe" -j$(nproc)
```

To install

```bash
sudo make install
```

or

```bash
make PREFIX=./usr install
```


## License

The licence has been upgraded from GPL version 2 to GPL version 3
