# space_shooter

Flutter Frame game

![space ship](https://github.com/christina-bel/space_shooter/blob/main/assets/images/game.png)

## Flutter Version Management (FVM)

### Flutter and Dart FVM versions of the project

Flutter: ***3.27.0*** / Dart SDK: ***3.6.0***

### FVM workflow

The project uses [FVM](https://fvm.app/) for Flutter version management.
Installation and IDE configuration for FVM are described [here](https://fvm.app/documentation/getting-started/installation)
and [here](https://fvm.app/documentation/getting-started/configuration).


For installation this project version of Flutter, run the command:
```sh
fvm install
```

To set a specific Flutter SDK version for this project, run the command:

```sh
fvm use <flutter_version>
```

Use `fvm flutter ...` everywhere instead of just `flutter ...` when working with the project.


## Assets codegen

Can easily add assets to the project by following these steps:

1. Add asset to assets folder (make sure it's specified in `asset` section of [pubspec.yaml](pubspec.yaml))
2. Run script [`spider_build.sh`](scripts/spider_build.sh):

```shell
sh scripts/spider_build.sh
 ```

Spider configuration file is located [here](spider.yaml).